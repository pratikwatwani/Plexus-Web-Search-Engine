import bs4,requests
import json,sys
#get_url='http://williamstallings.com/OperatingSystems/OS7e-Student/'
def crawl(get_url):
    res = requests.get(get_url)
    res.raise_for_status()
    soup=bs4.BeautifulSoup(res.text,"html.parser")
    elem=soup.find_all('a')
    length=len(elem)
    data={}
    for i in range(length):
        #print('#'+str(i)+' ' +str(elem[i].text))
        data[str(elem[i].text)]=elem[i].get('href')
        #print('Link:=> '+get_url[:14]+elem[i].get('href'))
    values=[{"name":key,"url":value} for key,value in data.items()]
    return json.dumps(values)
if __name__=='__main__':
    print crawl(sys.argv[1])
