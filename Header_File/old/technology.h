/*****************************************************
noun		�W��			
verb		�ʵ�			
Adjective	�ήe��			
Adverb		�Ƶ�			

color 		�C���r							
red			��				
blue		��				
amber		�[��			black		��				
green		��				
white		��				
yellow		��				
gray		��				

operating 	�ާ@��r		
restore		��_  			
reset		���m	
set			�]�m	
start		�}�l	
stop		����	
open		�}		
close		��		
fail		����	success		���\	
error		���~	
correct		���T	
true		�u��			
false		�갲	
Calculate	�p��	in progress �i�椤	
enable		�ҥ�	
disable		����	


range		�d��			
average		����			
cycle		�g��/�`��		
execution	����			
Register	�n�O/�Ȧs��		
Cloud		��				
Client		�Ȥ�			
Combine		���X			
bind		�j��			
Ethernet	�A�Ӻ�			
initial		��l			
internal	����			
external	�~��			interrupt	���_			
load		�t��			temperature	�ū�			
conversion	����			
function	�\��/���		
pin-to-pin compatible �޸}��޸}�ݮe
word		�r				

center		����			
maximum		�̤j			
medium		����			
minimum		�̤p		
Anode		����
Negative electrode �t��
Positive	��
Negative	�t

windows word	������r
file		�ɮ�		
edit		�s��
view		�˵�
project		�M��
debugger	�ով�/����
programmer	�{�ǭ�
tools		�u��
configure	�t�m
window		����
help		���U


sensor		�ǷP��
register	�Ȧs��

voltage		�q��
singal		�T��
type		���A
analogy		����
digital		�Ʀ�
value


declaration	�ŧi
int			��
long		��
double		��
float		�B��
unsigned 	�L�Ÿ�
variable	�ܼ�
flag		�X��
Processor 	�B�z��
Prescaler	�w���W
offset		����

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

Monday 		�P���@
Tuesday 	�P���G
Wednesday 	�P���T
Thursday 	�P���|
Friday 		�P����
Saturday 	�P����
Sunday 		�P����
Holiday		����

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
Million 	�ʸU
billion		��
*****************************************************/
/*****************************************************


char i;
i=0xaa;				//�Q���i���ܦ�
i=170;				//�Q�i���ܦ�
i=170;				//�K�i���ܦ�
i=0b10101010;		//�G�i���ܦ�

variable type description

�ܼƸ�ƫ��A
bit				0~1									1bit
char -128~+127 								1byte(8bit) 
int -32768~+32767	  					2byte(16bit)
long -2147483648~+2147483647  4byte(32bit)
unsigned	�L�t�� 							0~65536
float -2147483648~+2147483647 4byte(32bit)  
double float 									8byte(64bit)
const �O�`�ơB��Ū���N��


�ܼƦW�� (life-time cycle)�O������ήɶ�
auto 			�۰��ܼ� 		�b{...}���~���O����
static		�R�A�ܼ� 		�b{...}��ӵ{�������O����
extern  	�~�b�ܼ� 		�b{...}�~�ŧi�A��ӵ{�������O����
register 	�Ȧs���ܼ�	�N�ܼƸm��cpu���W�[ ����t��
/*****************************************************
/*****************************************************
pointer
& 			// ���}�B�⤸
* 			//���ȹB�⤸

declare type example:
int *p;	//�ŧi�����ܼƥB�����
int i;		//�ŧi����ܼ�	
i=3;		//���wi���e��
*p=50;	//���w�����ܼ�p���e��	
var=&i; 	//��i�b�O�����}������ܼ�p
i=*p;		//��p�����ܼƤ������e�Ȩ�i

���~�ŧi
int *p=10;
���T�ŧi
int i=10;
int *p=&i; or int *p=(int*)10
p=&i;

�[��B��
*�u��[�`�ƭ�
*�N�����ܼƤ��e�y�[1�z
	?�̾ګ��Ы��V����ƫ��A
	�Ҧ��Ϊ��O������j�p�A�ӨM�w���ʦh�֭Ӧ�}
	�]�[1�N��[1�ӳ��^�A�H�K���V���T���U�@���P�˸����������ơC
	(int =2byte,+1���=+ 2byte)
int*p,*q;
p=p+q; 		//���X�k���B��

����B��
*�ۦP���A�������ܼƥi�H������B��A�ǥѤ���B��A
	�ڭ̥i�H�o���O�����}���������Y
*�����t�m�O���骺�ܼƦ��������O�����}
	
�t�ȹB��
*��ӬۦP��ƫ��A�������ܼƥi�H����k�B��
*�N���ӰO�����}�������i�s��h�֭ӸӸ�ƫ��A�����

*�ǭȩI�s
*call by value
int cubeByValue( int n ); // prototype 

// calculate and return cube of integer argument //

int cubeByValue( int n ) 
{ 
	25 return n * n * n; 	
// cube local variable n and return result // 
} 
// end function cubeByValue //

*�ǧ}�I�s
*call by address
void cubeByReference( int *nPtr ); // prototype 

cubeByReference( &number ); //�I�s

// calculate cube of *nPtr; modifies variable number in main // 
 void cubeByReference( int *nPtr ) 
 { 
 *nPtr = *nPtr * *nPtr * *nPtr; // cube *nPtr // 
 } // end function cubeByReference //

���лP�}�C
int array[10]; �ڭ̥H�}�C�W��array�N��}�C���_�l��},
 �Harray+1��ܤU�@�Ӧ�}.
��ŧi���Ю�, int*ptr; �h�Hptr�N����}, �Hptr+1�N��U�@�Ӧ�}.
�}�C���]�O���Ъ��@������.

�C�@�ظ�ƫ��A�������ܼƦb32�줸���@�~�t�����Ҥ�������4��bytes�A
	�]�������ܼƦs�񪺬O�O�����}
/*****************************************************
/*****************************************************
structure description

struct	//structure 	���c 

struct ���c�W��  {
   ��ƫ��A �ܼ�1;
   ��ƫ��A �ܼ�2;
   �K�K
};
struct ���c�W�� �ܼƦW��;
p = &w;
(*p).age = 50;
p->age = 50;


union	//unions 		�p�X�A�ϥΦP�@���O����
union �p�X�W�� �ܼƦW��;

union size
{
	char age;
	int  shcool;
}size;
���̤jsize


enum	//Enumerations 	�C�|�A�ϥα`�ƨ��N�W�١A�L���w�`�Ʈɬ��e�@�`��+1
enum �C�|�W�� �ܼƦW��;

enum week
{	
	Monday 		=1,		�P���@
	Tuesday		=2,		�P���G
	Wednesday 	=3,		�P���T
	Thursday 	=4,		�P���|
	Friday 		=5,		�P����
	Saturday 	=6,		�P����
	Sunday 		=7,		�P����
	Holiday		=8		����
}week;

typedef //type define   �إ߷s���A
typedef ��ƫ��A �ѧO�r;

char = 1byte

typedef mybyte char

mybyte =1byte


/*****************************************************
printf- �C�L�榡-	-��X�ԭz
%c	-�r��
%s	-�r��
%d	-�Q�i����
%u	-�L���Q�i����
%o	-�L���K�i����
%x	-�L���Q���i���ơA�H 0 ~ f ���
%X	-�L���Q���i���ơA�H 0 ~ F ���--
%f	-�B�I�ơA�p���I����
%e	-�B�I�ơA����e����
%E	-�B�I�ơA����E����
%g	-�L�X %f �P %e ���u��
%G	-�L�X %F �P %E ���u��
%p	-���Ц�}
%%	-�L�X�ʤ���Ÿ�
-
-����r��--	-�\��
\a	-ĵ�i��
\b	-�˰h
\f	-����
\n	-����
\r	-�k��
\t	-����
\��	-�L�X��޸�
\"	-�L�X���޸�
\\	-�ϱ׽u
\/	-�׽u
\d	-�K�i�� Ascii �X
\x	-�Q���i�� Ascii �X---

-�׹��l-	-�\��	-�d��

-	-�V�����																	-%-3d
+	-�N�ƭȪ����t����ܥX��														-%+5d
�ť�	-�ƭȬ����ȮɡA�d�@��ťաF���t�ȮɡA��ܭt��							-% 6f
0	-�N�T�w�����ת��ƭȫe�ťճB��W 0�F�P �V �׹��l�P�ɨϥήɡA���׹��l�L��--	-%07.2f--
�Ʀr	-�����סA��ƭȪ���Ƥj��ҩw�������׮ɡA���|�۰ʥ[�e��������		-%9d
.	-�ƭȥH %e, %E, %f ������ܮɡA�M�w�p���I��ҭn��ܪ����					-%4.3f
h	-��� short int �άO unsigned short int										-%5h
l	-��� long int �άO unsigned long int										-%lu

/*****************************************************
macro�e�m�B�z C �sĶ�� �|���B�z C �{�� ���t�� 
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
#define �Ϊk
1. �ϥ� ... �N��ǤJ�ѼơA�᭱�ϥ� __VA_ARGS__ ��ܰѼƦ�m
2. �ϥ� # �e��ǰѼơA�Ϊ̥��b #define ���A�h�|��r�� (�[�J���޸�)
3. �ϥ� #@ �e��ǰѼơA�Ϊ̥��b #define ���A�h�|��r�� (�[�J��޸�)
4. �ϥ� \ ���A���Q�� define �@��Ӧh�A�̫�@�Ӧr�����W '\' �N�i�H���F�C
5. #define �u��ϥ��ѧO�r�A�Y $, _, 0~9, a-z, A-Z, ��ƪ��ܫh�|�h ()
�o��²�满���F #define ���X�بϥΤ�k. 


²�檺define�w�q :
#define MAXTIME 1000

�@��²�檺MAXTIME�N�w�q�n�F�A���N��1000�A�p�G�b�{�Ṋ̀��g : 
int i = MAXTIME;


�sĶ���b�B�z�o�ӥN�X���e�|��MAXTIME�i��B�z������1000�C
�o�˪��w�q�ݰ_�������󴶳q���`�q�w�qCONST�A���]���ۤ��P�A�]��define���w�q�󹳬O²�檺�奻�����A�Ӥ��O�@���@�Ӷq�Өϥ�.

define��"��Ʃw�q" :
define�i�H����ƨ��˱����@�ǰѼơA�Ѧҽd�Ҧp�U :
#define max(x,y) (x)>(y)?(x):(y);

�o�өw�q�N�N��^��ӼƤ����j�����ӡA�ݨ�F��? �]���o��"���"�S�������ˬd�A�N�n���@�Ө�ƼҪO�����A��M�A������S���ҪO����w���N�O�F. �i�H�@���@��²�檺�ҪO�ӨϥΦӤw. ���O�o�˰����ܦs�b���w�A�Ҥl�p�U :
#define Add(a,b) a+b;

�b�@��ϥΪ��ɭԬO�S�����D���A���O�p�G�J��p : c * Add(a,b) * d ���ɭԴN�|�X�{���D, �N�Ʀ������N�Oa+b�M��h�Mc�Ad�ۭ��A���O�]���ϥΤFdefine�]���u�O�@��²�檺�����^�A�ҥH���l��ڤW�ܦ��F:
c*a + b*d

�t�~�|�@�ӨҤl : 
#define pin (int*);
pin a,b;

���N�Oa�Mb���Oint�����w�A���O��ڤW�ܦ�int* a,b;
a�Oint�����w�A��b�Oint���ܶq. �o�O���Өϥ�typedef�ӥN��define�A�o��a�Mb�N���Oint�����w�F. �ҥH�ڭ̦b�w�q���ɭԡA�i���@�Ө}�n���ߺD�A��ĳ�Ҧ����h�����n�[�A��. 

�������w�q :
�Ҽ{�U�C #define �Ϊk : 
#define A(x) T_##x
#define B�]x) #@x
#define C�]x) #x
�ڭ̰��]�Gx=1�A�h�|�� : 
A(1)------>T_1
B(1)------>'1'
C(1)------>"1"

define���h��w�q :
define�i�H���N�h�檺�N�X�A�ҦpMFC�������w�q�]�D�`���g��A���M���H�ݤF���ߡ^: 
view plaincopy to clipboardprint?
#define MACRO(arg1, arg2) do { \  
/* declarations */ \  
//stmt1; \  
//stmt2; \  
/* ... */ \  
//} while(0) /* (no trailing ; ) */  
/*
����O�n�b�C�@�Ӵ��檺�ɭԥ[�W�@��"\".

define������sĶ : 
view plaincopy to clipboardprint?
#ifdef WINDOWS  
......  
......  
#endif  
#ifdef LINUX  
......  
......  
#endif  
�i�H�b�sĶ���ɭԳq�L#define�]�m�sĶ����.

�p��w�q���B������ : 
//�w�q��
#define [MacroName] [MacroValue]
//������
#undef [MacroName]
//���q��
#define PI (3.1415926)
//�a�Ѽƪ���
#define max(a,b) ((a)>(b)? (a),(b))

����O�Q���e�����Ϳ��~�A�]�A�����M�H�z�ѤW���t������.

����sĶ :
#ifdef XXX�K(#else) �K#endif

�Ҧp : 
#ifdef DV22_AUX_INPUT
#define AUX_MODE 3
#else
#define AUY_MODE 3
#endif
#ifndef XXX �K (#else) �K #endif

�קK�Y��󭫽Ʃw�q :
�ѩ��Y���]�t�i�H�O�M�A����C���N���i��]�t�h���P�@���Y���A�N�i��X�{���Ʃw�q�����D��. �q�L����sĶ�}�����קK���Ƥޥ�, �Ҧp : 
#ifndef __headerfileXXX__
#define __headerfileXXX__
...
//��󤺮e
...
#endif


 3.�����S����w�q
 #define A(x) T_##x
 #define B�]x) #@x
 #define C�]x) #x
 x=1
 �������G
 A(1)------> T_1 �]T_##x,##�Ÿ��O�O�����H�Ÿ��A�N�e�᪺�r�����H�_�ӡC�^
 B(1)------> '1' �] #@x , #@ �Ÿ��|�N�����Ѽƶi��r����r���q�ơA�åB�[�y�z���^
 C(1)------> "1" �] #x ,#�Ÿ��|�N�����Ѽƶi��r����r���q�ơA�åB�[""���^


 8.�w�w�q��
 �bC�y���������F�@�Ǧ��Ϊ����A�o�ǧ��O���ѷ�e�sĶ�H�����C
 __LINE__        �Q�sĶ��󪺦�� �]�㫬�^
 __FILE__  �Q�sĶ��󪺦W�r �]�r�����^
 __DATE__  �sĶ��� �]�r�����^
 __TIME__  �sĶ�ɶ� �]�r�����^
 __STDC__  �p�G�sĶ�������з�C�A����Ȭ�1. �]�㫬�^
 
 
 �q�`�ڭ̦b�sĶ���ɭԧڭ̥i�H�γo�ǹw�w�q�����Ӷi��ƿ��A�Ҧp�G
 �@�뱡�p�U�A��X�{���s�����p�ɽsĶ���O�S�����ܪ��A�ڭ̥i�H�۩w�q�@�ӸѨM��k�C
 #define CHECKZERO(divisor)\
 if(divisor==0)\
 printf("***ATTEMPT TO DIVIDE BY ZERO IN LINE %d of file %s ***\n",__LINE__,__FILE__);\


�ɥR���� :
C/C++ : �e�m�B�z���O 
�e�B�z���O(pre-processing instructions)�U�W��q�O�sĶ�e���e�B�z�A�P�{���޿�L���A
�u�O�i���sĶ���b�}�l�sĶ�{����l�X���e���������Ʊ��C�bC/C++��l�X���H#�}�l�����O���O�sĶ��(compiler)���e�B�z���O�A
�o�ä��ݩ� C++ �зǪ��@�����A�ҥH�U�a���sĶ���]�|�䴩�@�ǿW�a���e�B�z���O�A���L���g�n���Ъ��O�Ҧ��sĶ�����@�q���� 
#include�B#define�B#ifdef�B#endif ���O�A�p�U�G 
#include <�ɮ�>: ����o���ɮצX�ֶi�ӡC
#define: ���ɮ׸̭����r��������L�C
#ifdef / #endif: �̾� #define ���{�p�ư��Y�ǵ{���X

*/

