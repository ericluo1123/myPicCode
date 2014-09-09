/*****************************************************
noun		名詞			
verb		動詞			
Adjective	形容詞			
Adverb		副詞			

color 		顏色單字							
red			紅				
blue		藍				
amber		琥珀			black		黑				
green		綠				
white		白				
yellow		黃				
gray		灰				

operating 	操作單字		
restore		恢復  			
reset		重置	
set			設置	
start		開始	
stop		停止	
open		開		
close		關		
fail		失敗	success		成功	
error		錯誤	
correct		正確	
true		真實			
false		虛假	
Calculate	計算	in progress 進行中	
enable		啟用	
disable		關閉	


range		範圍			
average		平均			
cycle		週期/循環		
execution	執行			
Register	登記/暫存器		
Cloud		雲				
Client		客戶			
Combine		結合			
bind		綁住			
Ethernet	乙太網			
initial		初始			
internal	內部			
external	外部			interrupt	中斷			
load		負載			temperature	溫度			
conversion	轉變			
function	功能/函數		
pin-to-pin compatible 引腳對引腳兼容
word		字				

center		中間			
maximum		最大			
medium		中等			
minimum		最小		
Anode		正極
Negative electrode 負極
Positive	正
Negative	負

windows word	視窗單字
file		檔案		
edit		編輯
view		檢視
project		專案
debugger	調試器/除錯
programmer	程序員
tools		工具
configure	配置
window		視窗
help		幫助


sensor		傳感器
register	暫存器

voltage		電壓
singal		訊號
type		型態
analogy		類比
digital		數位
value


declaration	宣告
int			整
long		長
double		雙
float		浮動
unsigned 	無符號
variable	變數
flag		旗標
Processor 	處理器
Prescaler	預分頻
offset		偏移

January
February
March
April
May
June
July
August
September
October
November
December

Monday 		星期一
Tuesday 	星期二
Wednesday 	星期三
Thursday 	星期四
Friday 		星期五
Saturday 	星期六
Sunday 		星期日
Holiday		假日

one 		
two 
three 
four 
five
six 
seven
eight
nine
ten
eleven	
twelve	
thirtenn
fourteen
fifteen	
sixteen		
seventeen
eighteen	
nineteen	
twenty	
thirty	
fourty	
fifty	
sixty	
seventy	
eighty	
ninety	
hundred  
thousand 
Million 	百萬
billion		億
*****************************************************/
/*****************************************************


char i;
i=0xaa;				//十六進制表示式
i=170;				//十進制表示式
i=170;				//八進制表示式
i=0b10101010;		//二進制表示式

variable type description

變數資料型態
bit				0~1									1bit
char -128~+127 								1byte(8bit) 
int -32768~+32767	  					2byte(16bit)
long -2147483648~+2147483647  4byte(32bit)
unsigned	無負號 							0~65536
float -2147483648~+2147483647 4byte(32bit)  
double float 									8byte(64bit)
const 是常數、唯讀的意思


變數名稱 (life-time cycle)記憶體佔用時間
auto 			自動變數 		在{...}內才佔記憶體
static		靜態變數 		在{...}整個程式都佔記憶體
extern  	外在變數 		在{...}外宣告，整個程式都佔記憶體
register 	暫存器變數	將變數置於cpu中增加 執行速度
/*****************************************************
/*****************************************************
pointer
& 			// 取址運算元
* 			//取值運算元

declare type example:
int *p;	//宣告指標變數且為整數
int i;		//宣告整數變數	
i=3;		//指定i內容值
*p=50;	//指定指標變數p內容值	
var=&i; 	//取i在記憶體位址到指標變數p
i=*p;		//取p指標變數內的內容值到i

錯誤宣告
int *p=10;
正確宣告
int i=10;
int *p=&i; or int *p=(int*)10
p=&i;

加減運算
*只能加常數值
*將指標變數內容『加1』
	?依據指標指向的資料型態
	所佔用的記憶體單位大小，來決定移動多少個位址
	（加1代表加1個單位），以便指向正確的下一筆同樣資料類型的資料。
	(int =2byte,+1單位=+ 2byte)
int*p,*q;
p=p+q; 		//不合法的運算

比較運算
*相同型態的指標變數可以做比較運算，藉由比較運算，
	我們可以得知記憶體位址的先後關係
*較早配置記憶體的變數位於較高的記憶體位址
	
差值運算
*兩個相同資料型態的指標變數可以做減法運算
*代表兩個記憶體位址之間的可存放多少個該資料型態的資料

*傳值呼叫
*call by value
int cubeByValue( int n ); // prototype 

// calculate and return cube of integer argument //

int cubeByValue( int n ) 
{ 
	25 return n * n * n; 	
// cube local variable n and return result // 
} 
// end function cubeByValue //

*傳址呼叫
*call by address
void cubeByReference( int *nPtr ); // prototype 

cubeByReference( &number ); //呼叫

// calculate cube of *nPtr; modifies variable number in main // 
 void cubeByReference( int *nPtr ) 
 { 
 *nPtr = *nPtr * *nPtr * *nPtr; // cube *nPtr // 
 } // end function cubeByReference //

指標與陣列
int array[10]; 我們以陣列名為array代表陣列的起始位址,
 以array+1表示下一個位址.
當宣告指標時, int*ptr; 則以ptr代表其位址, 以ptr+1代表下一個位址.
陣列其實也是指標的一種應用.

每一種資料型態的指標變數在32位元的作業系統環境中都佔用4個bytes，
	因為指標變數存放的是記憶體位址
/*****************************************************
/*****************************************************
structure description

struct	//structure 	結構 

struct 結構名稱  {
   資料型態 變數1;
   資料型態 變數2;
   ……
};
struct 結構名稱 變數名稱;
p = &w;
(*p).age = 50;
p->age = 50;


union	//unions 		聯合，使用同一塊記憶體
union 聯合名稱 變數名稱;

union size
{
	char age;
	int  shcool;
}size;
佔最大size


enum	//Enumerations 	列舉，使用常數取代名稱，無指定常數時為前一常數+1
enum 列舉名稱 變數名稱;

enum week
{	
	Monday 		=1,		星期一
	Tuesday		=2,		星期二
	Wednesday 	=3,		星期三
	Thursday 	=4,		星期四
	Friday 		=5,		星期五
	Saturday 	=6,		星期六
	Sunday 		=7,		星期日
	Holiday		=8		假日
}week;

typedef //type define   建立新型態
typedef 資料型態 識別字;

char = 1byte

typedef mybyte char

mybyte =1byte


/*****************************************************
printf- 列印格式-	-輸出敘述
%c	-字元
%s	-字串
%d	-十進位整數
%u	-無號十進位整數
%o	-無號八進位整數
%x	-無號十六進位整數，以 0 ~ f 表示
%X	-無號十六進位整數，以 0 ~ F 表示--
%f	-浮點數，小數點型式
%e	-浮點數，指數e型式
%E	-浮點數，指數E型式
%g	-印出 %f 與 %e 較短者
%G	-印出 %F 與 %E 較短者
%p	-指標位址
%%	-印出百分比符號
-
-控制字元--	-功能
\a	-警告音
\b	-倒退
\f	-換頁
\n	-換行
\r	-歸位
\t	-跳格
\’	-印出單引號
\"	-印出雙引號
\\	-反斜線
\/	-斜線
\d	-八進位 Ascii 碼
\x	-十六進位 Ascii 碼---

-修飾子-	-功能	-範例

-	-向左對齊																	-%-3d
+	-將數值的正負號顯示出來														-%+5d
空白	-數值為正值時，留一格空白；為負值時，顯示負號							-% 6f
0	-將固定欄位長度的數值前空白處填上 0；與 – 修飾子同時使用時，此修飾子無效--	-%07.2f--
數字	-欄位長度，當數值的位數大於所定的欄位長度時，欄位會自動加寬它的長度		-%9d
.	-數值以 %e, %E, %f 型式表示時，決定小數點後所要顯示的位數					-%4.3f
h	-表示 short int 或是 unsigned short int										-%5h
l	-表示 long int 或是 unsigned long int										-%lu

/*****************************************************
macro前置處理 C 編譯器 會先處理 C 程式 中含有 
#define
#undef
#if
#else
#endif
#ifdef
#ifndef
#elif
#include
#warning
#pragma 
/*****************************************************
#define 用法
1. 使用 ... 代表傳入參數，後面使用 __VA_ARGS__ 表示參數位置
2. 使用 # 前綴傳參數，或者打在 #define 中，則會轉字串 (加入雙引號)
3. 使用 #@ 前綴傳參數，或者打在 #define 中，則會轉字元 (加入單引號)
4. 使用 \ 跨行，不想讓 define 一行太多，最後一個字元打上 '\' 就可以跨行了。
5. #define 只能使用識別字，即 $, _, 0~9, a-z, A-Z, 函數的話則會多 ()
這裡簡單說明了 #define 的幾種使用方法. 


簡單的define定義 :
#define MAXTIME 1000

一個簡單的MAXTIME就定義好了，它代表1000，如果在程序裡面寫 : 
int i = MAXTIME;


編譯器在處理這個代碼之前會對MAXTIME進行處理替換為1000。
這樣的定義看起來類似於普通的常量定義CONST，但也有著不同，因為define的定義更像是簡單的文本替換，而不是作為一個量來使用.

define的"函數定義" :
define可以像函數那樣接受一些參數，參考範例如下 :
#define max(x,y) (x)>(y)?(x):(y);

這個定義就將返回兩個數中較大的那個，看到了嗎? 因為這個"函數"沒有類型檢查，就好像一個函數模板似的，當然，它絕對沒有模板那麼安全就是了. 可以作為一個簡單的模板來使用而已. 但是這樣做的話存在隱患，例子如下 :
#define Add(a,b) a+b;

在一般使用的時候是沒有問題的，但是如果遇到如 : c * Add(a,b) * d 的時候就會出現問題, 代數式的本意是a+b然後去和c，d相乘，但是因為使用了define（它只是一個簡單的替換），所以式子實際上變成了:
c*a + b*d

另外舉一個例子 : 
#define pin (int*);
pin a,b;

本意是a和b都是int型指針，但是實際上變成int* a,b;
a是int型指針，而b是int型變量. 這是應該使用typedef來代替define，這樣a和b就都是int型指針了. 所以我們在定義的時候，養成一個良好的習慣，建議所有的層次都要加括號. 

宏的單行定義 :
考慮下列 #define 用法 : 
#define A(x) T_##x
#define B（x) #@x
#define C（x) #x
我們假設：x=1，則會有 : 
A(1)------>T_1
B(1)------>'1'
C(1)------>"1"

define的多行定義 :
define可以替代多行的代碼，例如MFC中的宏定義（非常的經典，雖然讓人看了噁心）: 
view plaincopy to clipboardprint?
#define MACRO(arg1, arg2) do { \  
/* declarations */ \  
//stmt1; \  
//stmt2; \  
/* ... */ \  
//} while(0) /* (no trailing ; ) */  
/*
關鍵是要在每一個換行的時候加上一個"\".

define的條件編譯 : 
view plaincopy to clipboardprint?
#ifdef WINDOWS  
......  
......  
#endif  
#ifdef LINUX  
......  
......  
#endif  
可以在編譯的時候通過#define設置編譯環境.

如何定義宏、取消宏 : 
//定義宏
#define [MacroName] [MacroValue]
//取消宏
#undef [MacroName]
//普通宏
#define PI (3.1415926)
//帶參數的宏
#define max(a,b) ((a)>(b)? (a),(b))

關鍵是十分容易產生錯誤，包括機器和人理解上的差異等等.

條件編譯 :
#ifdef XXX…(#else) …#endif

例如 : 
#ifdef DV22_AUX_INPUT
#define AUX_MODE 3
#else
#define AUY_MODE 3
#endif
#ifndef XXX … (#else) … #endif

避免頭文件重複定義 :
由於頭文件包含可以嵌套，那麼C文件就有可能包含多次同一個頭文件，就可能出現重複定義的問題的. 通過條件編譯開關來避免重複引用, 例如 : 
#ifndef __headerfileXXX__
#define __headerfileXXX__
...
//文件內容
...
#endif


 3.宏的特殊單行定義
 #define A(x) T_##x
 #define B（x) #@x
 #define C（x) #x
 x=1
 替換為：
 A(1)------> T_1 （T_##x,##符號是記號粘黏符號，將前後的字元粘黏起來。）
 B(1)------> '1' （ #@x , #@ 符號會將宏的參數進行字元串字面量化，並且加『』號）
 C(1)------> "1" （ #x ,#符號會將宏的參數進行字元串字面量化，並且加""號）


 8.預定義宏
 在C語言中收錄了一些有用的宏，這些宏是提供當前編譯信息的。
 __LINE__        被編譯文件的行數 （整型）
 __FILE__  被編譯文件的名字 （字元型）
 __DATE__  編譯日期 （字元型）
 __TIME__  編譯時間 （字元型）
 __STDC__  如果編譯器接受標準C，那麼值為1. （整型）
 
 
 通常我們在編譯的時候我們可以用這些預定義的宏來進行排錯，例如：
 一般情況下，當出現除零的情況時編譯器是沒有提示的，我們可以自定義一個解決辦法。
 #define CHECKZERO(divisor)\
 if(divisor==0)\
 printf("***ATTEMPT TO DIVIDE BY ZERO IN LINE %d of file %s ***\n",__LINE__,__FILE__);\


補充說明 :
C/C++ : 前置處理指令 
前處理指令(pre-processing instructions)顧名思義是編譯前的前處理，與程式邏輯無關，
只是告知編譯器在開始編譯程式原始碼之前必須做的事情。在C/C++原始碼當中以#開始的指令都是編譯器(compiler)的前處理指令，
這並不屬於 C++ 標準的一部分，所以各家的編譯器也會支援一些獨家的前處理指令，不過本篇要介紹的是所有編譯器都共通有的 
#include、#define、#ifdef、#endif 指令，如下： 
#include <檔案>: 先把這個檔案合併進來。
#define: 把檔案裡面的字串先替換過。
#ifdef / #endif: 依據 #define 的現況排除某些程式碼

*/

