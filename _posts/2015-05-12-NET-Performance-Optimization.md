---
layout : post
category : tech
tags : [NET, 性能优化]
title : NET性能优化注意事项
---

## 避免使用ArrayList。

因为任何对象添加到ArrayList都要封箱为System.Object类型，从ArrayList取出数据时，要拆箱回实际的类型。建议使用自定义的集合类型代替ArrayList。.net 2.0提供了一个新的类型，叫泛型，这是一个强类型，使用泛型集合就可以避免了封箱和拆箱的发生，提高了性能。

## 使用HashTale代替其他字典集合类型

存放少量数据的时候可以使用HashTable.（如StringDictionary,NameValueCollection,HybridCollection），

## 为字符串容器声明常量，不要直接把字符封装在双引号" "里面。

```
//避免
MyObject obj = new MyObject();
obj.Status = "ACTIVE";

//推荐
const string C_STATUS = "ACTIVE";
MyObject obj = new MyObject();
obj.Status = C_STATUS;
```

## 不要用UpperCase,Lowercase转换字符串进行比较，用String.Compare代替

它可以忽略大小写进行比较.

```
const string C_VALUE = "COMPARE";
if (String.Compare(sVariable, C_VALUE, true) == 0)
{
Console.Write("SAME");
}
```

## 用StringBuilder代替使用字符串连接符 “+”，

```
//避免
String sXML = "<parent>";
sXML += "<child>";
sXML += "Data";
sXML += "</child>";
sXML += "</parent>";

//推荐
StringBuilder sbXML = new StringBuilder();
sbXML.Append("<parent>");
sbXML.Append("<child>");
sbXML.Append("Data");
sbXML.Append("</child>");
sbXML.Append("</parent>");
```

## 如果只是从XML对象读取数据，用只读的XPathDocument代替XMLDocument

```
//避免
XmlDocument xmld = new XmlDocument();
xmld.LoadXml(sXML);
txtName.Text = xmld.SelectSingleNode("/packet/child").InnerText;

//推荐
XPathDocument xmldContext = new XPathDocument(new StringReader(oContext.Value));
XPathNavigator xnav = xmldContext.CreateNavigator();
XPathNodeIterator xpNodeIter = xnav.Select("packet/child");
iCount = xpNodeIter.Count;
xpNodeIter = xnav.SelectDescendants(XPathNodeType.Element, false); 
while(xpNodeIter.MoveNext())
{
  sCurrValues += xpNodeIter.Current.Value+"~"; 
}
```

## 避免在循环体里声明变量，应该在循环体外声明变量，在循环体里初始化。

```
//避免
for(int i=0; i<10; i++)
{
    SomeClass objSC = new SomeClass();
      .
      .
      .

//推荐
SomeClass objSC = null;
for(int i=0; i<10; i++)
{
   objSC = new SomeClass();

.
.
.
}
```

## 捕获指定的异常，不要使用通用的System.Exception.

```
//避免
      try
      {
      <some logic>
      }
      catch(Exception exc)
      {
      <Error handling>
      }

//推荐
      try
      {
      <some logic>
      }
      catch(System.NullReferenceException exc)
      {
      <Error handling>
      }
      catch(System.ArgumentOutOfRangeException exc)
      {
      <Error handling>
      }
      catch(System.InvalidCastException exc)
      {
      <Error handling>
      }
```

## 使用Try...catch...finally时， 要在finally里释放占用的资源如连接，文件流等，不然在Catch到错误后占用的资源不能释放。

```
try
      {
         ...
      }
      catch 
        {...}
        finally
        {
          conntion.close()
        }     
```

## 避免使用递归调用和嵌套循环，使用他们会严重影响性能，在不得不用的时候才使用。

## 使用适当的Caching策略来提高性能
