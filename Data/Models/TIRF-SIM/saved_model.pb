ТЗ

Ї╩
:
Add
x"T
y"T
z"T"
Ttype:
2	
x
Assign
ref"TА

value"T

output_ref"TА"	
Ttype"
validate_shapebool("
use_lockingbool(Ш
╝
AvgPool

value"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype:
2
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
ь
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
.
Identity

input"T
output"T"	
Ttype
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
_
Pad

input"T
paddings"	Tpaddings
output"T"	
Ttype"
	Tpaddingstype0:
2	
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
D
Relu
features"T
activations"T"
Ttype:
2	
q
ResizeBilinear
images"T
size
resized_images"
Ttype:
2
	"
align_cornersbool( 
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
H
ShardedFilename
basename	
shard

num_shards
filename
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
А
TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
s

VariableV2
ref"dtypeА"
shapeshape"
dtypetype"
	containerstring "
shared_namestring И"serve*1.8.02b'v1.8.0-0-g93bc2e2072'жю
И
PlaceholderPlaceholder*
dtype0*4
_output_shapes"
 :                  *)
shape :                  
К
Placeholder_1Placeholder*
dtype0*4
_output_shapes"
 :                  *)
shape :                  
P
ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
Д

ExpandDims
ExpandDimsPlaceholderExpandDims/dim*
T0*

Tdim0*8
_output_shapes&
$:"                  
R
ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
К
ExpandDims_1
ExpandDimsPlaceholder_1ExpandDims_1/dim*
T0*

Tdim0*8
_output_shapes&
$:"                  
╦
@Generator/down0/conv1/filters/Initializer/truncated_normal/shapeConst*%
valueB"             *
dtype0*
_output_shapes
:*0
_class&
$"loc:@Generator/down0/conv1/filters
╢
?Generator/down0/conv1/filters/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: *0
_class&
$"loc:@Generator/down0/conv1/filters
╕
AGenerator/down0/conv1/filters/Initializer/truncated_normal/stddevConst*
valueB
 *лкк=*
dtype0*
_output_shapes
: *0
_class&
$"loc:@Generator/down0/conv1/filters
и
JGenerator/down0/conv1/filters/Initializer/truncated_normal/TruncatedNormalTruncatedNormal@Generator/down0/conv1/filters/Initializer/truncated_normal/shape*
seed2 *0
_class&
$"loc:@Generator/down0/conv1/filters*
T0*&
_output_shapes
: *
dtype0*

seed 
╖
>Generator/down0/conv1/filters/Initializer/truncated_normal/mulMulJGenerator/down0/conv1/filters/Initializer/truncated_normal/TruncatedNormalAGenerator/down0/conv1/filters/Initializer/truncated_normal/stddev*
T0*&
_output_shapes
: *0
_class&
$"loc:@Generator/down0/conv1/filters
е
:Generator/down0/conv1/filters/Initializer/truncated_normalAdd>Generator/down0/conv1/filters/Initializer/truncated_normal/mul?Generator/down0/conv1/filters/Initializer/truncated_normal/mean*
T0*&
_output_shapes
: *0
_class&
$"loc:@Generator/down0/conv1/filters
╙
Generator/down0/conv1/filters
VariableV2*
shared_name *0
_class&
$"loc:@Generator/down0/conv1/filters*&
_output_shapes
: *
dtype0*
shape: *
	container 
Х
$Generator/down0/conv1/filters/AssignAssignGenerator/down0/conv1/filters:Generator/down0/conv1/filters/Initializer/truncated_normal*
T0*&
_output_shapes
: *
use_locking(*
validate_shape(*0
_class&
$"loc:@Generator/down0/conv1/filters
░
"Generator/down0/conv1/filters/readIdentityGenerator/down0/conv1/filters*
T0*&
_output_shapes
: *0
_class&
$"loc:@Generator/down0/conv1/filters
м
.Generator/down0/conv1/biases/Initializer/ConstConst*
valueB *═╠╠=*
dtype0*
_output_shapes
: */
_class%
#!loc:@Generator/down0/conv1/biases
╣
Generator/down0/conv1/biases
VariableV2*
shared_name */
_class%
#!loc:@Generator/down0/conv1/biases*
_output_shapes
: *
dtype0*
shape: *
	container 
·
#Generator/down0/conv1/biases/AssignAssignGenerator/down0/conv1/biases.Generator/down0/conv1/biases/Initializer/Const*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*/
_class%
#!loc:@Generator/down0/conv1/biases
б
!Generator/down0/conv1/biases/readIdentityGenerator/down0/conv1/biases*
T0*
_output_shapes
: */
_class%
#!loc:@Generator/down0/conv1/biases
√
Generator/Conv2DConv2D
ExpandDims"Generator/down0/conv1/filters/read*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*8
_output_shapes&
$:"                   *
use_cudnn_on_gpu(
л
Generator/BiasAddBiasAddGenerator/Conv2D!Generator/down0/conv1/biases/read*
T0*
data_formatNHWC*8
_output_shapes&
$:"                   
l
Generator/ReluReluGenerator/BiasAdd*
T0*8
_output_shapes&
$:"                   
j
Generator/NegNegGenerator/BiasAdd*
T0*8
_output_shapes&
$:"                   
j
Generator/Relu_1ReluGenerator/Neg*
T0*8
_output_shapes&
$:"                   
T
Generator/mul/xConst*
valueB
 *═╠╠=*
dtype0*
_output_shapes
: 
z
Generator/mulMulGenerator/mul/xGenerator/Relu_1*
T0*8
_output_shapes&
$:"                   
v
Generator/subSubGenerator/ReluGenerator/mul*
T0*8
_output_shapes&
$:"                   
╦
@Generator/down0/conv2/filters/Initializer/truncated_normal/shapeConst*%
valueB"              *
dtype0*
_output_shapes
:*0
_class&
$"loc:@Generator/down0/conv2/filters
╢
?Generator/down0/conv2/filters/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: *0
_class&
$"loc:@Generator/down0/conv2/filters
╕
AGenerator/down0/conv2/filters/Initializer/truncated_normal/stddevConst*
valueB
 *лкк=*
dtype0*
_output_shapes
: *0
_class&
$"loc:@Generator/down0/conv2/filters
и
JGenerator/down0/conv2/filters/Initializer/truncated_normal/TruncatedNormalTruncatedNormal@Generator/down0/conv2/filters/Initializer/truncated_normal/shape*
seed2 *0
_class&
$"loc:@Generator/down0/conv2/filters*
T0*&
_output_shapes
:  *
dtype0*

seed 
╖
>Generator/down0/conv2/filters/Initializer/truncated_normal/mulMulJGenerator/down0/conv2/filters/Initializer/truncated_normal/TruncatedNormalAGenerator/down0/conv2/filters/Initializer/truncated_normal/stddev*
T0*&
_output_shapes
:  *0
_class&
$"loc:@Generator/down0/conv2/filters
е
:Generator/down0/conv2/filters/Initializer/truncated_normalAdd>Generator/down0/conv2/filters/Initializer/truncated_normal/mul?Generator/down0/conv2/filters/Initializer/truncated_normal/mean*
T0*&
_output_shapes
:  *0
_class&
$"loc:@Generator/down0/conv2/filters
╙
Generator/down0/conv2/filters
VariableV2*
shared_name *0
_class&
$"loc:@Generator/down0/conv2/filters*&
_output_shapes
:  *
dtype0*
shape:  *
	container 
Х
$Generator/down0/conv2/filters/AssignAssignGenerator/down0/conv2/filters:Generator/down0/conv2/filters/Initializer/truncated_normal*
T0*&
_output_shapes
:  *
use_locking(*
validate_shape(*0
_class&
$"loc:@Generator/down0/conv2/filters
░
"Generator/down0/conv2/filters/readIdentityGenerator/down0/conv2/filters*
T0*&
_output_shapes
:  *0
_class&
$"loc:@Generator/down0/conv2/filters
м
.Generator/down0/conv2/biases/Initializer/ConstConst*
valueB *═╠╠=*
dtype0*
_output_shapes
: */
_class%
#!loc:@Generator/down0/conv2/biases
╣
Generator/down0/conv2/biases
VariableV2*
shared_name */
_class%
#!loc:@Generator/down0/conv2/biases*
_output_shapes
: *
dtype0*
shape: *
	container 
·
#Generator/down0/conv2/biases/AssignAssignGenerator/down0/conv2/biases.Generator/down0/conv2/biases/Initializer/Const*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*/
_class%
#!loc:@Generator/down0/conv2/biases
б
!Generator/down0/conv2/biases/readIdentityGenerator/down0/conv2/biases*
T0*
_output_shapes
: */
_class%
#!loc:@Generator/down0/conv2/biases
А
Generator/Conv2D_1Conv2DGenerator/sub"Generator/down0/conv2/filters/read*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*8
_output_shapes&
$:"                   *
use_cudnn_on_gpu(
п
Generator/BiasAdd_1BiasAddGenerator/Conv2D_1!Generator/down0/conv2/biases/read*
T0*
data_formatNHWC*8
_output_shapes&
$:"                   
p
Generator/Relu_2ReluGenerator/BiasAdd_1*
T0*8
_output_shapes&
$:"                   
n
Generator/Neg_1NegGenerator/BiasAdd_1*
T0*8
_output_shapes&
$:"                   
l
Generator/Relu_3ReluGenerator/Neg_1*
T0*8
_output_shapes&
$:"                   
V
Generator/mul_1/xConst*
valueB
 *═╠╠=*
dtype0*
_output_shapes
: 
~
Generator/mul_1MulGenerator/mul_1/xGenerator/Relu_3*
T0*8
_output_shapes&
$:"                   
|
Generator/sub_1SubGenerator/Relu_2Generator/mul_1*
T0*8
_output_shapes&
$:"                   
╦
@Generator/down0/conv3/filters/Initializer/truncated_normal/shapeConst*%
valueB"          @   *
dtype0*
_output_shapes
:*0
_class&
$"loc:@Generator/down0/conv3/filters
╢
?Generator/down0/conv3/filters/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: *0
_class&
$"loc:@Generator/down0/conv3/filters
╕
AGenerator/down0/conv3/filters/Initializer/truncated_normal/stddevConst*
valueB
 *я[q=*
dtype0*
_output_shapes
: *0
_class&
$"loc:@Generator/down0/conv3/filters
и
JGenerator/down0/conv3/filters/Initializer/truncated_normal/TruncatedNormalTruncatedNormal@Generator/down0/conv3/filters/Initializer/truncated_normal/shape*
seed2 *0
_class&
$"loc:@Generator/down0/conv3/filters*
T0*&
_output_shapes
: @*
dtype0*

seed 
╖
>Generator/down0/conv3/filters/Initializer/truncated_normal/mulMulJGenerator/down0/conv3/filters/Initializer/truncated_normal/TruncatedNormalAGenerator/down0/conv3/filters/Initializer/truncated_normal/stddev*
T0*&
_output_shapes
: @*0
_class&
$"loc:@Generator/down0/conv3/filters
е
:Generator/down0/conv3/filters/Initializer/truncated_normalAdd>Generator/down0/conv3/filters/Initializer/truncated_normal/mul?Generator/down0/conv3/filters/Initializer/truncated_normal/mean*
T0*&
_output_shapes
: @*0
_class&
$"loc:@Generator/down0/conv3/filters
╙
Generator/down0/conv3/filters
VariableV2*
shared_name *0
_class&
$"loc:@Generator/down0/conv3/filters*&
_output_shapes
: @*
dtype0*
shape: @*
	container 
Х
$Generator/down0/conv3/filters/AssignAssignGenerator/down0/conv3/filters:Generator/down0/conv3/filters/Initializer/truncated_normal*
T0*&
_output_shapes
: @*
use_locking(*
validate_shape(*0
_class&
$"loc:@Generator/down0/conv3/filters
░
"Generator/down0/conv3/filters/readIdentityGenerator/down0/conv3/filters*
T0*&
_output_shapes
: @*0
_class&
$"loc:@Generator/down0/conv3/filters
м
.Generator/down0/conv3/biases/Initializer/ConstConst*
valueB@*═╠╠=*
dtype0*
_output_shapes
:@*/
_class%
#!loc:@Generator/down0/conv3/biases
╣
Generator/down0/conv3/biases
VariableV2*
shared_name */
_class%
#!loc:@Generator/down0/conv3/biases*
_output_shapes
:@*
dtype0*
shape:@*
	container 
·
#Generator/down0/conv3/biases/AssignAssignGenerator/down0/conv3/biases.Generator/down0/conv3/biases/Initializer/Const*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*/
_class%
#!loc:@Generator/down0/conv3/biases
б
!Generator/down0/conv3/biases/readIdentityGenerator/down0/conv3/biases*
T0*
_output_shapes
:@*/
_class%
#!loc:@Generator/down0/conv3/biases
В
Generator/Conv2D_2Conv2DGenerator/sub_1"Generator/down0/conv3/filters/read*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*8
_output_shapes&
$:"                  @*
use_cudnn_on_gpu(
п
Generator/BiasAdd_2BiasAddGenerator/Conv2D_2!Generator/down0/conv3/biases/read*
T0*
data_formatNHWC*8
_output_shapes&
$:"                  @
p
Generator/Relu_4ReluGenerator/BiasAdd_2*
T0*8
_output_shapes&
$:"                  @
n
Generator/Neg_2NegGenerator/BiasAdd_2*
T0*8
_output_shapes&
$:"                  @
l
Generator/Relu_5ReluGenerator/Neg_2*
T0*8
_output_shapes&
$:"                  @
V
Generator/mul_2/xConst*
valueB
 *═╠╠=*
dtype0*
_output_shapes
: 
~
Generator/mul_2MulGenerator/mul_2/xGenerator/Relu_5*
T0*8
_output_shapes&
$:"                  @
|
Generator/sub_2SubGenerator/Relu_4Generator/mul_2*
T0*8
_output_shapes&
$:"                  @
З
Generator/Pad/paddingsConst*9
value0B."                             ?   *
dtype0*
_output_shapes

:
М
Generator/PadPad
ExpandDimsGenerator/Pad/paddings*
T0*8
_output_shapes&
$:"                  @*
	Tpaddings0
w
Generator/addAddGenerator/sub_2Generator/Pad*
T0*8
_output_shapes&
$:"                  @
└
Generator/AvgPoolAvgPoolGenerator/add*
strides
*
ksize
*
T0*
data_formatNHWC*
paddingSAME*8
_output_shapes&
$:"                  @
╦
@Generator/down1/conv1/filters/Initializer/truncated_normal/shapeConst*%
valueB"      @   `   *
dtype0*
_output_shapes
:*0
_class&
$"loc:@Generator/down1/conv1/filters
╢
?Generator/down1/conv1/filters/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: *0
_class&
$"loc:@Generator/down1/conv1/filters
╕
AGenerator/down1/conv1/filters/Initializer/truncated_normal/stddevConst*
valueB
 *гE=*
dtype0*
_output_shapes
: *0
_class&
$"loc:@Generator/down1/conv1/filters
и
JGenerator/down1/conv1/filters/Initializer/truncated_normal/TruncatedNormalTruncatedNormal@Generator/down1/conv1/filters/Initializer/truncated_normal/shape*
seed2 *0
_class&
$"loc:@Generator/down1/conv1/filters*
T0*&
_output_shapes
:@`*
dtype0*

seed 
╖
>Generator/down1/conv1/filters/Initializer/truncated_normal/mulMulJGenerator/down1/conv1/filters/Initializer/truncated_normal/TruncatedNormalAGenerator/down1/conv1/filters/Initializer/truncated_normal/stddev*
T0*&
_output_shapes
:@`*0
_class&
$"loc:@Generator/down1/conv1/filters
е
:Generator/down1/conv1/filters/Initializer/truncated_normalAdd>Generator/down1/conv1/filters/Initializer/truncated_normal/mul?Generator/down1/conv1/filters/Initializer/truncated_normal/mean*
T0*&
_output_shapes
:@`*0
_class&
$"loc:@Generator/down1/conv1/filters
╙
Generator/down1/conv1/filters
VariableV2*
shared_name *0
_class&
$"loc:@Generator/down1/conv1/filters*&
_output_shapes
:@`*
dtype0*
shape:@`*
	container 
Х
$Generator/down1/conv1/filters/AssignAssignGenerator/down1/conv1/filters:Generator/down1/conv1/filters/Initializer/truncated_normal*
T0*&
_output_shapes
:@`*
use_locking(*
validate_shape(*0
_class&
$"loc:@Generator/down1/conv1/filters
░
"Generator/down1/conv1/filters/readIdentityGenerator/down1/conv1/filters*
T0*&
_output_shapes
:@`*0
_class&
$"loc:@Generator/down1/conv1/filters
м
.Generator/down1/conv1/biases/Initializer/ConstConst*
valueB`*═╠╠=*
dtype0*
_output_shapes
:`*/
_class%
#!loc:@Generator/down1/conv1/biases
╣
Generator/down1/conv1/biases
VariableV2*
shared_name */
_class%
#!loc:@Generator/down1/conv1/biases*
_output_shapes
:`*
dtype0*
shape:`*
	container 
·
#Generator/down1/conv1/biases/AssignAssignGenerator/down1/conv1/biases.Generator/down1/conv1/biases/Initializer/Const*
T0*
_output_shapes
:`*
use_locking(*
validate_shape(*/
_class%
#!loc:@Generator/down1/conv1/biases
б
!Generator/down1/conv1/biases/readIdentityGenerator/down1/conv1/biases*
T0*
_output_shapes
:`*/
_class%
#!loc:@Generator/down1/conv1/biases
Д
Generator/Conv2D_3Conv2DGenerator/AvgPool"Generator/down1/conv1/filters/read*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*8
_output_shapes&
$:"                  `*
use_cudnn_on_gpu(
п
Generator/BiasAdd_3BiasAddGenerator/Conv2D_3!Generator/down1/conv1/biases/read*
T0*
data_formatNHWC*8
_output_shapes&
$:"                  `
p
Generator/Relu_6ReluGenerator/BiasAdd_3*
T0*8
_output_shapes&
$:"                  `
n
Generator/Neg_3NegGenerator/BiasAdd_3*
T0*8
_output_shapes&
$:"                  `
l
Generator/Relu_7ReluGenerator/Neg_3*
T0*8
_output_shapes&
$:"                  `
V
Generator/mul_3/xConst*
valueB
 *═╠╠=*
dtype0*
_output_shapes
: 
~
Generator/mul_3MulGenerator/mul_3/xGenerator/Relu_7*
T0*8
_output_shapes&
$:"                  `
|
Generator/sub_3SubGenerator/Relu_6Generator/mul_3*
T0*8
_output_shapes&
$:"                  `
╦
@Generator/down1/conv2/filters/Initializer/truncated_normal/shapeConst*%
valueB"      `   `   *
dtype0*
_output_shapes
:*0
_class&
$"loc:@Generator/down1/conv2/filters
╢
?Generator/down1/conv2/filters/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: *0
_class&
$"loc:@Generator/down1/conv2/filters
╕
AGenerator/down1/conv2/filters/Initializer/truncated_normal/stddevConst*
valueB
 *гE=*
dtype0*
_output_shapes
: *0
_class&
$"loc:@Generator/down1/conv2/filters
и
JGenerator/down1/conv2/filters/Initializer/truncated_normal/TruncatedNormalTruncatedNormal@Generator/down1/conv2/filters/Initializer/truncated_normal/shape*
seed2 *0
_class&
$"loc:@Generator/down1/conv2/filters*
T0*&
_output_shapes
:``*
dtype0*

seed 
╖
>Generator/down1/conv2/filters/Initializer/truncated_normal/mulMulJGenerator/down1/conv2/filters/Initializer/truncated_normal/TruncatedNormalAGenerator/down1/conv2/filters/Initializer/truncated_normal/stddev*
T0*&
_output_shapes
:``*0
_class&
$"loc:@Generator/down1/conv2/filters
е
:Generator/down1/conv2/filters/Initializer/truncated_normalAdd>Generator/down1/conv2/filters/Initializer/truncated_normal/mul?Generator/down1/conv2/filters/Initializer/truncated_normal/mean*
T0*&
_output_shapes
:``*0
_class&
$"loc:@Generator/down1/conv2/filters
╙
Generator/down1/conv2/filters
VariableV2*
shared_name *0
_class&
$"loc:@Generator/down1/conv2/filters*&
_output_shapes
:``*
dtype0*
shape:``*
	container 
Х
$Generator/down1/conv2/filters/AssignAssignGenerator/down1/conv2/filters:Generator/down1/conv2/filters/Initializer/truncated_normal*
T0*&
_output_shapes
:``*
use_locking(*
validate_shape(*0
_class&
$"loc:@Generator/down1/conv2/filters
░
"Generator/down1/conv2/filters/readIdentityGenerator/down1/conv2/filters*
T0*&
_output_shapes
:``*0
_class&
$"loc:@Generator/down1/conv2/filters
м
.Generator/down1/conv2/biases/Initializer/ConstConst*
valueB`*═╠╠=*
dtype0*
_output_shapes
:`*/
_class%
#!loc:@Generator/down1/conv2/biases
╣
Generator/down1/conv2/biases
VariableV2*
shared_name */
_class%
#!loc:@Generator/down1/conv2/biases*
_output_shapes
:`*
dtype0*
shape:`*
	container 
·
#Generator/down1/conv2/biases/AssignAssignGenerator/down1/conv2/biases.Generator/down1/conv2/biases/Initializer/Const*
T0*
_output_shapes
:`*
use_locking(*
validate_shape(*/
_class%
#!loc:@Generator/down1/conv2/biases
б
!Generator/down1/conv2/biases/readIdentityGenerator/down1/conv2/biases*
T0*
_output_shapes
:`*/
_class%
#!loc:@Generator/down1/conv2/biases
В
Generator/Conv2D_4Conv2DGenerator/sub_3"Generator/down1/conv2/filters/read*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*8
_output_shapes&
$:"                  `*
use_cudnn_on_gpu(
п
Generator/BiasAdd_4BiasAddGenerator/Conv2D_4!Generator/down1/conv2/biases/read*
T0*
data_formatNHWC*8
_output_shapes&
$:"                  `
p
Generator/Relu_8ReluGenerator/BiasAdd_4*
T0*8
_output_shapes&
$:"                  `
n
Generator/Neg_4NegGenerator/BiasAdd_4*
T0*8
_output_shapes&
$:"                  `
l
Generator/Relu_9ReluGenerator/Neg_4*
T0*8
_output_shapes&
$:"                  `
V
Generator/mul_4/xConst*
valueB
 *═╠╠=*
dtype0*
_output_shapes
: 
~
Generator/mul_4MulGenerator/mul_4/xGenerator/Relu_9*
T0*8
_output_shapes&
$:"                  `
|
Generator/sub_4SubGenerator/Relu_8Generator/mul_4*
T0*8
_output_shapes&
$:"                  `
╦
@Generator/down1/conv3/filters/Initializer/truncated_normal/shapeConst*%
valueB"      `   А   *
dtype0*
_output_shapes
:*0
_class&
$"loc:@Generator/down1/conv3/filters
╢
?Generator/down1/conv3/filters/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: *0
_class&
$"loc:@Generator/down1/conv3/filters
╕
AGenerator/down1/conv3/filters/Initializer/truncated_normal/stddevConst*
valueB
 *лк*=*
dtype0*
_output_shapes
: *0
_class&
$"loc:@Generator/down1/conv3/filters
й
JGenerator/down1/conv3/filters/Initializer/truncated_normal/TruncatedNormalTruncatedNormal@Generator/down1/conv3/filters/Initializer/truncated_normal/shape*
seed2 *0
_class&
$"loc:@Generator/down1/conv3/filters*
T0*'
_output_shapes
:`А*
dtype0*

seed 
╕
>Generator/down1/conv3/filters/Initializer/truncated_normal/mulMulJGenerator/down1/conv3/filters/Initializer/truncated_normal/TruncatedNormalAGenerator/down1/conv3/filters/Initializer/truncated_normal/stddev*
T0*'
_output_shapes
:`А*0
_class&
$"loc:@Generator/down1/conv3/filters
ж
:Generator/down1/conv3/filters/Initializer/truncated_normalAdd>Generator/down1/conv3/filters/Initializer/truncated_normal/mul?Generator/down1/conv3/filters/Initializer/truncated_normal/mean*
T0*'
_output_shapes
:`А*0
_class&
$"loc:@Generator/down1/conv3/filters
╒
Generator/down1/conv3/filters
VariableV2*
shared_name *0
_class&
$"loc:@Generator/down1/conv3/filters*'
_output_shapes
:`А*
dtype0*
shape:`А*
	container 
Ц
$Generator/down1/conv3/filters/AssignAssignGenerator/down1/conv3/filters:Generator/down1/conv3/filters/Initializer/truncated_normal*
T0*'
_output_shapes
:`А*
use_locking(*
validate_shape(*0
_class&
$"loc:@Generator/down1/conv3/filters
▒
"Generator/down1/conv3/filters/readIdentityGenerator/down1/conv3/filters*
T0*'
_output_shapes
:`А*0
_class&
$"loc:@Generator/down1/conv3/filters
о
.Generator/down1/conv3/biases/Initializer/ConstConst*
valueBА*═╠╠=*
dtype0*
_output_shapes	
:А*/
_class%
#!loc:@Generator/down1/conv3/biases
╗
Generator/down1/conv3/biases
VariableV2*
shared_name */
_class%
#!loc:@Generator/down1/conv3/biases*
_output_shapes	
:А*
dtype0*
shape:А*
	container 
√
#Generator/down1/conv3/biases/AssignAssignGenerator/down1/conv3/biases.Generator/down1/conv3/biases/Initializer/Const*
T0*
_output_shapes	
:А*
use_locking(*
validate_shape(*/
_class%
#!loc:@Generator/down1/conv3/biases
в
!Generator/down1/conv3/biases/readIdentityGenerator/down1/conv3/biases*
T0*
_output_shapes	
:А*/
_class%
#!loc:@Generator/down1/conv3/biases
Г
Generator/Conv2D_5Conv2DGenerator/sub_4"Generator/down1/conv3/filters/read*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*9
_output_shapes'
%:#                  А*
use_cudnn_on_gpu(
░
Generator/BiasAdd_5BiasAddGenerator/Conv2D_5!Generator/down1/conv3/biases/read*
T0*
data_formatNHWC*9
_output_shapes'
%:#                  А
r
Generator/Relu_10ReluGenerator/BiasAdd_5*
T0*9
_output_shapes'
%:#                  А
o
Generator/Neg_5NegGenerator/BiasAdd_5*
T0*9
_output_shapes'
%:#                  А
n
Generator/Relu_11ReluGenerator/Neg_5*
T0*9
_output_shapes'
%:#                  А
V
Generator/mul_5/xConst*
valueB
 *═╠╠=*
dtype0*
_output_shapes
: 
А
Generator/mul_5MulGenerator/mul_5/xGenerator/Relu_11*
T0*9
_output_shapes'
%:#                  А
~
Generator/sub_5SubGenerator/Relu_10Generator/mul_5*
T0*9
_output_shapes'
%:#                  А
Й
Generator/Pad_1/paddingsConst*9
value0B."                             @   *
dtype0*
_output_shapes

:
Ш
Generator/Pad_1PadGenerator/AvgPoolGenerator/Pad_1/paddings*
T0*9
_output_shapes'
%:#                  А*
	Tpaddings0
|
Generator/add_1AddGenerator/sub_5Generator/Pad_1*
T0*9
_output_shapes'
%:#                  А
┼
Generator/AvgPool_1AvgPoolGenerator/add_1*
strides
*
ksize
*
T0*
data_formatNHWC*
paddingSAME*9
_output_shapes'
%:#                  А
╦
@Generator/down2/conv1/filters/Initializer/truncated_normal/shapeConst*%
valueB"      А   └   *
dtype0*
_output_shapes
:*0
_class&
$"loc:@Generator/down2/conv1/filters
╢
?Generator/down2/conv1/filters/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: *0
_class&
$"loc:@Generator/down2/conv1/filters
╕
AGenerator/down2/conv1/filters/Initializer/truncated_normal/stddevConst*
valueB
 *HY=*
dtype0*
_output_shapes
: *0
_class&
$"loc:@Generator/down2/conv1/filters
к
JGenerator/down2/conv1/filters/Initializer/truncated_normal/TruncatedNormalTruncatedNormal@Generator/down2/conv1/filters/Initializer/truncated_normal/shape*
seed2 *0
_class&
$"loc:@Generator/down2/conv1/filters*
T0*(
_output_shapes
:А└*
dtype0*

seed 
╣
>Generator/down2/conv1/filters/Initializer/truncated_normal/mulMulJGenerator/down2/conv1/filters/Initializer/truncated_normal/TruncatedNormalAGenerator/down2/conv1/filters/Initializer/truncated_normal/stddev*
T0*(
_output_shapes
:А└*0
_class&
$"loc:@Generator/down2/conv1/filters
з
:Generator/down2/conv1/filters/Initializer/truncated_normalAdd>Generator/down2/conv1/filters/Initializer/truncated_normal/mul?Generator/down2/conv1/filters/Initializer/truncated_normal/mean*
T0*(
_output_shapes
:А└*0
_class&
$"loc:@Generator/down2/conv1/filters
╫
Generator/down2/conv1/filters
VariableV2*
shared_name *0
_class&
$"loc:@Generator/down2/conv1/filters*(
_output_shapes
:А└*
dtype0*
shape:А└*
	container 
Ч
$Generator/down2/conv1/filters/AssignAssignGenerator/down2/conv1/filters:Generator/down2/conv1/filters/Initializer/truncated_normal*
T0*(
_output_shapes
:А└*
use_locking(*
validate_shape(*0
_class&
$"loc:@Generator/down2/conv1/filters
▓
"Generator/down2/conv1/filters/readIdentityGenerator/down2/conv1/filters*
T0*(
_output_shapes
:А└*0
_class&
$"loc:@Generator/down2/conv1/filters
о
.Generator/down2/conv1/biases/Initializer/ConstConst*
valueB└*═╠╠=*
dtype0*
_output_shapes	
:└*/
_class%
#!loc:@Generator/down2/conv1/biases
╗
Generator/down2/conv1/biases
VariableV2*
shared_name */
_class%
#!loc:@Generator/down2/conv1/biases*
_output_shapes	
:└*
dtype0*
shape:└*
	container 
√
#Generator/down2/conv1/biases/AssignAssignGenerator/down2/conv1/biases.Generator/down2/conv1/biases/Initializer/Const*
T0*
_output_shapes	
:└*
use_locking(*
validate_shape(*/
_class%
#!loc:@Generator/down2/conv1/biases
в
!Generator/down2/conv1/biases/readIdentityGenerator/down2/conv1/biases*
T0*
_output_shapes	
:└*/
_class%
#!loc:@Generator/down2/conv1/biases
З
Generator/Conv2D_6Conv2DGenerator/AvgPool_1"Generator/down2/conv1/filters/read*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*9
_output_shapes'
%:#                  └*
use_cudnn_on_gpu(
░
Generator/BiasAdd_6BiasAddGenerator/Conv2D_6!Generator/down2/conv1/biases/read*
T0*
data_formatNHWC*9
_output_shapes'
%:#                  └
r
Generator/Relu_12ReluGenerator/BiasAdd_6*
T0*9
_output_shapes'
%:#                  └
o
Generator/Neg_6NegGenerator/BiasAdd_6*
T0*9
_output_shapes'
%:#                  └
n
Generator/Relu_13ReluGenerator/Neg_6*
T0*9
_output_shapes'
%:#                  └
V
Generator/mul_6/xConst*
valueB
 *═╠╠=*
dtype0*
_output_shapes
: 
А
Generator/mul_6MulGenerator/mul_6/xGenerator/Relu_13*
T0*9
_output_shapes'
%:#                  └
~
Generator/sub_6SubGenerator/Relu_12Generator/mul_6*
T0*9
_output_shapes'
%:#                  └
╦
@Generator/down2/conv2/filters/Initializer/truncated_normal/shapeConst*%
valueB"      └   └   *
dtype0*
_output_shapes
:*0
_class&
$"loc:@Generator/down2/conv2/filters
╢
?Generator/down2/conv2/filters/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: *0
_class&
$"loc:@Generator/down2/conv2/filters
╕
AGenerator/down2/conv2/filters/Initializer/truncated_normal/stddevConst*
valueB
 *HY=*
dtype0*
_output_shapes
: *0
_class&
$"loc:@Generator/down2/conv2/filters
к
JGenerator/down2/conv2/filters/Initializer/truncated_normal/TruncatedNormalTruncatedNormal@Generator/down2/conv2/filters/Initializer/truncated_normal/shape*
seed2 *0
_class&
$"loc:@Generator/down2/conv2/filters*
T0*(
_output_shapes
:└└*
dtype0*

seed 
╣
>Generator/down2/conv2/filters/Initializer/truncated_normal/mulMulJGenerator/down2/conv2/filters/Initializer/truncated_normal/TruncatedNormalAGenerator/down2/conv2/filters/Initializer/truncated_normal/stddev*
T0*(
_output_shapes
:└└*0
_class&
$"loc:@Generator/down2/conv2/filters
з
:Generator/down2/conv2/filters/Initializer/truncated_normalAdd>Generator/down2/conv2/filters/Initializer/truncated_normal/mul?Generator/down2/conv2/filters/Initializer/truncated_normal/mean*
T0*(
_output_shapes
:└└*0
_class&
$"loc:@Generator/down2/conv2/filters
╫
Generator/down2/conv2/filters
VariableV2*
shared_name *0
_class&
$"loc:@Generator/down2/conv2/filters*(
_output_shapes
:└└*
dtype0*
shape:└└*
	container 
Ч
$Generator/down2/conv2/filters/AssignAssignGenerator/down2/conv2/filters:Generator/down2/conv2/filters/Initializer/truncated_normal*
T0*(
_output_shapes
:└└*
use_locking(*
validate_shape(*0
_class&
$"loc:@Generator/down2/conv2/filters
▓
"Generator/down2/conv2/filters/readIdentityGenerator/down2/conv2/filters*
T0*(
_output_shapes
:└└*0
_class&
$"loc:@Generator/down2/conv2/filters
о
.Generator/down2/conv2/biases/Initializer/ConstConst*
valueB└*═╠╠=*
dtype0*
_output_shapes	
:└*/
_class%
#!loc:@Generator/down2/conv2/biases
╗
Generator/down2/conv2/biases
VariableV2*
shared_name */
_class%
#!loc:@Generator/down2/conv2/biases*
_output_shapes	
:└*
dtype0*
shape:└*
	container 
√
#Generator/down2/conv2/biases/AssignAssignGenerator/down2/conv2/biases.Generator/down2/conv2/biases/Initializer/Const*
T0*
_output_shapes	
:└*
use_locking(*
validate_shape(*/
_class%
#!loc:@Generator/down2/conv2/biases
в
!Generator/down2/conv2/biases/readIdentityGenerator/down2/conv2/biases*
T0*
_output_shapes	
:└*/
_class%
#!loc:@Generator/down2/conv2/biases
Г
Generator/Conv2D_7Conv2DGenerator/sub_6"Generator/down2/conv2/filters/read*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*9
_output_shapes'
%:#                  └*
use_cudnn_on_gpu(
░
Generator/BiasAdd_7BiasAddGenerator/Conv2D_7!Generator/down2/conv2/biases/read*
T0*
data_formatNHWC*9
_output_shapes'
%:#                  └
r
Generator/Relu_14ReluGenerator/BiasAdd_7*
T0*9
_output_shapes'
%:#                  └
o
Generator/Neg_7NegGenerator/BiasAdd_7*
T0*9
_output_shapes'
%:#                  └
n
Generator/Relu_15ReluGenerator/Neg_7*
T0*9
_output_shapes'
%:#                  └
V
Generator/mul_7/xConst*
valueB
 *═╠╠=*
dtype0*
_output_shapes
: 
А
Generator/mul_7MulGenerator/mul_7/xGenerator/Relu_15*
T0*9
_output_shapes'
%:#                  └
~
Generator/sub_7SubGenerator/Relu_14Generator/mul_7*
T0*9
_output_shapes'
%:#                  └
╦
@Generator/down2/conv3/filters/Initializer/truncated_normal/shapeConst*%
valueB"      └      *
dtype0*
_output_shapes
:*0
_class&
$"loc:@Generator/down2/conv3/filters
╢
?Generator/down2/conv3/filters/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: *0
_class&
$"loc:@Generator/down2/conv3/filters
╕
AGenerator/down2/conv3/filters/Initializer/truncated_normal/stddevConst*
valueB
 *я[ё<*
dtype0*
_output_shapes
: *0
_class&
$"loc:@Generator/down2/conv3/filters
к
JGenerator/down2/conv3/filters/Initializer/truncated_normal/TruncatedNormalTruncatedNormal@Generator/down2/conv3/filters/Initializer/truncated_normal/shape*
seed2 *0
_class&
$"loc:@Generator/down2/conv3/filters*
T0*(
_output_shapes
:└А*
dtype0*

seed 
╣
>Generator/down2/conv3/filters/Initializer/truncated_normal/mulMulJGenerator/down2/conv3/filters/Initializer/truncated_normal/TruncatedNormalAGenerator/down2/conv3/filters/Initializer/truncated_normal/stddev*
T0*(
_output_shapes
:└А*0
_class&
$"loc:@Generator/down2/conv3/filters
з
:Generator/down2/conv3/filters/Initializer/truncated_normalAdd>Generator/down2/conv3/filters/Initializer/truncated_normal/mul?Generator/down2/conv3/filters/Initializer/truncated_normal/mean*
T0*(
_output_shapes
:└А*0
_class&
$"loc:@Generator/down2/conv3/filters
╫
Generator/down2/conv3/filters
VariableV2*
shared_name *0
_class&
$"loc:@Generator/down2/conv3/filters*(
_output_shapes
:└А*
dtype0*
shape:└А*
	container 
Ч
$Generator/down2/conv3/filters/AssignAssignGenerator/down2/conv3/filters:Generator/down2/conv3/filters/Initializer/truncated_normal*
T0*(
_output_shapes
:└А*
use_locking(*
validate_shape(*0
_class&
$"loc:@Generator/down2/conv3/filters
▓
"Generator/down2/conv3/filters/readIdentityGenerator/down2/conv3/filters*
T0*(
_output_shapes
:└А*0
_class&
$"loc:@Generator/down2/conv3/filters
о
.Generator/down2/conv3/biases/Initializer/ConstConst*
valueBА*═╠╠=*
dtype0*
_output_shapes	
:А*/
_class%
#!loc:@Generator/down2/conv3/biases
╗
Generator/down2/conv3/biases
VariableV2*
shared_name */
_class%
#!loc:@Generator/down2/conv3/biases*
_output_shapes	
:А*
dtype0*
shape:А*
	container 
√
#Generator/down2/conv3/biases/AssignAssignGenerator/down2/conv3/biases.Generator/down2/conv3/biases/Initializer/Const*
T0*
_output_shapes	
:А*
use_locking(*
validate_shape(*/
_class%
#!loc:@Generator/down2/conv3/biases
в
!Generator/down2/conv3/biases/readIdentityGenerator/down2/conv3/biases*
T0*
_output_shapes	
:А*/
_class%
#!loc:@Generator/down2/conv3/biases
Г
Generator/Conv2D_8Conv2DGenerator/sub_7"Generator/down2/conv3/filters/read*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*9
_output_shapes'
%:#                  А*
use_cudnn_on_gpu(
░
Generator/BiasAdd_8BiasAddGenerator/Conv2D_8!Generator/down2/conv3/biases/read*
T0*
data_formatNHWC*9
_output_shapes'
%:#                  А
r
Generator/Relu_16ReluGenerator/BiasAdd_8*
T0*9
_output_shapes'
%:#                  А
o
Generator/Neg_8NegGenerator/BiasAdd_8*
T0*9
_output_shapes'
%:#                  А
n
Generator/Relu_17ReluGenerator/Neg_8*
T0*9
_output_shapes'
%:#                  А
V
Generator/mul_8/xConst*
valueB
 *═╠╠=*
dtype0*
_output_shapes
: 
А
Generator/mul_8MulGenerator/mul_8/xGenerator/Relu_17*
T0*9
_output_shapes'
%:#                  А
~
Generator/sub_8SubGenerator/Relu_16Generator/mul_8*
T0*9
_output_shapes'
%:#                  А
Й
Generator/Pad_2/paddingsConst*9
value0B."                             А   *
dtype0*
_output_shapes

:
Ъ
Generator/Pad_2PadGenerator/AvgPool_1Generator/Pad_2/paddings*
T0*9
_output_shapes'
%:#                  А*
	Tpaddings0
|
Generator/add_2AddGenerator/sub_8Generator/Pad_2*
T0*9
_output_shapes'
%:#                  А
┼
Generator/AvgPool_2AvgPoolGenerator/add_2*
strides
*
ksize
*
T0*
data_formatNHWC*
paddingSAME*9
_output_shapes'
%:#                  А
╦
@Generator/down3/conv1/filters/Initializer/truncated_normal/shapeConst*%
valueB"         А  *
dtype0*
_output_shapes
:*0
_class&
$"loc:@Generator/down3/conv1/filters
╢
?Generator/down3/conv1/filters/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: *0
_class&
$"loc:@Generator/down3/conv1/filters
╕
AGenerator/down3/conv1/filters/Initializer/truncated_normal/stddevConst*
valueB
 *г┼<*
dtype0*
_output_shapes
: *0
_class&
$"loc:@Generator/down3/conv1/filters
к
JGenerator/down3/conv1/filters/Initializer/truncated_normal/TruncatedNormalTruncatedNormal@Generator/down3/conv1/filters/Initializer/truncated_normal/shape*
seed2 *0
_class&
$"loc:@Generator/down3/conv1/filters*
T0*(
_output_shapes
:АА*
dtype0*

seed 
╣
>Generator/down3/conv1/filters/Initializer/truncated_normal/mulMulJGenerator/down3/conv1/filters/Initializer/truncated_normal/TruncatedNormalAGenerator/down3/conv1/filters/Initializer/truncated_normal/stddev*
T0*(
_output_shapes
:АА*0
_class&
$"loc:@Generator/down3/conv1/filters
з
:Generator/down3/conv1/filters/Initializer/truncated_normalAdd>Generator/down3/conv1/filters/Initializer/truncated_normal/mul?Generator/down3/conv1/filters/Initializer/truncated_normal/mean*
T0*(
_output_shapes
:АА*0
_class&
$"loc:@Generator/down3/conv1/filters
╫
Generator/down3/conv1/filters
VariableV2*
shared_name *0
_class&
$"loc:@Generator/down3/conv1/filters*(
_output_shapes
:АА*
dtype0*
shape:АА*
	container 
Ч
$Generator/down3/conv1/filters/AssignAssignGenerator/down3/conv1/filters:Generator/down3/conv1/filters/Initializer/truncated_normal*
T0*(
_output_shapes
:АА*
use_locking(*
validate_shape(*0
_class&
$"loc:@Generator/down3/conv1/filters
▓
"Generator/down3/conv1/filters/readIdentityGenerator/down3/conv1/filters*
T0*(
_output_shapes
:АА*0
_class&
$"loc:@Generator/down3/conv1/filters
о
.Generator/down3/conv1/biases/Initializer/ConstConst*
valueBА*═╠╠=*
dtype0*
_output_shapes	
:А*/
_class%
#!loc:@Generator/down3/conv1/biases
╗
Generator/down3/conv1/biases
VariableV2*
shared_name */
_class%
#!loc:@Generator/down3/conv1/biases*
_output_shapes	
:А*
dtype0*
shape:А*
	container 
√
#Generator/down3/conv1/biases/AssignAssignGenerator/down3/conv1/biases.Generator/down3/conv1/biases/Initializer/Const*
T0*
_output_shapes	
:А*
use_locking(*
validate_shape(*/
_class%
#!loc:@Generator/down3/conv1/biases
в
!Generator/down3/conv1/biases/readIdentityGenerator/down3/conv1/biases*
T0*
_output_shapes	
:А*/
_class%
#!loc:@Generator/down3/conv1/biases
З
Generator/Conv2D_9Conv2DGenerator/AvgPool_2"Generator/down3/conv1/filters/read*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*9
_output_shapes'
%:#                  А*
use_cudnn_on_gpu(
░
Generator/BiasAdd_9BiasAddGenerator/Conv2D_9!Generator/down3/conv1/biases/read*
T0*
data_formatNHWC*9
_output_shapes'
%:#                  А
r
Generator/Relu_18ReluGenerator/BiasAdd_9*
T0*9
_output_shapes'
%:#                  А
o
Generator/Neg_9NegGenerator/BiasAdd_9*
T0*9
_output_shapes'
%:#                  А
n
Generator/Relu_19ReluGenerator/Neg_9*
T0*9
_output_shapes'
%:#                  А
V
Generator/mul_9/xConst*
valueB
 *═╠╠=*
dtype0*
_output_shapes
: 
А
Generator/mul_9MulGenerator/mul_9/xGenerator/Relu_19*
T0*9
_output_shapes'
%:#                  А
~
Generator/sub_9SubGenerator/Relu_18Generator/mul_9*
T0*9
_output_shapes'
%:#                  А
╦
@Generator/down3/conv2/filters/Initializer/truncated_normal/shapeConst*%
valueB"      А  А  *
dtype0*
_output_shapes
:*0
_class&
$"loc:@Generator/down3/conv2/filters
╢
?Generator/down3/conv2/filters/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: *0
_class&
$"loc:@Generator/down3/conv2/filters
╕
AGenerator/down3/conv2/filters/Initializer/truncated_normal/stddevConst*
valueB
 *г┼<*
dtype0*
_output_shapes
: *0
_class&
$"loc:@Generator/down3/conv2/filters
к
JGenerator/down3/conv2/filters/Initializer/truncated_normal/TruncatedNormalTruncatedNormal@Generator/down3/conv2/filters/Initializer/truncated_normal/shape*
seed2 *0
_class&
$"loc:@Generator/down3/conv2/filters*
T0*(
_output_shapes
:АА*
dtype0*

seed 
╣
>Generator/down3/conv2/filters/Initializer/truncated_normal/mulMulJGenerator/down3/conv2/filters/Initializer/truncated_normal/TruncatedNormalAGenerator/down3/conv2/filters/Initializer/truncated_normal/stddev*
T0*(
_output_shapes
:АА*0
_class&
$"loc:@Generator/down3/conv2/filters
з
:Generator/down3/conv2/filters/Initializer/truncated_normalAdd>Generator/down3/conv2/filters/Initializer/truncated_normal/mul?Generator/down3/conv2/filters/Initializer/truncated_normal/mean*
T0*(
_output_shapes
:АА*0
_class&
$"loc:@Generator/down3/conv2/filters
╫
Generator/down3/conv2/filters
VariableV2*
shared_name *0
_class&
$"loc:@Generator/down3/conv2/filters*(
_output_shapes
:АА*
dtype0*
shape:АА*
	container 
Ч
$Generator/down3/conv2/filters/AssignAssignGenerator/down3/conv2/filters:Generator/down3/conv2/filters/Initializer/truncated_normal*
T0*(
_output_shapes
:АА*
use_locking(*
validate_shape(*0
_class&
$"loc:@Generator/down3/conv2/filters
▓
"Generator/down3/conv2/filters/readIdentityGenerator/down3/conv2/filters*
T0*(
_output_shapes
:АА*0
_class&
$"loc:@Generator/down3/conv2/filters
о
.Generator/down3/conv2/biases/Initializer/ConstConst*
valueBА*═╠╠=*
dtype0*
_output_shapes	
:А*/
_class%
#!loc:@Generator/down3/conv2/biases
╗
Generator/down3/conv2/biases
VariableV2*
shared_name */
_class%
#!loc:@Generator/down3/conv2/biases*
_output_shapes	
:А*
dtype0*
shape:А*
	container 
√
#Generator/down3/conv2/biases/AssignAssignGenerator/down3/conv2/biases.Generator/down3/conv2/biases/Initializer/Const*
T0*
_output_shapes	
:А*
use_locking(*
validate_shape(*/
_class%
#!loc:@Generator/down3/conv2/biases
в
!Generator/down3/conv2/biases/readIdentityGenerator/down3/conv2/biases*
T0*
_output_shapes	
:А*/
_class%
#!loc:@Generator/down3/conv2/biases
Д
Generator/Conv2D_10Conv2DGenerator/sub_9"Generator/down3/conv2/filters/read*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*9
_output_shapes'
%:#                  А*
use_cudnn_on_gpu(
▓
Generator/BiasAdd_10BiasAddGenerator/Conv2D_10!Generator/down3/conv2/biases/read*
T0*
data_formatNHWC*9
_output_shapes'
%:#                  А
s
Generator/Relu_20ReluGenerator/BiasAdd_10*
T0*9
_output_shapes'
%:#                  А
q
Generator/Neg_10NegGenerator/BiasAdd_10*
T0*9
_output_shapes'
%:#                  А
o
Generator/Relu_21ReluGenerator/Neg_10*
T0*9
_output_shapes'
%:#                  А
W
Generator/mul_10/xConst*
valueB
 *═╠╠=*
dtype0*
_output_shapes
: 
В
Generator/mul_10MulGenerator/mul_10/xGenerator/Relu_21*
T0*9
_output_shapes'
%:#                  А
А
Generator/sub_10SubGenerator/Relu_20Generator/mul_10*
T0*9
_output_shapes'
%:#                  А
╦
@Generator/down3/conv3/filters/Initializer/truncated_normal/shapeConst*%
valueB"      А     *
dtype0*
_output_shapes
:*0
_class&
$"loc:@Generator/down3/conv3/filters
╢
?Generator/down3/conv3/filters/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: *0
_class&
$"loc:@Generator/down3/conv3/filters
╕
AGenerator/down3/conv3/filters/Initializer/truncated_normal/stddevConst*
valueB
 *лкк<*
dtype0*
_output_shapes
: *0
_class&
$"loc:@Generator/down3/conv3/filters
к
JGenerator/down3/conv3/filters/Initializer/truncated_normal/TruncatedNormalTruncatedNormal@Generator/down3/conv3/filters/Initializer/truncated_normal/shape*
seed2 *0
_class&
$"loc:@Generator/down3/conv3/filters*
T0*(
_output_shapes
:АА*
dtype0*

seed 
╣
>Generator/down3/conv3/filters/Initializer/truncated_normal/mulMulJGenerator/down3/conv3/filters/Initializer/truncated_normal/TruncatedNormalAGenerator/down3/conv3/filters/Initializer/truncated_normal/stddev*
T0*(
_output_shapes
:АА*0
_class&
$"loc:@Generator/down3/conv3/filters
з
:Generator/down3/conv3/filters/Initializer/truncated_normalAdd>Generator/down3/conv3/filters/Initializer/truncated_normal/mul?Generator/down3/conv3/filters/Initializer/truncated_normal/mean*
T0*(
_output_shapes
:АА*0
_class&
$"loc:@Generator/down3/conv3/filters
╫
Generator/down3/conv3/filters
VariableV2*
shared_name *0
_class&
$"loc:@Generator/down3/conv3/filters*(
_output_shapes
:АА*
dtype0*
shape:АА*
	container 
Ч
$Generator/down3/conv3/filters/AssignAssignGenerator/down3/conv3/filters:Generator/down3/conv3/filters/Initializer/truncated_normal*
T0*(
_output_shapes
:АА*
use_locking(*
validate_shape(*0
_class&
$"loc:@Generator/down3/conv3/filters
▓
"Generator/down3/conv3/filters/readIdentityGenerator/down3/conv3/filters*
T0*(
_output_shapes
:АА*0
_class&
$"loc:@Generator/down3/conv3/filters
о
.Generator/down3/conv3/biases/Initializer/ConstConst*
valueBА*═╠╠=*
dtype0*
_output_shapes	
:А*/
_class%
#!loc:@Generator/down3/conv3/biases
╗
Generator/down3/conv3/biases
VariableV2*
shared_name */
_class%
#!loc:@Generator/down3/conv3/biases*
_output_shapes	
:А*
dtype0*
shape:А*
	container 
√
#Generator/down3/conv3/biases/AssignAssignGenerator/down3/conv3/biases.Generator/down3/conv3/biases/Initializer/Const*
T0*
_output_shapes	
:А*
use_locking(*
validate_shape(*/
_class%
#!loc:@Generator/down3/conv3/biases
в
!Generator/down3/conv3/biases/readIdentityGenerator/down3/conv3/biases*
T0*
_output_shapes	
:А*/
_class%
#!loc:@Generator/down3/conv3/biases
Е
Generator/Conv2D_11Conv2DGenerator/sub_10"Generator/down3/conv3/filters/read*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*9
_output_shapes'
%:#                  А*
use_cudnn_on_gpu(
▓
Generator/BiasAdd_11BiasAddGenerator/Conv2D_11!Generator/down3/conv3/biases/read*
T0*
data_formatNHWC*9
_output_shapes'
%:#                  А
s
Generator/Relu_22ReluGenerator/BiasAdd_11*
T0*9
_output_shapes'
%:#                  А
q
Generator/Neg_11NegGenerator/BiasAdd_11*
T0*9
_output_shapes'
%:#                  А
o
Generator/Relu_23ReluGenerator/Neg_11*
T0*9
_output_shapes'
%:#                  А
W
Generator/mul_11/xConst*
valueB
 *═╠╠=*
dtype0*
_output_shapes
: 
В
Generator/mul_11MulGenerator/mul_11/xGenerator/Relu_23*
T0*9
_output_shapes'
%:#                  А
А
Generator/sub_11SubGenerator/Relu_22Generator/mul_11*
T0*9
_output_shapes'
%:#                  А
Й
Generator/Pad_3/paddingsConst*9
value0B."                                *
dtype0*
_output_shapes

:
Ъ
Generator/Pad_3PadGenerator/AvgPool_2Generator/Pad_3/paddings*
T0*9
_output_shapes'
%:#                  А*
	Tpaddings0
}
Generator/add_3AddGenerator/sub_11Generator/Pad_3*
T0*9
_output_shapes'
%:#                  А
┼
Generator/AvgPool_3AvgPoolGenerator/add_3*
strides
*
ksize
*
T0*
data_formatNHWC*
paddingSAME*9
_output_shapes'
%:#                  А
┴
;Generator/center/filters/Initializer/truncated_normal/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:*+
_class!
loc:@Generator/center/filters
м
:Generator/center/filters/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: *+
_class!
loc:@Generator/center/filters
о
<Generator/center/filters/Initializer/truncated_normal/stddevConst*
valueB
 *лкк<*
dtype0*
_output_shapes
: *+
_class!
loc:@Generator/center/filters
Ы
EGenerator/center/filters/Initializer/truncated_normal/TruncatedNormalTruncatedNormal;Generator/center/filters/Initializer/truncated_normal/shape*
seed2 *+
_class!
loc:@Generator/center/filters*
T0*(
_output_shapes
:АА*
dtype0*

seed 
е
9Generator/center/filters/Initializer/truncated_normal/mulMulEGenerator/center/filters/Initializer/truncated_normal/TruncatedNormal<Generator/center/filters/Initializer/truncated_normal/stddev*
T0*(
_output_shapes
:АА*+
_class!
loc:@Generator/center/filters
У
5Generator/center/filters/Initializer/truncated_normalAdd9Generator/center/filters/Initializer/truncated_normal/mul:Generator/center/filters/Initializer/truncated_normal/mean*
T0*(
_output_shapes
:АА*+
_class!
loc:@Generator/center/filters
═
Generator/center/filters
VariableV2*
shared_name *+
_class!
loc:@Generator/center/filters*(
_output_shapes
:АА*
dtype0*
shape:АА*
	container 
Г
Generator/center/filters/AssignAssignGenerator/center/filters5Generator/center/filters/Initializer/truncated_normal*
T0*(
_output_shapes
:АА*
use_locking(*
validate_shape(*+
_class!
loc:@Generator/center/filters
г
Generator/center/filters/readIdentityGenerator/center/filters*
T0*(
_output_shapes
:АА*+
_class!
loc:@Generator/center/filters
д
)Generator/center/biases/Initializer/ConstConst*
valueBА*═╠╠=*
dtype0*
_output_shapes	
:А**
_class 
loc:@Generator/center/biases
▒
Generator/center/biases
VariableV2*
shared_name **
_class 
loc:@Generator/center/biases*
_output_shapes	
:А*
dtype0*
shape:А*
	container 
ч
Generator/center/biases/AssignAssignGenerator/center/biases)Generator/center/biases/Initializer/Const*
T0*
_output_shapes	
:А*
use_locking(*
validate_shape(**
_class 
loc:@Generator/center/biases
У
Generator/center/biases/readIdentityGenerator/center/biases*
T0*
_output_shapes	
:А**
_class 
loc:@Generator/center/biases
Г
Generator/Conv2D_12Conv2DGenerator/AvgPool_3Generator/center/filters/read*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*9
_output_shapes'
%:#                  А*
use_cudnn_on_gpu(
н
Generator/BiasAdd_12BiasAddGenerator/Conv2D_12Generator/center/biases/read*
T0*
data_formatNHWC*9
_output_shapes'
%:#                  А
s
Generator/Relu_24ReluGenerator/BiasAdd_12*
T0*9
_output_shapes'
%:#                  А
q
Generator/Neg_12NegGenerator/BiasAdd_12*
T0*9
_output_shapes'
%:#                  А
o
Generator/Relu_25ReluGenerator/Neg_12*
T0*9
_output_shapes'
%:#                  А
W
Generator/mul_12/xConst*
valueB
 *═╠╠=*
dtype0*
_output_shapes
: 
В
Generator/mul_12MulGenerator/mul_12/xGenerator/Relu_25*
T0*9
_output_shapes'
%:#                  А
А
Generator/sub_12SubGenerator/Relu_24Generator/mul_12*
T0*9
_output_shapes'
%:#                  А
n
Generator/ResizeBilinear/sizeConst*
valueB"А   А   *
dtype0*
_output_shapes
:
д
Generator/ResizeBilinearResizeBilinearGenerator/sub_12Generator/ResizeBilinear/size*
T0*
align_corners( *)
_output_shapes
:ААА
W
Generator/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
з
Generator/concatConcatV2Generator/ResizeBilinearGenerator/add_3Generator/concat/axis*
T0*
N*)
_output_shapes
:ААА*

Tidx0
╟
>Generator/up3/conv1/filters/Initializer/truncated_normal/shapeConst*%
valueB"         А  *
dtype0*
_output_shapes
:*.
_class$
" loc:@Generator/up3/conv1/filters
▓
=Generator/up3/conv1/filters/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: *.
_class$
" loc:@Generator/up3/conv1/filters
┤
?Generator/up3/conv1/filters/Initializer/truncated_normal/stddevConst*
valueB
 *жШ<*
dtype0*
_output_shapes
: *.
_class$
" loc:@Generator/up3/conv1/filters
д
HGenerator/up3/conv1/filters/Initializer/truncated_normal/TruncatedNormalTruncatedNormal>Generator/up3/conv1/filters/Initializer/truncated_normal/shape*
seed2 *.
_class$
" loc:@Generator/up3/conv1/filters*
T0*(
_output_shapes
:АА*
dtype0*

seed 
▒
<Generator/up3/conv1/filters/Initializer/truncated_normal/mulMulHGenerator/up3/conv1/filters/Initializer/truncated_normal/TruncatedNormal?Generator/up3/conv1/filters/Initializer/truncated_normal/stddev*
T0*(
_output_shapes
:АА*.
_class$
" loc:@Generator/up3/conv1/filters
Я
8Generator/up3/conv1/filters/Initializer/truncated_normalAdd<Generator/up3/conv1/filters/Initializer/truncated_normal/mul=Generator/up3/conv1/filters/Initializer/truncated_normal/mean*
T0*(
_output_shapes
:АА*.
_class$
" loc:@Generator/up3/conv1/filters
╙
Generator/up3/conv1/filters
VariableV2*
shared_name *.
_class$
" loc:@Generator/up3/conv1/filters*(
_output_shapes
:АА*
dtype0*
shape:АА*
	container 
П
"Generator/up3/conv1/filters/AssignAssignGenerator/up3/conv1/filters8Generator/up3/conv1/filters/Initializer/truncated_normal*
T0*(
_output_shapes
:АА*
use_locking(*
validate_shape(*.
_class$
" loc:@Generator/up3/conv1/filters
м
 Generator/up3/conv1/filters/readIdentityGenerator/up3/conv1/filters*
T0*(
_output_shapes
:АА*.
_class$
" loc:@Generator/up3/conv1/filters
к
,Generator/up3/conv1/biases/Initializer/ConstConst*
valueBА*═╠╠=*
dtype0*
_output_shapes	
:А*-
_class#
!loc:@Generator/up3/conv1/biases
╖
Generator/up3/conv1/biases
VariableV2*
shared_name *-
_class#
!loc:@Generator/up3/conv1/biases*
_output_shapes	
:А*
dtype0*
shape:А*
	container 
є
!Generator/up3/conv1/biases/AssignAssignGenerator/up3/conv1/biases,Generator/up3/conv1/biases/Initializer/Const*
T0*
_output_shapes	
:А*
use_locking(*
validate_shape(*-
_class#
!loc:@Generator/up3/conv1/biases
Ь
Generator/up3/conv1/biases/readIdentityGenerator/up3/conv1/biases*
T0*
_output_shapes	
:А*-
_class#
!loc:@Generator/up3/conv1/biases
є
Generator/Conv2D_13Conv2DGenerator/concat Generator/up3/conv1/filters/read*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*)
_output_shapes
:ААА*
use_cudnn_on_gpu(
а
Generator/BiasAdd_13BiasAddGenerator/Conv2D_13Generator/up3/conv1/biases/read*
T0*
data_formatNHWC*)
_output_shapes
:ААА
c
Generator/Relu_26ReluGenerator/BiasAdd_13*
T0*)
_output_shapes
:ААА
a
Generator/Neg_13NegGenerator/BiasAdd_13*
T0*)
_output_shapes
:ААА
_
Generator/Relu_27ReluGenerator/Neg_13*
T0*)
_output_shapes
:ААА
W
Generator/mul_13/xConst*
valueB
 *═╠╠=*
dtype0*
_output_shapes
: 
r
Generator/mul_13MulGenerator/mul_13/xGenerator/Relu_27*
T0*)
_output_shapes
:ААА
p
Generator/sub_13SubGenerator/Relu_26Generator/mul_13*
T0*)
_output_shapes
:ААА
╟
>Generator/up3/conv2/filters/Initializer/truncated_normal/shapeConst*%
valueB"      А  А  *
dtype0*
_output_shapes
:*.
_class$
" loc:@Generator/up3/conv2/filters
▓
=Generator/up3/conv2/filters/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: *.
_class$
" loc:@Generator/up3/conv2/filters
┤
?Generator/up3/conv2/filters/Initializer/truncated_normal/stddevConst*
valueB
 *жШ<*
dtype0*
_output_shapes
: *.
_class$
" loc:@Generator/up3/conv2/filters
д
HGenerator/up3/conv2/filters/Initializer/truncated_normal/TruncatedNormalTruncatedNormal>Generator/up3/conv2/filters/Initializer/truncated_normal/shape*
seed2 *.
_class$
" loc:@Generator/up3/conv2/filters*
T0*(
_output_shapes
:АА*
dtype0*

seed 
▒
<Generator/up3/conv2/filters/Initializer/truncated_normal/mulMulHGenerator/up3/conv2/filters/Initializer/truncated_normal/TruncatedNormal?Generator/up3/conv2/filters/Initializer/truncated_normal/stddev*
T0*(
_output_shapes
:АА*.
_class$
" loc:@Generator/up3/conv2/filters
Я
8Generator/up3/conv2/filters/Initializer/truncated_normalAdd<Generator/up3/conv2/filters/Initializer/truncated_normal/mul=Generator/up3/conv2/filters/Initializer/truncated_normal/mean*
T0*(
_output_shapes
:АА*.
_class$
" loc:@Generator/up3/conv2/filters
╙
Generator/up3/conv2/filters
VariableV2*
shared_name *.
_class$
" loc:@Generator/up3/conv2/filters*(
_output_shapes
:АА*
dtype0*
shape:АА*
	container 
П
"Generator/up3/conv2/filters/AssignAssignGenerator/up3/conv2/filters8Generator/up3/conv2/filters/Initializer/truncated_normal*
T0*(
_output_shapes
:АА*
use_locking(*
validate_shape(*.
_class$
" loc:@Generator/up3/conv2/filters
м
 Generator/up3/conv2/filters/readIdentityGenerator/up3/conv2/filters*
T0*(
_output_shapes
:АА*.
_class$
" loc:@Generator/up3/conv2/filters
к
,Generator/up3/conv2/biases/Initializer/ConstConst*
valueBА*═╠╠=*
dtype0*
_output_shapes	
:А*-
_class#
!loc:@Generator/up3/conv2/biases
╖
Generator/up3/conv2/biases
VariableV2*
shared_name *-
_class#
!loc:@Generator/up3/conv2/biases*
_output_shapes	
:А*
dtype0*
shape:А*
	container 
є
!Generator/up3/conv2/biases/AssignAssignGenerator/up3/conv2/biases,Generator/up3/conv2/biases/Initializer/Const*
T0*
_output_shapes	
:А*
use_locking(*
validate_shape(*-
_class#
!loc:@Generator/up3/conv2/biases
Ь
Generator/up3/conv2/biases/readIdentityGenerator/up3/conv2/biases*
T0*
_output_shapes	
:А*-
_class#
!loc:@Generator/up3/conv2/biases
є
Generator/Conv2D_14Conv2DGenerator/sub_13 Generator/up3/conv2/filters/read*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*)
_output_shapes
:ААА*
use_cudnn_on_gpu(
а
Generator/BiasAdd_14BiasAddGenerator/Conv2D_14Generator/up3/conv2/biases/read*
T0*
data_formatNHWC*)
_output_shapes
:ААА
c
Generator/Relu_28ReluGenerator/BiasAdd_14*
T0*)
_output_shapes
:ААА
a
Generator/Neg_14NegGenerator/BiasAdd_14*
T0*)
_output_shapes
:ААА
_
Generator/Relu_29ReluGenerator/Neg_14*
T0*)
_output_shapes
:ААА
W
Generator/mul_14/xConst*
valueB
 *═╠╠=*
dtype0*
_output_shapes
: 
r
Generator/mul_14MulGenerator/mul_14/xGenerator/Relu_29*
T0*)
_output_shapes
:ААА
p
Generator/sub_14SubGenerator/Relu_28Generator/mul_14*
T0*)
_output_shapes
:ААА
╟
>Generator/up3/conv3/filters/Initializer/truncated_normal/shapeConst*%
valueB"      А     *
dtype0*
_output_shapes
:*.
_class$
" loc:@Generator/up3/conv3/filters
▓
=Generator/up3/conv3/filters/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: *.
_class$
" loc:@Generator/up3/conv3/filters
┤
?Generator/up3/conv3/filters/Initializer/truncated_normal/stddevConst*
valueB
 *я[ё<*
dtype0*
_output_shapes
: *.
_class$
" loc:@Generator/up3/conv3/filters
д
HGenerator/up3/conv3/filters/Initializer/truncated_normal/TruncatedNormalTruncatedNormal>Generator/up3/conv3/filters/Initializer/truncated_normal/shape*
seed2 *.
_class$
" loc:@Generator/up3/conv3/filters*
T0*(
_output_shapes
:АА*
dtype0*

seed 
▒
<Generator/up3/conv3/filters/Initializer/truncated_normal/mulMulHGenerator/up3/conv3/filters/Initializer/truncated_normal/TruncatedNormal?Generator/up3/conv3/filters/Initializer/truncated_normal/stddev*
T0*(
_output_shapes
:АА*.
_class$
" loc:@Generator/up3/conv3/filters
Я
8Generator/up3/conv3/filters/Initializer/truncated_normalAdd<Generator/up3/conv3/filters/Initializer/truncated_normal/mul=Generator/up3/conv3/filters/Initializer/truncated_normal/mean*
T0*(
_output_shapes
:АА*.
_class$
" loc:@Generator/up3/conv3/filters
╙
Generator/up3/conv3/filters
VariableV2*
shared_name *.
_class$
" loc:@Generator/up3/conv3/filters*(
_output_shapes
:АА*
dtype0*
shape:АА*
	container 
П
"Generator/up3/conv3/filters/AssignAssignGenerator/up3/conv3/filters8Generator/up3/conv3/filters/Initializer/truncated_normal*
T0*(
_output_shapes
:АА*
use_locking(*
validate_shape(*.
_class$
" loc:@Generator/up3/conv3/filters
м
 Generator/up3/conv3/filters/readIdentityGenerator/up3/conv3/filters*
T0*(
_output_shapes
:АА*.
_class$
" loc:@Generator/up3/conv3/filters
к
,Generator/up3/conv3/biases/Initializer/ConstConst*
valueBА*═╠╠=*
dtype0*
_output_shapes	
:А*-
_class#
!loc:@Generator/up3/conv3/biases
╖
Generator/up3/conv3/biases
VariableV2*
shared_name *-
_class#
!loc:@Generator/up3/conv3/biases*
_output_shapes	
:А*
dtype0*
shape:А*
	container 
є
!Generator/up3/conv3/biases/AssignAssignGenerator/up3/conv3/biases,Generator/up3/conv3/biases/Initializer/Const*
T0*
_output_shapes	
:А*
use_locking(*
validate_shape(*-
_class#
!loc:@Generator/up3/conv3/biases
Ь
Generator/up3/conv3/biases/readIdentityGenerator/up3/conv3/biases*
T0*
_output_shapes	
:А*-
_class#
!loc:@Generator/up3/conv3/biases
є
Generator/Conv2D_15Conv2DGenerator/sub_14 Generator/up3/conv3/filters/read*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*)
_output_shapes
:ААА*
use_cudnn_on_gpu(
а
Generator/BiasAdd_15BiasAddGenerator/Conv2D_15Generator/up3/conv3/biases/read*
T0*
data_formatNHWC*)
_output_shapes
:ААА
c
Generator/Relu_30ReluGenerator/BiasAdd_15*
T0*)
_output_shapes
:ААА
a
Generator/Neg_15NegGenerator/BiasAdd_15*
T0*)
_output_shapes
:ААА
_
Generator/Relu_31ReluGenerator/Neg_15*
T0*)
_output_shapes
:ААА
W
Generator/mul_15/xConst*
valueB
 *═╠╠=*
dtype0*
_output_shapes
: 
r
Generator/mul_15MulGenerator/mul_15/xGenerator/Relu_31*
T0*)
_output_shapes
:ААА
p
Generator/sub_15SubGenerator/Relu_30Generator/mul_15*
T0*)
_output_shapes
:ААА
p
Generator/ResizeBilinear_1/sizeConst*
valueB"      *
dtype0*
_output_shapes
:
и
Generator/ResizeBilinear_1ResizeBilinearGenerator/sub_15Generator/ResizeBilinear_1/size*
T0*
align_corners( *)
_output_shapes
:ААА
Y
Generator/concat_1/axisConst*
value	B :*
dtype0*
_output_shapes
: 
н
Generator/concat_1ConcatV2Generator/ResizeBilinear_1Generator/add_2Generator/concat_1/axis*
T0*
N*)
_output_shapes
:ААА*

Tidx0
╟
>Generator/up2/conv1/filters/Initializer/truncated_normal/shapeConst*%
valueB"         @  *
dtype0*
_output_shapes
:*.
_class$
" loc:@Generator/up2/conv1/filters
▓
=Generator/up2/conv1/filters/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: *.
_class$
" loc:@Generator/up2/conv1/filters
┤
?Generator/up2/conv1/filters/Initializer/truncated_normal/stddevConst*
valueB
 *╧р╫<*
dtype0*
_output_shapes
: *.
_class$
" loc:@Generator/up2/conv1/filters
д
HGenerator/up2/conv1/filters/Initializer/truncated_normal/TruncatedNormalTruncatedNormal>Generator/up2/conv1/filters/Initializer/truncated_normal/shape*
seed2 *.
_class$
" loc:@Generator/up2/conv1/filters*
T0*(
_output_shapes
:А└*
dtype0*

seed 
▒
<Generator/up2/conv1/filters/Initializer/truncated_normal/mulMulHGenerator/up2/conv1/filters/Initializer/truncated_normal/TruncatedNormal?Generator/up2/conv1/filters/Initializer/truncated_normal/stddev*
T0*(
_output_shapes
:А└*.
_class$
" loc:@Generator/up2/conv1/filters
Я
8Generator/up2/conv1/filters/Initializer/truncated_normalAdd<Generator/up2/conv1/filters/Initializer/truncated_normal/mul=Generator/up2/conv1/filters/Initializer/truncated_normal/mean*
T0*(
_output_shapes
:А└*.
_class$
" loc:@Generator/up2/conv1/filters
╙
Generator/up2/conv1/filters
VariableV2*
shared_name *.
_class$
" loc:@Generator/up2/conv1/filters*(
_output_shapes
:А└*
dtype0*
shape:А└*
	container 
П
"Generator/up2/conv1/filters/AssignAssignGenerator/up2/conv1/filters8Generator/up2/conv1/filters/Initializer/truncated_normal*
T0*(
_output_shapes
:А└*
use_locking(*
validate_shape(*.
_class$
" loc:@Generator/up2/conv1/filters
м
 Generator/up2/conv1/filters/readIdentityGenerator/up2/conv1/filters*
T0*(
_output_shapes
:А└*.
_class$
" loc:@Generator/up2/conv1/filters
к
,Generator/up2/conv1/biases/Initializer/ConstConst*
valueB└*═╠╠=*
dtype0*
_output_shapes	
:└*-
_class#
!loc:@Generator/up2/conv1/biases
╖
Generator/up2/conv1/biases
VariableV2*
shared_name *-
_class#
!loc:@Generator/up2/conv1/biases*
_output_shapes	
:└*
dtype0*
shape:└*
	container 
є
!Generator/up2/conv1/biases/AssignAssignGenerator/up2/conv1/biases,Generator/up2/conv1/biases/Initializer/Const*
T0*
_output_shapes	
:└*
use_locking(*
validate_shape(*-
_class#
!loc:@Generator/up2/conv1/biases
Ь
Generator/up2/conv1/biases/readIdentityGenerator/up2/conv1/biases*
T0*
_output_shapes	
:└*-
_class#
!loc:@Generator/up2/conv1/biases
ї
Generator/Conv2D_16Conv2DGenerator/concat_1 Generator/up2/conv1/filters/read*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*)
_output_shapes
:АА└*
use_cudnn_on_gpu(
а
Generator/BiasAdd_16BiasAddGenerator/Conv2D_16Generator/up2/conv1/biases/read*
T0*
data_formatNHWC*)
_output_shapes
:АА└
c
Generator/Relu_32ReluGenerator/BiasAdd_16*
T0*)
_output_shapes
:АА└
a
Generator/Neg_16NegGenerator/BiasAdd_16*
T0*)
_output_shapes
:АА└
_
Generator/Relu_33ReluGenerator/Neg_16*
T0*)
_output_shapes
:АА└
W
Generator/mul_16/xConst*
valueB
 *═╠╠=*
dtype0*
_output_shapes
: 
r
Generator/mul_16MulGenerator/mul_16/xGenerator/Relu_33*
T0*)
_output_shapes
:АА└
p
Generator/sub_16SubGenerator/Relu_32Generator/mul_16*
T0*)
_output_shapes
:АА└
╟
>Generator/up2/conv2/filters/Initializer/truncated_normal/shapeConst*%
valueB"      @  @  *
dtype0*
_output_shapes
:*.
_class$
" loc:@Generator/up2/conv2/filters
▓
=Generator/up2/conv2/filters/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: *.
_class$
" loc:@Generator/up2/conv2/filters
┤
?Generator/up2/conv2/filters/Initializer/truncated_normal/stddevConst*
valueB
 *╧р╫<*
dtype0*
_output_shapes
: *.
_class$
" loc:@Generator/up2/conv2/filters
д
HGenerator/up2/conv2/filters/Initializer/truncated_normal/TruncatedNormalTruncatedNormal>Generator/up2/conv2/filters/Initializer/truncated_normal/shape*
seed2 *.
_class$
" loc:@Generator/up2/conv2/filters*
T0*(
_output_shapes
:└└*
dtype0*

seed 
▒
<Generator/up2/conv2/filters/Initializer/truncated_normal/mulMulHGenerator/up2/conv2/filters/Initializer/truncated_normal/TruncatedNormal?Generator/up2/conv2/filters/Initializer/truncated_normal/stddev*
T0*(
_output_shapes
:└└*.
_class$
" loc:@Generator/up2/conv2/filters
Я
8Generator/up2/conv2/filters/Initializer/truncated_normalAdd<Generator/up2/conv2/filters/Initializer/truncated_normal/mul=Generator/up2/conv2/filters/Initializer/truncated_normal/mean*
T0*(
_output_shapes
:└└*.
_class$
" loc:@Generator/up2/conv2/filters
╙
Generator/up2/conv2/filters
VariableV2*
shared_name *.
_class$
" loc:@Generator/up2/conv2/filters*(
_output_shapes
:└└*
dtype0*
shape:└└*
	container 
П
"Generator/up2/conv2/filters/AssignAssignGenerator/up2/conv2/filters8Generator/up2/conv2/filters/Initializer/truncated_normal*
T0*(
_output_shapes
:└└*
use_locking(*
validate_shape(*.
_class$
" loc:@Generator/up2/conv2/filters
м
 Generator/up2/conv2/filters/readIdentityGenerator/up2/conv2/filters*
T0*(
_output_shapes
:└└*.
_class$
" loc:@Generator/up2/conv2/filters
к
,Generator/up2/conv2/biases/Initializer/ConstConst*
valueB└*═╠╠=*
dtype0*
_output_shapes	
:└*-
_class#
!loc:@Generator/up2/conv2/biases
╖
Generator/up2/conv2/biases
VariableV2*
shared_name *-
_class#
!loc:@Generator/up2/conv2/biases*
_output_shapes	
:└*
dtype0*
shape:└*
	container 
є
!Generator/up2/conv2/biases/AssignAssignGenerator/up2/conv2/biases,Generator/up2/conv2/biases/Initializer/Const*
T0*
_output_shapes	
:└*
use_locking(*
validate_shape(*-
_class#
!loc:@Generator/up2/conv2/biases
Ь
Generator/up2/conv2/biases/readIdentityGenerator/up2/conv2/biases*
T0*
_output_shapes	
:└*-
_class#
!loc:@Generator/up2/conv2/biases
є
Generator/Conv2D_17Conv2DGenerator/sub_16 Generator/up2/conv2/filters/read*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*)
_output_shapes
:АА└*
use_cudnn_on_gpu(
а
Generator/BiasAdd_17BiasAddGenerator/Conv2D_17Generator/up2/conv2/biases/read*
T0*
data_formatNHWC*)
_output_shapes
:АА└
c
Generator/Relu_34ReluGenerator/BiasAdd_17*
T0*)
_output_shapes
:АА└
a
Generator/Neg_17NegGenerator/BiasAdd_17*
T0*)
_output_shapes
:АА└
_
Generator/Relu_35ReluGenerator/Neg_17*
T0*)
_output_shapes
:АА└
W
Generator/mul_17/xConst*
valueB
 *═╠╠=*
dtype0*
_output_shapes
: 
r
Generator/mul_17MulGenerator/mul_17/xGenerator/Relu_35*
T0*)
_output_shapes
:АА└
p
Generator/sub_17SubGenerator/Relu_34Generator/mul_17*
T0*)
_output_shapes
:АА└
╟
>Generator/up2/conv3/filters/Initializer/truncated_normal/shapeConst*%
valueB"      @  А   *
dtype0*
_output_shapes
:*.
_class$
" loc:@Generator/up2/conv3/filters
▓
=Generator/up2/conv3/filters/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: *.
_class$
" loc:@Generator/up2/conv3/filters
┤
?Generator/up2/conv3/filters/Initializer/truncated_normal/stddevConst*
valueB
 *лк*=*
dtype0*
_output_shapes
: *.
_class$
" loc:@Generator/up2/conv3/filters
д
HGenerator/up2/conv3/filters/Initializer/truncated_normal/TruncatedNormalTruncatedNormal>Generator/up2/conv3/filters/Initializer/truncated_normal/shape*
seed2 *.
_class$
" loc:@Generator/up2/conv3/filters*
T0*(
_output_shapes
:└А*
dtype0*

seed 
▒
<Generator/up2/conv3/filters/Initializer/truncated_normal/mulMulHGenerator/up2/conv3/filters/Initializer/truncated_normal/TruncatedNormal?Generator/up2/conv3/filters/Initializer/truncated_normal/stddev*
T0*(
_output_shapes
:└А*.
_class$
" loc:@Generator/up2/conv3/filters
Я
8Generator/up2/conv3/filters/Initializer/truncated_normalAdd<Generator/up2/conv3/filters/Initializer/truncated_normal/mul=Generator/up2/conv3/filters/Initializer/truncated_normal/mean*
T0*(
_output_shapes
:└А*.
_class$
" loc:@Generator/up2/conv3/filters
╙
Generator/up2/conv3/filters
VariableV2*
shared_name *.
_class$
" loc:@Generator/up2/conv3/filters*(
_output_shapes
:└А*
dtype0*
shape:└А*
	container 
П
"Generator/up2/conv3/filters/AssignAssignGenerator/up2/conv3/filters8Generator/up2/conv3/filters/Initializer/truncated_normal*
T0*(
_output_shapes
:└А*
use_locking(*
validate_shape(*.
_class$
" loc:@Generator/up2/conv3/filters
м
 Generator/up2/conv3/filters/readIdentityGenerator/up2/conv3/filters*
T0*(
_output_shapes
:└А*.
_class$
" loc:@Generator/up2/conv3/filters
к
,Generator/up2/conv3/biases/Initializer/ConstConst*
valueBА*═╠╠=*
dtype0*
_output_shapes	
:А*-
_class#
!loc:@Generator/up2/conv3/biases
╖
Generator/up2/conv3/biases
VariableV2*
shared_name *-
_class#
!loc:@Generator/up2/conv3/biases*
_output_shapes	
:А*
dtype0*
shape:А*
	container 
є
!Generator/up2/conv3/biases/AssignAssignGenerator/up2/conv3/biases,Generator/up2/conv3/biases/Initializer/Const*
T0*
_output_shapes	
:А*
use_locking(*
validate_shape(*-
_class#
!loc:@Generator/up2/conv3/biases
Ь
Generator/up2/conv3/biases/readIdentityGenerator/up2/conv3/biases*
T0*
_output_shapes	
:А*-
_class#
!loc:@Generator/up2/conv3/biases
є
Generator/Conv2D_18Conv2DGenerator/sub_17 Generator/up2/conv3/filters/read*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*)
_output_shapes
:ААА*
use_cudnn_on_gpu(
а
Generator/BiasAdd_18BiasAddGenerator/Conv2D_18Generator/up2/conv3/biases/read*
T0*
data_formatNHWC*)
_output_shapes
:ААА
c
Generator/Relu_36ReluGenerator/BiasAdd_18*
T0*)
_output_shapes
:ААА
a
Generator/Neg_18NegGenerator/BiasAdd_18*
T0*)
_output_shapes
:ААА
_
Generator/Relu_37ReluGenerator/Neg_18*
T0*)
_output_shapes
:ААА
W
Generator/mul_18/xConst*
valueB
 *═╠╠=*
dtype0*
_output_shapes
: 
r
Generator/mul_18MulGenerator/mul_18/xGenerator/Relu_37*
T0*)
_output_shapes
:ААА
p
Generator/sub_18SubGenerator/Relu_36Generator/mul_18*
T0*)
_output_shapes
:ААА
p
Generator/ResizeBilinear_2/sizeConst*
valueB"      *
dtype0*
_output_shapes
:
и
Generator/ResizeBilinear_2ResizeBilinearGenerator/sub_18Generator/ResizeBilinear_2/size*
T0*
align_corners( *)
_output_shapes
:ААА
Y
Generator/concat_2/axisConst*
value	B :*
dtype0*
_output_shapes
: 
н
Generator/concat_2ConcatV2Generator/ResizeBilinear_2Generator/add_1Generator/concat_2/axis*
T0*
N*)
_output_shapes
:ААА*

Tidx0
╟
>Generator/up1/conv1/filters/Initializer/truncated_normal/shapeConst*%
valueB"         а   *
dtype0*
_output_shapes
:*.
_class$
" loc:@Generator/up1/conv1/filters
▓
=Generator/up1/conv1/filters/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: *.
_class$
" loc:@Generator/up1/conv1/filters
┤
?Generator/up1/conv1/filters/Initializer/truncated_normal/stddevConst*
valueB
 *ж=*
dtype0*
_output_shapes
: *.
_class$
" loc:@Generator/up1/conv1/filters
д
HGenerator/up1/conv1/filters/Initializer/truncated_normal/TruncatedNormalTruncatedNormal>Generator/up1/conv1/filters/Initializer/truncated_normal/shape*
seed2 *.
_class$
" loc:@Generator/up1/conv1/filters*
T0*(
_output_shapes
:Аа*
dtype0*

seed 
▒
<Generator/up1/conv1/filters/Initializer/truncated_normal/mulMulHGenerator/up1/conv1/filters/Initializer/truncated_normal/TruncatedNormal?Generator/up1/conv1/filters/Initializer/truncated_normal/stddev*
T0*(
_output_shapes
:Аа*.
_class$
" loc:@Generator/up1/conv1/filters
Я
8Generator/up1/conv1/filters/Initializer/truncated_normalAdd<Generator/up1/conv1/filters/Initializer/truncated_normal/mul=Generator/up1/conv1/filters/Initializer/truncated_normal/mean*
T0*(
_output_shapes
:Аа*.
_class$
" loc:@Generator/up1/conv1/filters
╙
Generator/up1/conv1/filters
VariableV2*
shared_name *.
_class$
" loc:@Generator/up1/conv1/filters*(
_output_shapes
:Аа*
dtype0*
shape:Аа*
	container 
П
"Generator/up1/conv1/filters/AssignAssignGenerator/up1/conv1/filters8Generator/up1/conv1/filters/Initializer/truncated_normal*
T0*(
_output_shapes
:Аа*
use_locking(*
validate_shape(*.
_class$
" loc:@Generator/up1/conv1/filters
м
 Generator/up1/conv1/filters/readIdentityGenerator/up1/conv1/filters*
T0*(
_output_shapes
:Аа*.
_class$
" loc:@Generator/up1/conv1/filters
к
,Generator/up1/conv1/biases/Initializer/ConstConst*
valueBа*═╠╠=*
dtype0*
_output_shapes	
:а*-
_class#
!loc:@Generator/up1/conv1/biases
╖
Generator/up1/conv1/biases
VariableV2*
shared_name *-
_class#
!loc:@Generator/up1/conv1/biases*
_output_shapes	
:а*
dtype0*
shape:а*
	container 
є
!Generator/up1/conv1/biases/AssignAssignGenerator/up1/conv1/biases,Generator/up1/conv1/biases/Initializer/Const*
T0*
_output_shapes	
:а*
use_locking(*
validate_shape(*-
_class#
!loc:@Generator/up1/conv1/biases
Ь
Generator/up1/conv1/biases/readIdentityGenerator/up1/conv1/biases*
T0*
_output_shapes	
:а*-
_class#
!loc:@Generator/up1/conv1/biases
ї
Generator/Conv2D_19Conv2DGenerator/concat_2 Generator/up1/conv1/filters/read*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*)
_output_shapes
:ААа*
use_cudnn_on_gpu(
а
Generator/BiasAdd_19BiasAddGenerator/Conv2D_19Generator/up1/conv1/biases/read*
T0*
data_formatNHWC*)
_output_shapes
:ААа
c
Generator/Relu_38ReluGenerator/BiasAdd_19*
T0*)
_output_shapes
:ААа
a
Generator/Neg_19NegGenerator/BiasAdd_19*
T0*)
_output_shapes
:ААа
_
Generator/Relu_39ReluGenerator/Neg_19*
T0*)
_output_shapes
:ААа
W
Generator/mul_19/xConst*
valueB
 *═╠╠=*
dtype0*
_output_shapes
: 
r
Generator/mul_19MulGenerator/mul_19/xGenerator/Relu_39*
T0*)
_output_shapes
:ААа
p
Generator/sub_19SubGenerator/Relu_38Generator/mul_19*
T0*)
_output_shapes
:ААа
╟
>Generator/up1/conv2/filters/Initializer/truncated_normal/shapeConst*%
valueB"      а   а   *
dtype0*
_output_shapes
:*.
_class$
" loc:@Generator/up1/conv2/filters
▓
=Generator/up1/conv2/filters/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: *.
_class$
" loc:@Generator/up1/conv2/filters
┤
?Generator/up1/conv2/filters/Initializer/truncated_normal/stddevConst*
valueB
 *ж=*
dtype0*
_output_shapes
: *.
_class$
" loc:@Generator/up1/conv2/filters
д
HGenerator/up1/conv2/filters/Initializer/truncated_normal/TruncatedNormalTruncatedNormal>Generator/up1/conv2/filters/Initializer/truncated_normal/shape*
seed2 *.
_class$
" loc:@Generator/up1/conv2/filters*
T0*(
_output_shapes
:аа*
dtype0*

seed 
▒
<Generator/up1/conv2/filters/Initializer/truncated_normal/mulMulHGenerator/up1/conv2/filters/Initializer/truncated_normal/TruncatedNormal?Generator/up1/conv2/filters/Initializer/truncated_normal/stddev*
T0*(
_output_shapes
:аа*.
_class$
" loc:@Generator/up1/conv2/filters
Я
8Generator/up1/conv2/filters/Initializer/truncated_normalAdd<Generator/up1/conv2/filters/Initializer/truncated_normal/mul=Generator/up1/conv2/filters/Initializer/truncated_normal/mean*
T0*(
_output_shapes
:аа*.
_class$
" loc:@Generator/up1/conv2/filters
╙
Generator/up1/conv2/filters
VariableV2*
shared_name *.
_class$
" loc:@Generator/up1/conv2/filters*(
_output_shapes
:аа*
dtype0*
shape:аа*
	container 
П
"Generator/up1/conv2/filters/AssignAssignGenerator/up1/conv2/filters8Generator/up1/conv2/filters/Initializer/truncated_normal*
T0*(
_output_shapes
:аа*
use_locking(*
validate_shape(*.
_class$
" loc:@Generator/up1/conv2/filters
м
 Generator/up1/conv2/filters/readIdentityGenerator/up1/conv2/filters*
T0*(
_output_shapes
:аа*.
_class$
" loc:@Generator/up1/conv2/filters
к
,Generator/up1/conv2/biases/Initializer/ConstConst*
valueBа*═╠╠=*
dtype0*
_output_shapes	
:а*-
_class#
!loc:@Generator/up1/conv2/biases
╖
Generator/up1/conv2/biases
VariableV2*
shared_name *-
_class#
!loc:@Generator/up1/conv2/biases*
_output_shapes	
:а*
dtype0*
shape:а*
	container 
є
!Generator/up1/conv2/biases/AssignAssignGenerator/up1/conv2/biases,Generator/up1/conv2/biases/Initializer/Const*
T0*
_output_shapes	
:а*
use_locking(*
validate_shape(*-
_class#
!loc:@Generator/up1/conv2/biases
Ь
Generator/up1/conv2/biases/readIdentityGenerator/up1/conv2/biases*
T0*
_output_shapes	
:а*-
_class#
!loc:@Generator/up1/conv2/biases
є
Generator/Conv2D_20Conv2DGenerator/sub_19 Generator/up1/conv2/filters/read*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*)
_output_shapes
:ААа*
use_cudnn_on_gpu(
а
Generator/BiasAdd_20BiasAddGenerator/Conv2D_20Generator/up1/conv2/biases/read*
T0*
data_formatNHWC*)
_output_shapes
:ААа
c
Generator/Relu_40ReluGenerator/BiasAdd_20*
T0*)
_output_shapes
:ААа
a
Generator/Neg_20NegGenerator/BiasAdd_20*
T0*)
_output_shapes
:ААа
_
Generator/Relu_41ReluGenerator/Neg_20*
T0*)
_output_shapes
:ААа
W
Generator/mul_20/xConst*
valueB
 *═╠╠=*
dtype0*
_output_shapes
: 
r
Generator/mul_20MulGenerator/mul_20/xGenerator/Relu_41*
T0*)
_output_shapes
:ААа
p
Generator/sub_20SubGenerator/Relu_40Generator/mul_20*
T0*)
_output_shapes
:ААа
╟
>Generator/up1/conv3/filters/Initializer/truncated_normal/shapeConst*%
valueB"      а   @   *
dtype0*
_output_shapes
:*.
_class$
" loc:@Generator/up1/conv3/filters
▓
=Generator/up1/conv3/filters/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: *.
_class$
" loc:@Generator/up1/conv3/filters
┤
?Generator/up1/conv3/filters/Initializer/truncated_normal/stddevConst*
valueB
 *я[q=*
dtype0*
_output_shapes
: *.
_class$
" loc:@Generator/up1/conv3/filters
г
HGenerator/up1/conv3/filters/Initializer/truncated_normal/TruncatedNormalTruncatedNormal>Generator/up1/conv3/filters/Initializer/truncated_normal/shape*
seed2 *.
_class$
" loc:@Generator/up1/conv3/filters*
T0*'
_output_shapes
:а@*
dtype0*

seed 
░
<Generator/up1/conv3/filters/Initializer/truncated_normal/mulMulHGenerator/up1/conv3/filters/Initializer/truncated_normal/TruncatedNormal?Generator/up1/conv3/filters/Initializer/truncated_normal/stddev*
T0*'
_output_shapes
:а@*.
_class$
" loc:@Generator/up1/conv3/filters
Ю
8Generator/up1/conv3/filters/Initializer/truncated_normalAdd<Generator/up1/conv3/filters/Initializer/truncated_normal/mul=Generator/up1/conv3/filters/Initializer/truncated_normal/mean*
T0*'
_output_shapes
:а@*.
_class$
" loc:@Generator/up1/conv3/filters
╤
Generator/up1/conv3/filters
VariableV2*
shared_name *.
_class$
" loc:@Generator/up1/conv3/filters*'
_output_shapes
:а@*
dtype0*
shape:а@*
	container 
О
"Generator/up1/conv3/filters/AssignAssignGenerator/up1/conv3/filters8Generator/up1/conv3/filters/Initializer/truncated_normal*
T0*'
_output_shapes
:а@*
use_locking(*
validate_shape(*.
_class$
" loc:@Generator/up1/conv3/filters
л
 Generator/up1/conv3/filters/readIdentityGenerator/up1/conv3/filters*
T0*'
_output_shapes
:а@*.
_class$
" loc:@Generator/up1/conv3/filters
и
,Generator/up1/conv3/biases/Initializer/ConstConst*
valueB@*═╠╠=*
dtype0*
_output_shapes
:@*-
_class#
!loc:@Generator/up1/conv3/biases
╡
Generator/up1/conv3/biases
VariableV2*
shared_name *-
_class#
!loc:@Generator/up1/conv3/biases*
_output_shapes
:@*
dtype0*
shape:@*
	container 
Є
!Generator/up1/conv3/biases/AssignAssignGenerator/up1/conv3/biases,Generator/up1/conv3/biases/Initializer/Const*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*-
_class#
!loc:@Generator/up1/conv3/biases
Ы
Generator/up1/conv3/biases/readIdentityGenerator/up1/conv3/biases*
T0*
_output_shapes
:@*-
_class#
!loc:@Generator/up1/conv3/biases
Є
Generator/Conv2D_21Conv2DGenerator/sub_20 Generator/up1/conv3/filters/read*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*(
_output_shapes
:АА@*
use_cudnn_on_gpu(
Я
Generator/BiasAdd_21BiasAddGenerator/Conv2D_21Generator/up1/conv3/biases/read*
T0*
data_formatNHWC*(
_output_shapes
:АА@
b
Generator/Relu_42ReluGenerator/BiasAdd_21*
T0*(
_output_shapes
:АА@
`
Generator/Neg_21NegGenerator/BiasAdd_21*
T0*(
_output_shapes
:АА@
^
Generator/Relu_43ReluGenerator/Neg_21*
T0*(
_output_shapes
:АА@
W
Generator/mul_21/xConst*
valueB
 *═╠╠=*
dtype0*
_output_shapes
: 
q
Generator/mul_21MulGenerator/mul_21/xGenerator/Relu_43*
T0*(
_output_shapes
:АА@
o
Generator/sub_21SubGenerator/Relu_42Generator/mul_21*
T0*(
_output_shapes
:АА@
p
Generator/ResizeBilinear_3/sizeConst*
valueB"      *
dtype0*
_output_shapes
:
з
Generator/ResizeBilinear_3ResizeBilinearGenerator/sub_21Generator/ResizeBilinear_3/size*
T0*
align_corners( *(
_output_shapes
:АА@
Y
Generator/concat_3/axisConst*
value	B :*
dtype0*
_output_shapes
: 
л
Generator/concat_3ConcatV2Generator/ResizeBilinear_3Generator/addGenerator/concat_3/axis*
T0*
N*)
_output_shapes
:ААА*

Tidx0
╟
>Generator/up0/conv1/filters/Initializer/truncated_normal/shapeConst*%
valueB"      А   P   *
dtype0*
_output_shapes
:*.
_class$
" loc:@Generator/up0/conv1/filters
▓
=Generator/up0/conv1/filters/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: *.
_class$
" loc:@Generator/up0/conv1/filters
┤
?Generator/up0/conv1/filters/Initializer/truncated_normal/stddevConst*
valueB
 *╧рW=*
dtype0*
_output_shapes
: *.
_class$
" loc:@Generator/up0/conv1/filters
г
HGenerator/up0/conv1/filters/Initializer/truncated_normal/TruncatedNormalTruncatedNormal>Generator/up0/conv1/filters/Initializer/truncated_normal/shape*
seed2 *.
_class$
" loc:@Generator/up0/conv1/filters*
T0*'
_output_shapes
:АP*
dtype0*

seed 
░
<Generator/up0/conv1/filters/Initializer/truncated_normal/mulMulHGenerator/up0/conv1/filters/Initializer/truncated_normal/TruncatedNormal?Generator/up0/conv1/filters/Initializer/truncated_normal/stddev*
T0*'
_output_shapes
:АP*.
_class$
" loc:@Generator/up0/conv1/filters
Ю
8Generator/up0/conv1/filters/Initializer/truncated_normalAdd<Generator/up0/conv1/filters/Initializer/truncated_normal/mul=Generator/up0/conv1/filters/Initializer/truncated_normal/mean*
T0*'
_output_shapes
:АP*.
_class$
" loc:@Generator/up0/conv1/filters
╤
Generator/up0/conv1/filters
VariableV2*
shared_name *.
_class$
" loc:@Generator/up0/conv1/filters*'
_output_shapes
:АP*
dtype0*
shape:АP*
	container 
О
"Generator/up0/conv1/filters/AssignAssignGenerator/up0/conv1/filters8Generator/up0/conv1/filters/Initializer/truncated_normal*
T0*'
_output_shapes
:АP*
use_locking(*
validate_shape(*.
_class$
" loc:@Generator/up0/conv1/filters
л
 Generator/up0/conv1/filters/readIdentityGenerator/up0/conv1/filters*
T0*'
_output_shapes
:АP*.
_class$
" loc:@Generator/up0/conv1/filters
и
,Generator/up0/conv1/biases/Initializer/ConstConst*
valueBP*═╠╠=*
dtype0*
_output_shapes
:P*-
_class#
!loc:@Generator/up0/conv1/biases
╡
Generator/up0/conv1/biases
VariableV2*
shared_name *-
_class#
!loc:@Generator/up0/conv1/biases*
_output_shapes
:P*
dtype0*
shape:P*
	container 
Є
!Generator/up0/conv1/biases/AssignAssignGenerator/up0/conv1/biases,Generator/up0/conv1/biases/Initializer/Const*
T0*
_output_shapes
:P*
use_locking(*
validate_shape(*-
_class#
!loc:@Generator/up0/conv1/biases
Ы
Generator/up0/conv1/biases/readIdentityGenerator/up0/conv1/biases*
T0*
_output_shapes
:P*-
_class#
!loc:@Generator/up0/conv1/biases
Ї
Generator/Conv2D_22Conv2DGenerator/concat_3 Generator/up0/conv1/filters/read*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*(
_output_shapes
:ААP*
use_cudnn_on_gpu(
Я
Generator/BiasAdd_22BiasAddGenerator/Conv2D_22Generator/up0/conv1/biases/read*
T0*
data_formatNHWC*(
_output_shapes
:ААP
b
Generator/Relu_44ReluGenerator/BiasAdd_22*
T0*(
_output_shapes
:ААP
`
Generator/Neg_22NegGenerator/BiasAdd_22*
T0*(
_output_shapes
:ААP
^
Generator/Relu_45ReluGenerator/Neg_22*
T0*(
_output_shapes
:ААP
W
Generator/mul_22/xConst*
valueB
 *═╠╠=*
dtype0*
_output_shapes
: 
q
Generator/mul_22MulGenerator/mul_22/xGenerator/Relu_45*
T0*(
_output_shapes
:ААP
o
Generator/sub_22SubGenerator/Relu_44Generator/mul_22*
T0*(
_output_shapes
:ААP
╟
>Generator/up0/conv2/filters/Initializer/truncated_normal/shapeConst*%
valueB"      P   P   *
dtype0*
_output_shapes
:*.
_class$
" loc:@Generator/up0/conv2/filters
▓
=Generator/up0/conv2/filters/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: *.
_class$
" loc:@Generator/up0/conv2/filters
┤
?Generator/up0/conv2/filters/Initializer/truncated_normal/stddevConst*
valueB
 *╧рW=*
dtype0*
_output_shapes
: *.
_class$
" loc:@Generator/up0/conv2/filters
в
HGenerator/up0/conv2/filters/Initializer/truncated_normal/TruncatedNormalTruncatedNormal>Generator/up0/conv2/filters/Initializer/truncated_normal/shape*
seed2 *.
_class$
" loc:@Generator/up0/conv2/filters*
T0*&
_output_shapes
:PP*
dtype0*

seed 
п
<Generator/up0/conv2/filters/Initializer/truncated_normal/mulMulHGenerator/up0/conv2/filters/Initializer/truncated_normal/TruncatedNormal?Generator/up0/conv2/filters/Initializer/truncated_normal/stddev*
T0*&
_output_shapes
:PP*.
_class$
" loc:@Generator/up0/conv2/filters
Э
8Generator/up0/conv2/filters/Initializer/truncated_normalAdd<Generator/up0/conv2/filters/Initializer/truncated_normal/mul=Generator/up0/conv2/filters/Initializer/truncated_normal/mean*
T0*&
_output_shapes
:PP*.
_class$
" loc:@Generator/up0/conv2/filters
╧
Generator/up0/conv2/filters
VariableV2*
shared_name *.
_class$
" loc:@Generator/up0/conv2/filters*&
_output_shapes
:PP*
dtype0*
shape:PP*
	container 
Н
"Generator/up0/conv2/filters/AssignAssignGenerator/up0/conv2/filters8Generator/up0/conv2/filters/Initializer/truncated_normal*
T0*&
_output_shapes
:PP*
use_locking(*
validate_shape(*.
_class$
" loc:@Generator/up0/conv2/filters
к
 Generator/up0/conv2/filters/readIdentityGenerator/up0/conv2/filters*
T0*&
_output_shapes
:PP*.
_class$
" loc:@Generator/up0/conv2/filters
и
,Generator/up0/conv2/biases/Initializer/ConstConst*
valueBP*═╠╠=*
dtype0*
_output_shapes
:P*-
_class#
!loc:@Generator/up0/conv2/biases
╡
Generator/up0/conv2/biases
VariableV2*
shared_name *-
_class#
!loc:@Generator/up0/conv2/biases*
_output_shapes
:P*
dtype0*
shape:P*
	container 
Є
!Generator/up0/conv2/biases/AssignAssignGenerator/up0/conv2/biases,Generator/up0/conv2/biases/Initializer/Const*
T0*
_output_shapes
:P*
use_locking(*
validate_shape(*-
_class#
!loc:@Generator/up0/conv2/biases
Ы
Generator/up0/conv2/biases/readIdentityGenerator/up0/conv2/biases*
T0*
_output_shapes
:P*-
_class#
!loc:@Generator/up0/conv2/biases
Є
Generator/Conv2D_23Conv2DGenerator/sub_22 Generator/up0/conv2/filters/read*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*(
_output_shapes
:ААP*
use_cudnn_on_gpu(
Я
Generator/BiasAdd_23BiasAddGenerator/Conv2D_23Generator/up0/conv2/biases/read*
T0*
data_formatNHWC*(
_output_shapes
:ААP
b
Generator/Relu_46ReluGenerator/BiasAdd_23*
T0*(
_output_shapes
:ААP
`
Generator/Neg_23NegGenerator/BiasAdd_23*
T0*(
_output_shapes
:ААP
^
Generator/Relu_47ReluGenerator/Neg_23*
T0*(
_output_shapes
:ААP
W
Generator/mul_23/xConst*
valueB
 *═╠╠=*
dtype0*
_output_shapes
: 
q
Generator/mul_23MulGenerator/mul_23/xGenerator/Relu_47*
T0*(
_output_shapes
:ААP
o
Generator/sub_23SubGenerator/Relu_46Generator/mul_23*
T0*(
_output_shapes
:ААP
╟
>Generator/up0/conv3/filters/Initializer/truncated_normal/shapeConst*%
valueB"      P       *
dtype0*
_output_shapes
:*.
_class$
" loc:@Generator/up0/conv3/filters
▓
=Generator/up0/conv3/filters/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: *.
_class$
" loc:@Generator/up0/conv3/filters
┤
?Generator/up0/conv3/filters/Initializer/truncated_normal/stddevConst*
valueB
 *лкк=*
dtype0*
_output_shapes
: *.
_class$
" loc:@Generator/up0/conv3/filters
в
HGenerator/up0/conv3/filters/Initializer/truncated_normal/TruncatedNormalTruncatedNormal>Generator/up0/conv3/filters/Initializer/truncated_normal/shape*
seed2 *.
_class$
" loc:@Generator/up0/conv3/filters*
T0*&
_output_shapes
:P *
dtype0*

seed 
п
<Generator/up0/conv3/filters/Initializer/truncated_normal/mulMulHGenerator/up0/conv3/filters/Initializer/truncated_normal/TruncatedNormal?Generator/up0/conv3/filters/Initializer/truncated_normal/stddev*
T0*&
_output_shapes
:P *.
_class$
" loc:@Generator/up0/conv3/filters
Э
8Generator/up0/conv3/filters/Initializer/truncated_normalAdd<Generator/up0/conv3/filters/Initializer/truncated_normal/mul=Generator/up0/conv3/filters/Initializer/truncated_normal/mean*
T0*&
_output_shapes
:P *.
_class$
" loc:@Generator/up0/conv3/filters
╧
Generator/up0/conv3/filters
VariableV2*
shared_name *.
_class$
" loc:@Generator/up0/conv3/filters*&
_output_shapes
:P *
dtype0*
shape:P *
	container 
Н
"Generator/up0/conv3/filters/AssignAssignGenerator/up0/conv3/filters8Generator/up0/conv3/filters/Initializer/truncated_normal*
T0*&
_output_shapes
:P *
use_locking(*
validate_shape(*.
_class$
" loc:@Generator/up0/conv3/filters
к
 Generator/up0/conv3/filters/readIdentityGenerator/up0/conv3/filters*
T0*&
_output_shapes
:P *.
_class$
" loc:@Generator/up0/conv3/filters
и
,Generator/up0/conv3/biases/Initializer/ConstConst*
valueB *═╠╠=*
dtype0*
_output_shapes
: *-
_class#
!loc:@Generator/up0/conv3/biases
╡
Generator/up0/conv3/biases
VariableV2*
shared_name *-
_class#
!loc:@Generator/up0/conv3/biases*
_output_shapes
: *
dtype0*
shape: *
	container 
Є
!Generator/up0/conv3/biases/AssignAssignGenerator/up0/conv3/biases,Generator/up0/conv3/biases/Initializer/Const*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*-
_class#
!loc:@Generator/up0/conv3/biases
Ы
Generator/up0/conv3/biases/readIdentityGenerator/up0/conv3/biases*
T0*
_output_shapes
: *-
_class#
!loc:@Generator/up0/conv3/biases
Є
Generator/Conv2D_24Conv2DGenerator/sub_23 Generator/up0/conv3/filters/read*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*(
_output_shapes
:АА *
use_cudnn_on_gpu(
Я
Generator/BiasAdd_24BiasAddGenerator/Conv2D_24Generator/up0/conv3/biases/read*
T0*
data_formatNHWC*(
_output_shapes
:АА 
b
Generator/Relu_48ReluGenerator/BiasAdd_24*
T0*(
_output_shapes
:АА 
`
Generator/Neg_24NegGenerator/BiasAdd_24*
T0*(
_output_shapes
:АА 
^
Generator/Relu_49ReluGenerator/Neg_24*
T0*(
_output_shapes
:АА 
W
Generator/mul_24/xConst*
valueB
 *═╠╠=*
dtype0*
_output_shapes
: 
q
Generator/mul_24MulGenerator/mul_24/xGenerator/Relu_49*
T0*(
_output_shapes
:АА 
o
Generator/sub_24SubGenerator/Relu_48Generator/mul_24*
T0*(
_output_shapes
:АА 
╔
?Generator/last_layer/filters/Initializer/truncated_normal/shapeConst*%
valueB"             *
dtype0*
_output_shapes
:*/
_class%
#!loc:@Generator/last_layer/filters
┤
>Generator/last_layer/filters/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: */
_class%
#!loc:@Generator/last_layer/filters
╢
@Generator/last_layer/filters/Initializer/truncated_normal/stddevConst*
valueB
 *я[ё>*
dtype0*
_output_shapes
: */
_class%
#!loc:@Generator/last_layer/filters
е
IGenerator/last_layer/filters/Initializer/truncated_normal/TruncatedNormalTruncatedNormal?Generator/last_layer/filters/Initializer/truncated_normal/shape*
seed2 */
_class%
#!loc:@Generator/last_layer/filters*
T0*&
_output_shapes
: *
dtype0*

seed 
│
=Generator/last_layer/filters/Initializer/truncated_normal/mulMulIGenerator/last_layer/filters/Initializer/truncated_normal/TruncatedNormal@Generator/last_layer/filters/Initializer/truncated_normal/stddev*
T0*&
_output_shapes
: */
_class%
#!loc:@Generator/last_layer/filters
б
9Generator/last_layer/filters/Initializer/truncated_normalAdd=Generator/last_layer/filters/Initializer/truncated_normal/mul>Generator/last_layer/filters/Initializer/truncated_normal/mean*
T0*&
_output_shapes
: */
_class%
#!loc:@Generator/last_layer/filters
╤
Generator/last_layer/filters
VariableV2*
shared_name */
_class%
#!loc:@Generator/last_layer/filters*&
_output_shapes
: *
dtype0*
shape: *
	container 
С
#Generator/last_layer/filters/AssignAssignGenerator/last_layer/filters9Generator/last_layer/filters/Initializer/truncated_normal*
T0*&
_output_shapes
: *
use_locking(*
validate_shape(*/
_class%
#!loc:@Generator/last_layer/filters
н
!Generator/last_layer/filters/readIdentityGenerator/last_layer/filters*
T0*&
_output_shapes
: */
_class%
#!loc:@Generator/last_layer/filters
к
-Generator/last_layer/biases/Initializer/ConstConst*
valueB*═╠╠=*
dtype0*
_output_shapes
:*.
_class$
" loc:@Generator/last_layer/biases
╖
Generator/last_layer/biases
VariableV2*
shared_name *.
_class$
" loc:@Generator/last_layer/biases*
_output_shapes
:*
dtype0*
shape:*
	container 
Ў
"Generator/last_layer/biases/AssignAssignGenerator/last_layer/biases-Generator/last_layer/biases/Initializer/Const*
T0*
_output_shapes
:*
use_locking(*
validate_shape(*.
_class$
" loc:@Generator/last_layer/biases
Ю
 Generator/last_layer/biases/readIdentityGenerator/last_layer/biases*
T0*
_output_shapes
:*.
_class$
" loc:@Generator/last_layer/biases
є
Generator/Conv2D_25Conv2DGenerator/sub_24!Generator/last_layer/filters/read*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*(
_output_shapes
:АА*
use_cudnn_on_gpu(
а
Generator/BiasAdd_25BiasAddGenerator/Conv2D_25 Generator/last_layer/biases/read*
T0*
data_formatNHWC*(
_output_shapes
:АА
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
╪
save/SaveV2/tensor_namesConst*Л
valueБB■4BGenerator/center/biasesBGenerator/center/filtersBGenerator/down0/conv1/biasesBGenerator/down0/conv1/filtersBGenerator/down0/conv2/biasesBGenerator/down0/conv2/filtersBGenerator/down0/conv3/biasesBGenerator/down0/conv3/filtersBGenerator/down1/conv1/biasesBGenerator/down1/conv1/filtersBGenerator/down1/conv2/biasesBGenerator/down1/conv2/filtersBGenerator/down1/conv3/biasesBGenerator/down1/conv3/filtersBGenerator/down2/conv1/biasesBGenerator/down2/conv1/filtersBGenerator/down2/conv2/biasesBGenerator/down2/conv2/filtersBGenerator/down2/conv3/biasesBGenerator/down2/conv3/filtersBGenerator/down3/conv1/biasesBGenerator/down3/conv1/filtersBGenerator/down3/conv2/biasesBGenerator/down3/conv2/filtersBGenerator/down3/conv3/biasesBGenerator/down3/conv3/filtersBGenerator/last_layer/biasesBGenerator/last_layer/filtersBGenerator/up0/conv1/biasesBGenerator/up0/conv1/filtersBGenerator/up0/conv2/biasesBGenerator/up0/conv2/filtersBGenerator/up0/conv3/biasesBGenerator/up0/conv3/filtersBGenerator/up1/conv1/biasesBGenerator/up1/conv1/filtersBGenerator/up1/conv2/biasesBGenerator/up1/conv2/filtersBGenerator/up1/conv3/biasesBGenerator/up1/conv3/filtersBGenerator/up2/conv1/biasesBGenerator/up2/conv1/filtersBGenerator/up2/conv2/biasesBGenerator/up2/conv2/filtersBGenerator/up2/conv3/biasesBGenerator/up2/conv3/filtersBGenerator/up3/conv1/biasesBGenerator/up3/conv1/filtersBGenerator/up3/conv2/biasesBGenerator/up3/conv2/filtersBGenerator/up3/conv3/biasesBGenerator/up3/conv3/filters*
dtype0*
_output_shapes
:4
╦
save/SaveV2/shape_and_slicesConst*{
valuerBp4B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:4
У
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesGenerator/center/biasesGenerator/center/filtersGenerator/down0/conv1/biasesGenerator/down0/conv1/filtersGenerator/down0/conv2/biasesGenerator/down0/conv2/filtersGenerator/down0/conv3/biasesGenerator/down0/conv3/filtersGenerator/down1/conv1/biasesGenerator/down1/conv1/filtersGenerator/down1/conv2/biasesGenerator/down1/conv2/filtersGenerator/down1/conv3/biasesGenerator/down1/conv3/filtersGenerator/down2/conv1/biasesGenerator/down2/conv1/filtersGenerator/down2/conv2/biasesGenerator/down2/conv2/filtersGenerator/down2/conv3/biasesGenerator/down2/conv3/filtersGenerator/down3/conv1/biasesGenerator/down3/conv1/filtersGenerator/down3/conv2/biasesGenerator/down3/conv2/filtersGenerator/down3/conv3/biasesGenerator/down3/conv3/filtersGenerator/last_layer/biasesGenerator/last_layer/filtersGenerator/up0/conv1/biasesGenerator/up0/conv1/filtersGenerator/up0/conv2/biasesGenerator/up0/conv2/filtersGenerator/up0/conv3/biasesGenerator/up0/conv3/filtersGenerator/up1/conv1/biasesGenerator/up1/conv1/filtersGenerator/up1/conv2/biasesGenerator/up1/conv2/filtersGenerator/up1/conv3/biasesGenerator/up1/conv3/filtersGenerator/up2/conv1/biasesGenerator/up2/conv1/filtersGenerator/up2/conv2/biasesGenerator/up2/conv2/filtersGenerator/up2/conv3/biasesGenerator/up2/conv3/filtersGenerator/up3/conv1/biasesGenerator/up3/conv1/filtersGenerator/up3/conv2/biasesGenerator/up3/conv2/filtersGenerator/up3/conv3/biasesGenerator/up3/conv3/filters*B
dtypes8
624
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_output_shapes
: *
_class
loc:@save/Const
█
save/RestoreV2/tensor_namesConst*Л
valueБB■4BGenerator/center/biasesBGenerator/center/filtersBGenerator/down0/conv1/biasesBGenerator/down0/conv1/filtersBGenerator/down0/conv2/biasesBGenerator/down0/conv2/filtersBGenerator/down0/conv3/biasesBGenerator/down0/conv3/filtersBGenerator/down1/conv1/biasesBGenerator/down1/conv1/filtersBGenerator/down1/conv2/biasesBGenerator/down1/conv2/filtersBGenerator/down1/conv3/biasesBGenerator/down1/conv3/filtersBGenerator/down2/conv1/biasesBGenerator/down2/conv1/filtersBGenerator/down2/conv2/biasesBGenerator/down2/conv2/filtersBGenerator/down2/conv3/biasesBGenerator/down2/conv3/filtersBGenerator/down3/conv1/biasesBGenerator/down3/conv1/filtersBGenerator/down3/conv2/biasesBGenerator/down3/conv2/filtersBGenerator/down3/conv3/biasesBGenerator/down3/conv3/filtersBGenerator/last_layer/biasesBGenerator/last_layer/filtersBGenerator/up0/conv1/biasesBGenerator/up0/conv1/filtersBGenerator/up0/conv2/biasesBGenerator/up0/conv2/filtersBGenerator/up0/conv3/biasesBGenerator/up0/conv3/filtersBGenerator/up1/conv1/biasesBGenerator/up1/conv1/filtersBGenerator/up1/conv2/biasesBGenerator/up1/conv2/filtersBGenerator/up1/conv3/biasesBGenerator/up1/conv3/filtersBGenerator/up2/conv1/biasesBGenerator/up2/conv1/filtersBGenerator/up2/conv2/biasesBGenerator/up2/conv2/filtersBGenerator/up2/conv3/biasesBGenerator/up2/conv3/filtersBGenerator/up3/conv1/biasesBGenerator/up3/conv1/filtersBGenerator/up3/conv2/biasesBGenerator/up3/conv2/filtersBGenerator/up3/conv3/biasesBGenerator/up3/conv3/filters*
dtype0*
_output_shapes
:4
╬
save/RestoreV2/shape_and_slicesConst*{
valuerBp4B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:4
Т
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*B
dtypes8
624*ц
_output_shapes╙
╨::::::::::::::::::::::::::::::::::::::::::::::::::::
╣
save/AssignAssignGenerator/center/biasessave/RestoreV2*
T0*
_output_shapes	
:А*
use_locking(*
validate_shape(**
_class 
loc:@Generator/center/biases
╠
save/Assign_1AssignGenerator/center/filterssave/RestoreV2:1*
T0*(
_output_shapes
:АА*
use_locking(*
validate_shape(*+
_class!
loc:@Generator/center/filters
╞
save/Assign_2AssignGenerator/down0/conv1/biasessave/RestoreV2:2*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*/
_class%
#!loc:@Generator/down0/conv1/biases
╘
save/Assign_3AssignGenerator/down0/conv1/filterssave/RestoreV2:3*
T0*&
_output_shapes
: *
use_locking(*
validate_shape(*0
_class&
$"loc:@Generator/down0/conv1/filters
╞
save/Assign_4AssignGenerator/down0/conv2/biasessave/RestoreV2:4*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*/
_class%
#!loc:@Generator/down0/conv2/biases
╘
save/Assign_5AssignGenerator/down0/conv2/filterssave/RestoreV2:5*
T0*&
_output_shapes
:  *
use_locking(*
validate_shape(*0
_class&
$"loc:@Generator/down0/conv2/filters
╞
save/Assign_6AssignGenerator/down0/conv3/biasessave/RestoreV2:6*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*/
_class%
#!loc:@Generator/down0/conv3/biases
╘
save/Assign_7AssignGenerator/down0/conv3/filterssave/RestoreV2:7*
T0*&
_output_shapes
: @*
use_locking(*
validate_shape(*0
_class&
$"loc:@Generator/down0/conv3/filters
╞
save/Assign_8AssignGenerator/down1/conv1/biasessave/RestoreV2:8*
T0*
_output_shapes
:`*
use_locking(*
validate_shape(*/
_class%
#!loc:@Generator/down1/conv1/biases
╘
save/Assign_9AssignGenerator/down1/conv1/filterssave/RestoreV2:9*
T0*&
_output_shapes
:@`*
use_locking(*
validate_shape(*0
_class&
$"loc:@Generator/down1/conv1/filters
╚
save/Assign_10AssignGenerator/down1/conv2/biasessave/RestoreV2:10*
T0*
_output_shapes
:`*
use_locking(*
validate_shape(*/
_class%
#!loc:@Generator/down1/conv2/biases
╓
save/Assign_11AssignGenerator/down1/conv2/filterssave/RestoreV2:11*
T0*&
_output_shapes
:``*
use_locking(*
validate_shape(*0
_class&
$"loc:@Generator/down1/conv2/filters
╔
save/Assign_12AssignGenerator/down1/conv3/biasessave/RestoreV2:12*
T0*
_output_shapes	
:А*
use_locking(*
validate_shape(*/
_class%
#!loc:@Generator/down1/conv3/biases
╫
save/Assign_13AssignGenerator/down1/conv3/filterssave/RestoreV2:13*
T0*'
_output_shapes
:`А*
use_locking(*
validate_shape(*0
_class&
$"loc:@Generator/down1/conv3/filters
╔
save/Assign_14AssignGenerator/down2/conv1/biasessave/RestoreV2:14*
T0*
_output_shapes	
:└*
use_locking(*
validate_shape(*/
_class%
#!loc:@Generator/down2/conv1/biases
╪
save/Assign_15AssignGenerator/down2/conv1/filterssave/RestoreV2:15*
T0*(
_output_shapes
:А└*
use_locking(*
validate_shape(*0
_class&
$"loc:@Generator/down2/conv1/filters
╔
save/Assign_16AssignGenerator/down2/conv2/biasessave/RestoreV2:16*
T0*
_output_shapes	
:└*
use_locking(*
validate_shape(*/
_class%
#!loc:@Generator/down2/conv2/biases
╪
save/Assign_17AssignGenerator/down2/conv2/filterssave/RestoreV2:17*
T0*(
_output_shapes
:└└*
use_locking(*
validate_shape(*0
_class&
$"loc:@Generator/down2/conv2/filters
╔
save/Assign_18AssignGenerator/down2/conv3/biasessave/RestoreV2:18*
T0*
_output_shapes	
:А*
use_locking(*
validate_shape(*/
_class%
#!loc:@Generator/down2/conv3/biases
╪
save/Assign_19AssignGenerator/down2/conv3/filterssave/RestoreV2:19*
T0*(
_output_shapes
:└А*
use_locking(*
validate_shape(*0
_class&
$"loc:@Generator/down2/conv3/filters
╔
save/Assign_20AssignGenerator/down3/conv1/biasessave/RestoreV2:20*
T0*
_output_shapes	
:А*
use_locking(*
validate_shape(*/
_class%
#!loc:@Generator/down3/conv1/biases
╪
save/Assign_21AssignGenerator/down3/conv1/filterssave/RestoreV2:21*
T0*(
_output_shapes
:АА*
use_locking(*
validate_shape(*0
_class&
$"loc:@Generator/down3/conv1/filters
╔
save/Assign_22AssignGenerator/down3/conv2/biasessave/RestoreV2:22*
T0*
_output_shapes	
:А*
use_locking(*
validate_shape(*/
_class%
#!loc:@Generator/down3/conv2/biases
╪
save/Assign_23AssignGenerator/down3/conv2/filterssave/RestoreV2:23*
T0*(
_output_shapes
:АА*
use_locking(*
validate_shape(*0
_class&
$"loc:@Generator/down3/conv2/filters
╔
save/Assign_24AssignGenerator/down3/conv3/biasessave/RestoreV2:24*
T0*
_output_shapes	
:А*
use_locking(*
validate_shape(*/
_class%
#!loc:@Generator/down3/conv3/biases
╪
save/Assign_25AssignGenerator/down3/conv3/filterssave/RestoreV2:25*
T0*(
_output_shapes
:АА*
use_locking(*
validate_shape(*0
_class&
$"loc:@Generator/down3/conv3/filters
╞
save/Assign_26AssignGenerator/last_layer/biasessave/RestoreV2:26*
T0*
_output_shapes
:*
use_locking(*
validate_shape(*.
_class$
" loc:@Generator/last_layer/biases
╘
save/Assign_27AssignGenerator/last_layer/filterssave/RestoreV2:27*
T0*&
_output_shapes
: *
use_locking(*
validate_shape(*/
_class%
#!loc:@Generator/last_layer/filters
─
save/Assign_28AssignGenerator/up0/conv1/biasessave/RestoreV2:28*
T0*
_output_shapes
:P*
use_locking(*
validate_shape(*-
_class#
!loc:@Generator/up0/conv1/biases
╙
save/Assign_29AssignGenerator/up0/conv1/filterssave/RestoreV2:29*
T0*'
_output_shapes
:АP*
use_locking(*
validate_shape(*.
_class$
" loc:@Generator/up0/conv1/filters
─
save/Assign_30AssignGenerator/up0/conv2/biasessave/RestoreV2:30*
T0*
_output_shapes
:P*
use_locking(*
validate_shape(*-
_class#
!loc:@Generator/up0/conv2/biases
╥
save/Assign_31AssignGenerator/up0/conv2/filterssave/RestoreV2:31*
T0*&
_output_shapes
:PP*
use_locking(*
validate_shape(*.
_class$
" loc:@Generator/up0/conv2/filters
─
save/Assign_32AssignGenerator/up0/conv3/biasessave/RestoreV2:32*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*-
_class#
!loc:@Generator/up0/conv3/biases
╥
save/Assign_33AssignGenerator/up0/conv3/filterssave/RestoreV2:33*
T0*&
_output_shapes
:P *
use_locking(*
validate_shape(*.
_class$
" loc:@Generator/up0/conv3/filters
┼
save/Assign_34AssignGenerator/up1/conv1/biasessave/RestoreV2:34*
T0*
_output_shapes	
:а*
use_locking(*
validate_shape(*-
_class#
!loc:@Generator/up1/conv1/biases
╘
save/Assign_35AssignGenerator/up1/conv1/filterssave/RestoreV2:35*
T0*(
_output_shapes
:Аа*
use_locking(*
validate_shape(*.
_class$
" loc:@Generator/up1/conv1/filters
┼
save/Assign_36AssignGenerator/up1/conv2/biasessave/RestoreV2:36*
T0*
_output_shapes	
:а*
use_locking(*
validate_shape(*-
_class#
!loc:@Generator/up1/conv2/biases
╘
save/Assign_37AssignGenerator/up1/conv2/filterssave/RestoreV2:37*
T0*(
_output_shapes
:аа*
use_locking(*
validate_shape(*.
_class$
" loc:@Generator/up1/conv2/filters
─
save/Assign_38AssignGenerator/up1/conv3/biasessave/RestoreV2:38*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*-
_class#
!loc:@Generator/up1/conv3/biases
╙
save/Assign_39AssignGenerator/up1/conv3/filterssave/RestoreV2:39*
T0*'
_output_shapes
:а@*
use_locking(*
validate_shape(*.
_class$
" loc:@Generator/up1/conv3/filters
┼
save/Assign_40AssignGenerator/up2/conv1/biasessave/RestoreV2:40*
T0*
_output_shapes	
:└*
use_locking(*
validate_shape(*-
_class#
!loc:@Generator/up2/conv1/biases
╘
save/Assign_41AssignGenerator/up2/conv1/filterssave/RestoreV2:41*
T0*(
_output_shapes
:А└*
use_locking(*
validate_shape(*.
_class$
" loc:@Generator/up2/conv1/filters
┼
save/Assign_42AssignGenerator/up2/conv2/biasessave/RestoreV2:42*
T0*
_output_shapes	
:└*
use_locking(*
validate_shape(*-
_class#
!loc:@Generator/up2/conv2/biases
╘
save/Assign_43AssignGenerator/up2/conv2/filterssave/RestoreV2:43*
T0*(
_output_shapes
:└└*
use_locking(*
validate_shape(*.
_class$
" loc:@Generator/up2/conv2/filters
┼
save/Assign_44AssignGenerator/up2/conv3/biasessave/RestoreV2:44*
T0*
_output_shapes	
:А*
use_locking(*
validate_shape(*-
_class#
!loc:@Generator/up2/conv3/biases
╘
save/Assign_45AssignGenerator/up2/conv3/filterssave/RestoreV2:45*
T0*(
_output_shapes
:└А*
use_locking(*
validate_shape(*.
_class$
" loc:@Generator/up2/conv3/filters
┼
save/Assign_46AssignGenerator/up3/conv1/biasessave/RestoreV2:46*
T0*
_output_shapes	
:А*
use_locking(*
validate_shape(*-
_class#
!loc:@Generator/up3/conv1/biases
╘
save/Assign_47AssignGenerator/up3/conv1/filterssave/RestoreV2:47*
T0*(
_output_shapes
:АА*
use_locking(*
validate_shape(*.
_class$
" loc:@Generator/up3/conv1/filters
┼
save/Assign_48AssignGenerator/up3/conv2/biasessave/RestoreV2:48*
T0*
_output_shapes	
:А*
use_locking(*
validate_shape(*-
_class#
!loc:@Generator/up3/conv2/biases
╘
save/Assign_49AssignGenerator/up3/conv2/filterssave/RestoreV2:49*
T0*(
_output_shapes
:АА*
use_locking(*
validate_shape(*.
_class$
" loc:@Generator/up3/conv2/filters
┼
save/Assign_50AssignGenerator/up3/conv3/biasessave/RestoreV2:50*
T0*
_output_shapes	
:А*
use_locking(*
validate_shape(*-
_class#
!loc:@Generator/up3/conv3/biases
╘
save/Assign_51AssignGenerator/up3/conv3/filterssave/RestoreV2:51*
T0*(
_output_shapes
:АА*
use_locking(*
validate_shape(*.
_class$
" loc:@Generator/up3/conv3/filters
А
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_3^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_39^save/Assign_4^save/Assign_40^save/Assign_41^save/Assign_42^save/Assign_43^save/Assign_44^save/Assign_45^save/Assign_46^save/Assign_47^save/Assign_48^save/Assign_49^save/Assign_5^save/Assign_50^save/Assign_51^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
R
save_1/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
Ж
save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_13135e0c017b4964ac019ccf7363c9a0/part*
dtype0*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
N*
	separator *
_output_shapes
: 
S
save_1/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
^
save_1/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
Е
save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards*
_output_shapes
: 
┌
save_1/SaveV2/tensor_namesConst*Л
valueБB■4BGenerator/center/biasesBGenerator/center/filtersBGenerator/down0/conv1/biasesBGenerator/down0/conv1/filtersBGenerator/down0/conv2/biasesBGenerator/down0/conv2/filtersBGenerator/down0/conv3/biasesBGenerator/down0/conv3/filtersBGenerator/down1/conv1/biasesBGenerator/down1/conv1/filtersBGenerator/down1/conv2/biasesBGenerator/down1/conv2/filtersBGenerator/down1/conv3/biasesBGenerator/down1/conv3/filtersBGenerator/down2/conv1/biasesBGenerator/down2/conv1/filtersBGenerator/down2/conv2/biasesBGenerator/down2/conv2/filtersBGenerator/down2/conv3/biasesBGenerator/down2/conv3/filtersBGenerator/down3/conv1/biasesBGenerator/down3/conv1/filtersBGenerator/down3/conv2/biasesBGenerator/down3/conv2/filtersBGenerator/down3/conv3/biasesBGenerator/down3/conv3/filtersBGenerator/last_layer/biasesBGenerator/last_layer/filtersBGenerator/up0/conv1/biasesBGenerator/up0/conv1/filtersBGenerator/up0/conv2/biasesBGenerator/up0/conv2/filtersBGenerator/up0/conv3/biasesBGenerator/up0/conv3/filtersBGenerator/up1/conv1/biasesBGenerator/up1/conv1/filtersBGenerator/up1/conv2/biasesBGenerator/up1/conv2/filtersBGenerator/up1/conv3/biasesBGenerator/up1/conv3/filtersBGenerator/up2/conv1/biasesBGenerator/up2/conv1/filtersBGenerator/up2/conv2/biasesBGenerator/up2/conv2/filtersBGenerator/up2/conv3/biasesBGenerator/up2/conv3/filtersBGenerator/up3/conv1/biasesBGenerator/up3/conv1/filtersBGenerator/up3/conv2/biasesBGenerator/up3/conv2/filtersBGenerator/up3/conv3/biasesBGenerator/up3/conv3/filters*
dtype0*
_output_shapes
:4
═
save_1/SaveV2/shape_and_slicesConst*{
valuerBp4B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:4
е
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesGenerator/center/biasesGenerator/center/filtersGenerator/down0/conv1/biasesGenerator/down0/conv1/filtersGenerator/down0/conv2/biasesGenerator/down0/conv2/filtersGenerator/down0/conv3/biasesGenerator/down0/conv3/filtersGenerator/down1/conv1/biasesGenerator/down1/conv1/filtersGenerator/down1/conv2/biasesGenerator/down1/conv2/filtersGenerator/down1/conv3/biasesGenerator/down1/conv3/filtersGenerator/down2/conv1/biasesGenerator/down2/conv1/filtersGenerator/down2/conv2/biasesGenerator/down2/conv2/filtersGenerator/down2/conv3/biasesGenerator/down2/conv3/filtersGenerator/down3/conv1/biasesGenerator/down3/conv1/filtersGenerator/down3/conv2/biasesGenerator/down3/conv2/filtersGenerator/down3/conv3/biasesGenerator/down3/conv3/filtersGenerator/last_layer/biasesGenerator/last_layer/filtersGenerator/up0/conv1/biasesGenerator/up0/conv1/filtersGenerator/up0/conv2/biasesGenerator/up0/conv2/filtersGenerator/up0/conv3/biasesGenerator/up0/conv3/filtersGenerator/up1/conv1/biasesGenerator/up1/conv1/filtersGenerator/up1/conv2/biasesGenerator/up1/conv2/filtersGenerator/up1/conv3/biasesGenerator/up1/conv3/filtersGenerator/up2/conv1/biasesGenerator/up2/conv1/filtersGenerator/up2/conv2/biasesGenerator/up2/conv2/filtersGenerator/up2/conv3/biasesGenerator/up2/conv3/filtersGenerator/up3/conv1/biasesGenerator/up3/conv1/filtersGenerator/up3/conv2/biasesGenerator/up3/conv2/filtersGenerator/up3/conv3/biasesGenerator/up3/conv3/filters*B
dtypes8
624
Щ
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2*
T0*
_output_shapes
: *)
_class
loc:@save_1/ShardedFilename
г
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency*

axis *
T0*
N*
_output_shapes
:
Г
save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const*
delete_old_dirs(
В
save_1/IdentityIdentitysave_1/Const^save_1/MergeV2Checkpoints^save_1/control_dependency*
T0*
_output_shapes
: 
▌
save_1/RestoreV2/tensor_namesConst*Л
valueБB■4BGenerator/center/biasesBGenerator/center/filtersBGenerator/down0/conv1/biasesBGenerator/down0/conv1/filtersBGenerator/down0/conv2/biasesBGenerator/down0/conv2/filtersBGenerator/down0/conv3/biasesBGenerator/down0/conv3/filtersBGenerator/down1/conv1/biasesBGenerator/down1/conv1/filtersBGenerator/down1/conv2/biasesBGenerator/down1/conv2/filtersBGenerator/down1/conv3/biasesBGenerator/down1/conv3/filtersBGenerator/down2/conv1/biasesBGenerator/down2/conv1/filtersBGenerator/down2/conv2/biasesBGenerator/down2/conv2/filtersBGenerator/down2/conv3/biasesBGenerator/down2/conv3/filtersBGenerator/down3/conv1/biasesBGenerator/down3/conv1/filtersBGenerator/down3/conv2/biasesBGenerator/down3/conv2/filtersBGenerator/down3/conv3/biasesBGenerator/down3/conv3/filtersBGenerator/last_layer/biasesBGenerator/last_layer/filtersBGenerator/up0/conv1/biasesBGenerator/up0/conv1/filtersBGenerator/up0/conv2/biasesBGenerator/up0/conv2/filtersBGenerator/up0/conv3/biasesBGenerator/up0/conv3/filtersBGenerator/up1/conv1/biasesBGenerator/up1/conv1/filtersBGenerator/up1/conv2/biasesBGenerator/up1/conv2/filtersBGenerator/up1/conv3/biasesBGenerator/up1/conv3/filtersBGenerator/up2/conv1/biasesBGenerator/up2/conv1/filtersBGenerator/up2/conv2/biasesBGenerator/up2/conv2/filtersBGenerator/up2/conv3/biasesBGenerator/up2/conv3/filtersBGenerator/up3/conv1/biasesBGenerator/up3/conv1/filtersBGenerator/up3/conv2/biasesBGenerator/up3/conv2/filtersBGenerator/up3/conv3/biasesBGenerator/up3/conv3/filters*
dtype0*
_output_shapes
:4
╨
!save_1/RestoreV2/shape_and_slicesConst*{
valuerBp4B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:4
Ъ
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*B
dtypes8
624*ц
_output_shapes╙
╨::::::::::::::::::::::::::::::::::::::::::::::::::::
╜
save_1/AssignAssignGenerator/center/biasessave_1/RestoreV2*
T0*
_output_shapes	
:А*
use_locking(*
validate_shape(**
_class 
loc:@Generator/center/biases
╨
save_1/Assign_1AssignGenerator/center/filterssave_1/RestoreV2:1*
T0*(
_output_shapes
:АА*
use_locking(*
validate_shape(*+
_class!
loc:@Generator/center/filters
╩
save_1/Assign_2AssignGenerator/down0/conv1/biasessave_1/RestoreV2:2*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*/
_class%
#!loc:@Generator/down0/conv1/biases
╪
save_1/Assign_3AssignGenerator/down0/conv1/filterssave_1/RestoreV2:3*
T0*&
_output_shapes
: *
use_locking(*
validate_shape(*0
_class&
$"loc:@Generator/down0/conv1/filters
╩
save_1/Assign_4AssignGenerator/down0/conv2/biasessave_1/RestoreV2:4*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*/
_class%
#!loc:@Generator/down0/conv2/biases
╪
save_1/Assign_5AssignGenerator/down0/conv2/filterssave_1/RestoreV2:5*
T0*&
_output_shapes
:  *
use_locking(*
validate_shape(*0
_class&
$"loc:@Generator/down0/conv2/filters
╩
save_1/Assign_6AssignGenerator/down0/conv3/biasessave_1/RestoreV2:6*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*/
_class%
#!loc:@Generator/down0/conv3/biases
╪
save_1/Assign_7AssignGenerator/down0/conv3/filterssave_1/RestoreV2:7*
T0*&
_output_shapes
: @*
use_locking(*
validate_shape(*0
_class&
$"loc:@Generator/down0/conv3/filters
╩
save_1/Assign_8AssignGenerator/down1/conv1/biasessave_1/RestoreV2:8*
T0*
_output_shapes
:`*
use_locking(*
validate_shape(*/
_class%
#!loc:@Generator/down1/conv1/biases
╪
save_1/Assign_9AssignGenerator/down1/conv1/filterssave_1/RestoreV2:9*
T0*&
_output_shapes
:@`*
use_locking(*
validate_shape(*0
_class&
$"loc:@Generator/down1/conv1/filters
╠
save_1/Assign_10AssignGenerator/down1/conv2/biasessave_1/RestoreV2:10*
T0*
_output_shapes
:`*
use_locking(*
validate_shape(*/
_class%
#!loc:@Generator/down1/conv2/biases
┌
save_1/Assign_11AssignGenerator/down1/conv2/filterssave_1/RestoreV2:11*
T0*&
_output_shapes
:``*
use_locking(*
validate_shape(*0
_class&
$"loc:@Generator/down1/conv2/filters
═
save_1/Assign_12AssignGenerator/down1/conv3/biasessave_1/RestoreV2:12*
T0*
_output_shapes	
:А*
use_locking(*
validate_shape(*/
_class%
#!loc:@Generator/down1/conv3/biases
█
save_1/Assign_13AssignGenerator/down1/conv3/filterssave_1/RestoreV2:13*
T0*'
_output_shapes
:`А*
use_locking(*
validate_shape(*0
_class&
$"loc:@Generator/down1/conv3/filters
═
save_1/Assign_14AssignGenerator/down2/conv1/biasessave_1/RestoreV2:14*
T0*
_output_shapes	
:└*
use_locking(*
validate_shape(*/
_class%
#!loc:@Generator/down2/conv1/biases
▄
save_1/Assign_15AssignGenerator/down2/conv1/filterssave_1/RestoreV2:15*
T0*(
_output_shapes
:А└*
use_locking(*
validate_shape(*0
_class&
$"loc:@Generator/down2/conv1/filters
═
save_1/Assign_16AssignGenerator/down2/conv2/biasessave_1/RestoreV2:16*
T0*
_output_shapes	
:└*
use_locking(*
validate_shape(*/
_class%
#!loc:@Generator/down2/conv2/biases
▄
save_1/Assign_17AssignGenerator/down2/conv2/filterssave_1/RestoreV2:17*
T0*(
_output_shapes
:└└*
use_locking(*
validate_shape(*0
_class&
$"loc:@Generator/down2/conv2/filters
═
save_1/Assign_18AssignGenerator/down2/conv3/biasessave_1/RestoreV2:18*
T0*
_output_shapes	
:А*
use_locking(*
validate_shape(*/
_class%
#!loc:@Generator/down2/conv3/biases
▄
save_1/Assign_19AssignGenerator/down2/conv3/filterssave_1/RestoreV2:19*
T0*(
_output_shapes
:└А*
use_locking(*
validate_shape(*0
_class&
$"loc:@Generator/down2/conv3/filters
═
save_1/Assign_20AssignGenerator/down3/conv1/biasessave_1/RestoreV2:20*
T0*
_output_shapes	
:А*
use_locking(*
validate_shape(*/
_class%
#!loc:@Generator/down3/conv1/biases
▄
save_1/Assign_21AssignGenerator/down3/conv1/filterssave_1/RestoreV2:21*
T0*(
_output_shapes
:АА*
use_locking(*
validate_shape(*0
_class&
$"loc:@Generator/down3/conv1/filters
═
save_1/Assign_22AssignGenerator/down3/conv2/biasessave_1/RestoreV2:22*
T0*
_output_shapes	
:А*
use_locking(*
validate_shape(*/
_class%
#!loc:@Generator/down3/conv2/biases
▄
save_1/Assign_23AssignGenerator/down3/conv2/filterssave_1/RestoreV2:23*
T0*(
_output_shapes
:АА*
use_locking(*
validate_shape(*0
_class&
$"loc:@Generator/down3/conv2/filters
═
save_1/Assign_24AssignGenerator/down3/conv3/biasessave_1/RestoreV2:24*
T0*
_output_shapes	
:А*
use_locking(*
validate_shape(*/
_class%
#!loc:@Generator/down3/conv3/biases
▄
save_1/Assign_25AssignGenerator/down3/conv3/filterssave_1/RestoreV2:25*
T0*(
_output_shapes
:АА*
use_locking(*
validate_shape(*0
_class&
$"loc:@Generator/down3/conv3/filters
╩
save_1/Assign_26AssignGenerator/last_layer/biasessave_1/RestoreV2:26*
T0*
_output_shapes
:*
use_locking(*
validate_shape(*.
_class$
" loc:@Generator/last_layer/biases
╪
save_1/Assign_27AssignGenerator/last_layer/filterssave_1/RestoreV2:27*
T0*&
_output_shapes
: *
use_locking(*
validate_shape(*/
_class%
#!loc:@Generator/last_layer/filters
╚
save_1/Assign_28AssignGenerator/up0/conv1/biasessave_1/RestoreV2:28*
T0*
_output_shapes
:P*
use_locking(*
validate_shape(*-
_class#
!loc:@Generator/up0/conv1/biases
╫
save_1/Assign_29AssignGenerator/up0/conv1/filterssave_1/RestoreV2:29*
T0*'
_output_shapes
:АP*
use_locking(*
validate_shape(*.
_class$
" loc:@Generator/up0/conv1/filters
╚
save_1/Assign_30AssignGenerator/up0/conv2/biasessave_1/RestoreV2:30*
T0*
_output_shapes
:P*
use_locking(*
validate_shape(*-
_class#
!loc:@Generator/up0/conv2/biases
╓
save_1/Assign_31AssignGenerator/up0/conv2/filterssave_1/RestoreV2:31*
T0*&
_output_shapes
:PP*
use_locking(*
validate_shape(*.
_class$
" loc:@Generator/up0/conv2/filters
╚
save_1/Assign_32AssignGenerator/up0/conv3/biasessave_1/RestoreV2:32*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*-
_class#
!loc:@Generator/up0/conv3/biases
╓
save_1/Assign_33AssignGenerator/up0/conv3/filterssave_1/RestoreV2:33*
T0*&
_output_shapes
:P *
use_locking(*
validate_shape(*.
_class$
" loc:@Generator/up0/conv3/filters
╔
save_1/Assign_34AssignGenerator/up1/conv1/biasessave_1/RestoreV2:34*
T0*
_output_shapes	
:а*
use_locking(*
validate_shape(*-
_class#
!loc:@Generator/up1/conv1/biases
╪
save_1/Assign_35AssignGenerator/up1/conv1/filterssave_1/RestoreV2:35*
T0*(
_output_shapes
:Аа*
use_locking(*
validate_shape(*.
_class$
" loc:@Generator/up1/conv1/filters
╔
save_1/Assign_36AssignGenerator/up1/conv2/biasessave_1/RestoreV2:36*
T0*
_output_shapes	
:а*
use_locking(*
validate_shape(*-
_class#
!loc:@Generator/up1/conv2/biases
╪
save_1/Assign_37AssignGenerator/up1/conv2/filterssave_1/RestoreV2:37*
T0*(
_output_shapes
:аа*
use_locking(*
validate_shape(*.
_class$
" loc:@Generator/up1/conv2/filters
╚
save_1/Assign_38AssignGenerator/up1/conv3/biasessave_1/RestoreV2:38*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*-
_class#
!loc:@Generator/up1/conv3/biases
╫
save_1/Assign_39AssignGenerator/up1/conv3/filterssave_1/RestoreV2:39*
T0*'
_output_shapes
:а@*
use_locking(*
validate_shape(*.
_class$
" loc:@Generator/up1/conv3/filters
╔
save_1/Assign_40AssignGenerator/up2/conv1/biasessave_1/RestoreV2:40*
T0*
_output_shapes	
:└*
use_locking(*
validate_shape(*-
_class#
!loc:@Generator/up2/conv1/biases
╪
save_1/Assign_41AssignGenerator/up2/conv1/filterssave_1/RestoreV2:41*
T0*(
_output_shapes
:А└*
use_locking(*
validate_shape(*.
_class$
" loc:@Generator/up2/conv1/filters
╔
save_1/Assign_42AssignGenerator/up2/conv2/biasessave_1/RestoreV2:42*
T0*
_output_shapes	
:└*
use_locking(*
validate_shape(*-
_class#
!loc:@Generator/up2/conv2/biases
╪
save_1/Assign_43AssignGenerator/up2/conv2/filterssave_1/RestoreV2:43*
T0*(
_output_shapes
:└└*
use_locking(*
validate_shape(*.
_class$
" loc:@Generator/up2/conv2/filters
╔
save_1/Assign_44AssignGenerator/up2/conv3/biasessave_1/RestoreV2:44*
T0*
_output_shapes	
:А*
use_locking(*
validate_shape(*-
_class#
!loc:@Generator/up2/conv3/biases
╪
save_1/Assign_45AssignGenerator/up2/conv3/filterssave_1/RestoreV2:45*
T0*(
_output_shapes
:└А*
use_locking(*
validate_shape(*.
_class$
" loc:@Generator/up2/conv3/filters
╔
save_1/Assign_46AssignGenerator/up3/conv1/biasessave_1/RestoreV2:46*
T0*
_output_shapes	
:А*
use_locking(*
validate_shape(*-
_class#
!loc:@Generator/up3/conv1/biases
╪
save_1/Assign_47AssignGenerator/up3/conv1/filterssave_1/RestoreV2:47*
T0*(
_output_shapes
:АА*
use_locking(*
validate_shape(*.
_class$
" loc:@Generator/up3/conv1/filters
╔
save_1/Assign_48AssignGenerator/up3/conv2/biasessave_1/RestoreV2:48*
T0*
_output_shapes	
:А*
use_locking(*
validate_shape(*-
_class#
!loc:@Generator/up3/conv2/biases
╪
save_1/Assign_49AssignGenerator/up3/conv2/filterssave_1/RestoreV2:49*
T0*(
_output_shapes
:АА*
use_locking(*
validate_shape(*.
_class$
" loc:@Generator/up3/conv2/filters
╔
save_1/Assign_50AssignGenerator/up3/conv3/biasessave_1/RestoreV2:50*
T0*
_output_shapes	
:А*
use_locking(*
validate_shape(*-
_class#
!loc:@Generator/up3/conv3/biases
╪
save_1/Assign_51AssignGenerator/up3/conv3/filterssave_1/RestoreV2:51*
T0*(
_output_shapes
:АА*
use_locking(*
validate_shape(*.
_class$
" loc:@Generator/up3/conv3/filters
ь
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_2^save_1/Assign_20^save_1/Assign_21^save_1/Assign_22^save_1/Assign_23^save_1/Assign_24^save_1/Assign_25^save_1/Assign_26^save_1/Assign_27^save_1/Assign_28^save_1/Assign_29^save_1/Assign_3^save_1/Assign_30^save_1/Assign_31^save_1/Assign_32^save_1/Assign_33^save_1/Assign_34^save_1/Assign_35^save_1/Assign_36^save_1/Assign_37^save_1/Assign_38^save_1/Assign_39^save_1/Assign_4^save_1/Assign_40^save_1/Assign_41^save_1/Assign_42^save_1/Assign_43^save_1/Assign_44^save_1/Assign_45^save_1/Assign_46^save_1/Assign_47^save_1/Assign_48^save_1/Assign_49^save_1/Assign_5^save_1/Assign_50^save_1/Assign_51^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9
1
save_1/restore_allNoOp^save_1/restore_shard "B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"¤A
trainable_variablesхAтA
л
Generator/down0/conv1/filters:0$Generator/down0/conv1/filters/Assign$Generator/down0/conv1/filters/read:02<Generator/down0/conv1/filters/Initializer/truncated_normal:0
Ь
Generator/down0/conv1/biases:0#Generator/down0/conv1/biases/Assign#Generator/down0/conv1/biases/read:020Generator/down0/conv1/biases/Initializer/Const:0
л
Generator/down0/conv2/filters:0$Generator/down0/conv2/filters/Assign$Generator/down0/conv2/filters/read:02<Generator/down0/conv2/filters/Initializer/truncated_normal:0
Ь
Generator/down0/conv2/biases:0#Generator/down0/conv2/biases/Assign#Generator/down0/conv2/biases/read:020Generator/down0/conv2/biases/Initializer/Const:0
л
Generator/down0/conv3/filters:0$Generator/down0/conv3/filters/Assign$Generator/down0/conv3/filters/read:02<Generator/down0/conv3/filters/Initializer/truncated_normal:0
Ь
Generator/down0/conv3/biases:0#Generator/down0/conv3/biases/Assign#Generator/down0/conv3/biases/read:020Generator/down0/conv3/biases/Initializer/Const:0
л
Generator/down1/conv1/filters:0$Generator/down1/conv1/filters/Assign$Generator/down1/conv1/filters/read:02<Generator/down1/conv1/filters/Initializer/truncated_normal:0
Ь
Generator/down1/conv1/biases:0#Generator/down1/conv1/biases/Assign#Generator/down1/conv1/biases/read:020Generator/down1/conv1/biases/Initializer/Const:0
л
Generator/down1/conv2/filters:0$Generator/down1/conv2/filters/Assign$Generator/down1/conv2/filters/read:02<Generator/down1/conv2/filters/Initializer/truncated_normal:0
Ь
Generator/down1/conv2/biases:0#Generator/down1/conv2/biases/Assign#Generator/down1/conv2/biases/read:020Generator/down1/conv2/biases/Initializer/Const:0
л
Generator/down1/conv3/filters:0$Generator/down1/conv3/filters/Assign$Generator/down1/conv3/filters/read:02<Generator/down1/conv3/filters/Initializer/truncated_normal:0
Ь
Generator/down1/conv3/biases:0#Generator/down1/conv3/biases/Assign#Generator/down1/conv3/biases/read:020Generator/down1/conv3/biases/Initializer/Const:0
л
Generator/down2/conv1/filters:0$Generator/down2/conv1/filters/Assign$Generator/down2/conv1/filters/read:02<Generator/down2/conv1/filters/Initializer/truncated_normal:0
Ь
Generator/down2/conv1/biases:0#Generator/down2/conv1/biases/Assign#Generator/down2/conv1/biases/read:020Generator/down2/conv1/biases/Initializer/Const:0
л
Generator/down2/conv2/filters:0$Generator/down2/conv2/filters/Assign$Generator/down2/conv2/filters/read:02<Generator/down2/conv2/filters/Initializer/truncated_normal:0
Ь
Generator/down2/conv2/biases:0#Generator/down2/conv2/biases/Assign#Generator/down2/conv2/biases/read:020Generator/down2/conv2/biases/Initializer/Const:0
л
Generator/down2/conv3/filters:0$Generator/down2/conv3/filters/Assign$Generator/down2/conv3/filters/read:02<Generator/down2/conv3/filters/Initializer/truncated_normal:0
Ь
Generator/down2/conv3/biases:0#Generator/down2/conv3/biases/Assign#Generator/down2/conv3/biases/read:020Generator/down2/conv3/biases/Initializer/Const:0
л
Generator/down3/conv1/filters:0$Generator/down3/conv1/filters/Assign$Generator/down3/conv1/filters/read:02<Generator/down3/conv1/filters/Initializer/truncated_normal:0
Ь
Generator/down3/conv1/biases:0#Generator/down3/conv1/biases/Assign#Generator/down3/conv1/biases/read:020Generator/down3/conv1/biases/Initializer/Const:0
л
Generator/down3/conv2/filters:0$Generator/down3/conv2/filters/Assign$Generator/down3/conv2/filters/read:02<Generator/down3/conv2/filters/Initializer/truncated_normal:0
Ь
Generator/down3/conv2/biases:0#Generator/down3/conv2/biases/Assign#Generator/down3/conv2/biases/read:020Generator/down3/conv2/biases/Initializer/Const:0
л
Generator/down3/conv3/filters:0$Generator/down3/conv3/filters/Assign$Generator/down3/conv3/filters/read:02<Generator/down3/conv3/filters/Initializer/truncated_normal:0
Ь
Generator/down3/conv3/biases:0#Generator/down3/conv3/biases/Assign#Generator/down3/conv3/biases/read:020Generator/down3/conv3/biases/Initializer/Const:0
Ч
Generator/center/filters:0Generator/center/filters/AssignGenerator/center/filters/read:027Generator/center/filters/Initializer/truncated_normal:0
И
Generator/center/biases:0Generator/center/biases/AssignGenerator/center/biases/read:02+Generator/center/biases/Initializer/Const:0
г
Generator/up3/conv1/filters:0"Generator/up3/conv1/filters/Assign"Generator/up3/conv1/filters/read:02:Generator/up3/conv1/filters/Initializer/truncated_normal:0
Ф
Generator/up3/conv1/biases:0!Generator/up3/conv1/biases/Assign!Generator/up3/conv1/biases/read:02.Generator/up3/conv1/biases/Initializer/Const:0
г
Generator/up3/conv2/filters:0"Generator/up3/conv2/filters/Assign"Generator/up3/conv2/filters/read:02:Generator/up3/conv2/filters/Initializer/truncated_normal:0
Ф
Generator/up3/conv2/biases:0!Generator/up3/conv2/biases/Assign!Generator/up3/conv2/biases/read:02.Generator/up3/conv2/biases/Initializer/Const:0
г
Generator/up3/conv3/filters:0"Generator/up3/conv3/filters/Assign"Generator/up3/conv3/filters/read:02:Generator/up3/conv3/filters/Initializer/truncated_normal:0
Ф
Generator/up3/conv3/biases:0!Generator/up3/conv3/biases/Assign!Generator/up3/conv3/biases/read:02.Generator/up3/conv3/biases/Initializer/Const:0
г
Generator/up2/conv1/filters:0"Generator/up2/conv1/filters/Assign"Generator/up2/conv1/filters/read:02:Generator/up2/conv1/filters/Initializer/truncated_normal:0
Ф
Generator/up2/conv1/biases:0!Generator/up2/conv1/biases/Assign!Generator/up2/conv1/biases/read:02.Generator/up2/conv1/biases/Initializer/Const:0
г
Generator/up2/conv2/filters:0"Generator/up2/conv2/filters/Assign"Generator/up2/conv2/filters/read:02:Generator/up2/conv2/filters/Initializer/truncated_normal:0
Ф
Generator/up2/conv2/biases:0!Generator/up2/conv2/biases/Assign!Generator/up2/conv2/biases/read:02.Generator/up2/conv2/biases/Initializer/Const:0
г
Generator/up2/conv3/filters:0"Generator/up2/conv3/filters/Assign"Generator/up2/conv3/filters/read:02:Generator/up2/conv3/filters/Initializer/truncated_normal:0
Ф
Generator/up2/conv3/biases:0!Generator/up2/conv3/biases/Assign!Generator/up2/conv3/biases/read:02.Generator/up2/conv3/biases/Initializer/Const:0
г
Generator/up1/conv1/filters:0"Generator/up1/conv1/filters/Assign"Generator/up1/conv1/filters/read:02:Generator/up1/conv1/filters/Initializer/truncated_normal:0
Ф
Generator/up1/conv1/biases:0!Generator/up1/conv1/biases/Assign!Generator/up1/conv1/biases/read:02.Generator/up1/conv1/biases/Initializer/Const:0
г
Generator/up1/conv2/filters:0"Generator/up1/conv2/filters/Assign"Generator/up1/conv2/filters/read:02:Generator/up1/conv2/filters/Initializer/truncated_normal:0
Ф
Generator/up1/conv2/biases:0!Generator/up1/conv2/biases/Assign!Generator/up1/conv2/biases/read:02.Generator/up1/conv2/biases/Initializer/Const:0
г
Generator/up1/conv3/filters:0"Generator/up1/conv3/filters/Assign"Generator/up1/conv3/filters/read:02:Generator/up1/conv3/filters/Initializer/truncated_normal:0
Ф
Generator/up1/conv3/biases:0!Generator/up1/conv3/biases/Assign!Generator/up1/conv3/biases/read:02.Generator/up1/conv3/biases/Initializer/Const:0
г
Generator/up0/conv1/filters:0"Generator/up0/conv1/filters/Assign"Generator/up0/conv1/filters/read:02:Generator/up0/conv1/filters/Initializer/truncated_normal:0
Ф
Generator/up0/conv1/biases:0!Generator/up0/conv1/biases/Assign!Generator/up0/conv1/biases/read:02.Generator/up0/conv1/biases/Initializer/Const:0
г
Generator/up0/conv2/filters:0"Generator/up0/conv2/filters/Assign"Generator/up0/conv2/filters/read:02:Generator/up0/conv2/filters/Initializer/truncated_normal:0
Ф
Generator/up0/conv2/biases:0!Generator/up0/conv2/biases/Assign!Generator/up0/conv2/biases/read:02.Generator/up0/conv2/biases/Initializer/Const:0
г
Generator/up0/conv3/filters:0"Generator/up0/conv3/filters/Assign"Generator/up0/conv3/filters/read:02:Generator/up0/conv3/filters/Initializer/truncated_normal:0
Ф
Generator/up0/conv3/biases:0!Generator/up0/conv3/biases/Assign!Generator/up0/conv3/biases/read:02.Generator/up0/conv3/biases/Initializer/Const:0
з
Generator/last_layer/filters:0#Generator/last_layer/filters/Assign#Generator/last_layer/filters/read:02;Generator/last_layer/filters/Initializer/truncated_normal:0
Ш
Generator/last_layer/biases:0"Generator/last_layer/biases/Assign"Generator/last_layer/biases/read:02/Generator/last_layer/biases/Initializer/Const:0"єA
	variablesхAтA
л
Generator/down0/conv1/filters:0$Generator/down0/conv1/filters/Assign$Generator/down0/conv1/filters/read:02<Generator/down0/conv1/filters/Initializer/truncated_normal:0
Ь
Generator/down0/conv1/biases:0#Generator/down0/conv1/biases/Assign#Generator/down0/conv1/biases/read:020Generator/down0/conv1/biases/Initializer/Const:0
л
Generator/down0/conv2/filters:0$Generator/down0/conv2/filters/Assign$Generator/down0/conv2/filters/read:02<Generator/down0/conv2/filters/Initializer/truncated_normal:0
Ь
Generator/down0/conv2/biases:0#Generator/down0/conv2/biases/Assign#Generator/down0/conv2/biases/read:020Generator/down0/conv2/biases/Initializer/Const:0
л
Generator/down0/conv3/filters:0$Generator/down0/conv3/filters/Assign$Generator/down0/conv3/filters/read:02<Generator/down0/conv3/filters/Initializer/truncated_normal:0
Ь
Generator/down0/conv3/biases:0#Generator/down0/conv3/biases/Assign#Generator/down0/conv3/biases/read:020Generator/down0/conv3/biases/Initializer/Const:0
л
Generator/down1/conv1/filters:0$Generator/down1/conv1/filters/Assign$Generator/down1/conv1/filters/read:02<Generator/down1/conv1/filters/Initializer/truncated_normal:0
Ь
Generator/down1/conv1/biases:0#Generator/down1/conv1/biases/Assign#Generator/down1/conv1/biases/read:020Generator/down1/conv1/biases/Initializer/Const:0
л
Generator/down1/conv2/filters:0$Generator/down1/conv2/filters/Assign$Generator/down1/conv2/filters/read:02<Generator/down1/conv2/filters/Initializer/truncated_normal:0
Ь
Generator/down1/conv2/biases:0#Generator/down1/conv2/biases/Assign#Generator/down1/conv2/biases/read:020Generator/down1/conv2/biases/Initializer/Const:0
л
Generator/down1/conv3/filters:0$Generator/down1/conv3/filters/Assign$Generator/down1/conv3/filters/read:02<Generator/down1/conv3/filters/Initializer/truncated_normal:0
Ь
Generator/down1/conv3/biases:0#Generator/down1/conv3/biases/Assign#Generator/down1/conv3/biases/read:020Generator/down1/conv3/biases/Initializer/Const:0
л
Generator/down2/conv1/filters:0$Generator/down2/conv1/filters/Assign$Generator/down2/conv1/filters/read:02<Generator/down2/conv1/filters/Initializer/truncated_normal:0
Ь
Generator/down2/conv1/biases:0#Generator/down2/conv1/biases/Assign#Generator/down2/conv1/biases/read:020Generator/down2/conv1/biases/Initializer/Const:0
л
Generator/down2/conv2/filters:0$Generator/down2/conv2/filters/Assign$Generator/down2/conv2/filters/read:02<Generator/down2/conv2/filters/Initializer/truncated_normal:0
Ь
Generator/down2/conv2/biases:0#Generator/down2/conv2/biases/Assign#Generator/down2/conv2/biases/read:020Generator/down2/conv2/biases/Initializer/Const:0
л
Generator/down2/conv3/filters:0$Generator/down2/conv3/filters/Assign$Generator/down2/conv3/filters/read:02<Generator/down2/conv3/filters/Initializer/truncated_normal:0
Ь
Generator/down2/conv3/biases:0#Generator/down2/conv3/biases/Assign#Generator/down2/conv3/biases/read:020Generator/down2/conv3/biases/Initializer/Const:0
л
Generator/down3/conv1/filters:0$Generator/down3/conv1/filters/Assign$Generator/down3/conv1/filters/read:02<Generator/down3/conv1/filters/Initializer/truncated_normal:0
Ь
Generator/down3/conv1/biases:0#Generator/down3/conv1/biases/Assign#Generator/down3/conv1/biases/read:020Generator/down3/conv1/biases/Initializer/Const:0
л
Generator/down3/conv2/filters:0$Generator/down3/conv2/filters/Assign$Generator/down3/conv2/filters/read:02<Generator/down3/conv2/filters/Initializer/truncated_normal:0
Ь
Generator/down3/conv2/biases:0#Generator/down3/conv2/biases/Assign#Generator/down3/conv2/biases/read:020Generator/down3/conv2/biases/Initializer/Const:0
л
Generator/down3/conv3/filters:0$Generator/down3/conv3/filters/Assign$Generator/down3/conv3/filters/read:02<Generator/down3/conv3/filters/Initializer/truncated_normal:0
Ь
Generator/down3/conv3/biases:0#Generator/down3/conv3/biases/Assign#Generator/down3/conv3/biases/read:020Generator/down3/conv3/biases/Initializer/Const:0
Ч
Generator/center/filters:0Generator/center/filters/AssignGenerator/center/filters/read:027Generator/center/filters/Initializer/truncated_normal:0
И
Generator/center/biases:0Generator/center/biases/AssignGenerator/center/biases/read:02+Generator/center/biases/Initializer/Const:0
г
Generator/up3/conv1/filters:0"Generator/up3/conv1/filters/Assign"Generator/up3/conv1/filters/read:02:Generator/up3/conv1/filters/Initializer/truncated_normal:0
Ф
Generator/up3/conv1/biases:0!Generator/up3/conv1/biases/Assign!Generator/up3/conv1/biases/read:02.Generator/up3/conv1/biases/Initializer/Const:0
г
Generator/up3/conv2/filters:0"Generator/up3/conv2/filters/Assign"Generator/up3/conv2/filters/read:02:Generator/up3/conv2/filters/Initializer/truncated_normal:0
Ф
Generator/up3/conv2/biases:0!Generator/up3/conv2/biases/Assign!Generator/up3/conv2/biases/read:02.Generator/up3/conv2/biases/Initializer/Const:0
г
Generator/up3/conv3/filters:0"Generator/up3/conv3/filters/Assign"Generator/up3/conv3/filters/read:02:Generator/up3/conv3/filters/Initializer/truncated_normal:0
Ф
Generator/up3/conv3/biases:0!Generator/up3/conv3/biases/Assign!Generator/up3/conv3/biases/read:02.Generator/up3/conv3/biases/Initializer/Const:0
г
Generator/up2/conv1/filters:0"Generator/up2/conv1/filters/Assign"Generator/up2/conv1/filters/read:02:Generator/up2/conv1/filters/Initializer/truncated_normal:0
Ф
Generator/up2/conv1/biases:0!Generator/up2/conv1/biases/Assign!Generator/up2/conv1/biases/read:02.Generator/up2/conv1/biases/Initializer/Const:0
г
Generator/up2/conv2/filters:0"Generator/up2/conv2/filters/Assign"Generator/up2/conv2/filters/read:02:Generator/up2/conv2/filters/Initializer/truncated_normal:0
Ф
Generator/up2/conv2/biases:0!Generator/up2/conv2/biases/Assign!Generator/up2/conv2/biases/read:02.Generator/up2/conv2/biases/Initializer/Const:0
г
Generator/up2/conv3/filters:0"Generator/up2/conv3/filters/Assign"Generator/up2/conv3/filters/read:02:Generator/up2/conv3/filters/Initializer/truncated_normal:0
Ф
Generator/up2/conv3/biases:0!Generator/up2/conv3/biases/Assign!Generator/up2/conv3/biases/read:02.Generator/up2/conv3/biases/Initializer/Const:0
г
Generator/up1/conv1/filters:0"Generator/up1/conv1/filters/Assign"Generator/up1/conv1/filters/read:02:Generator/up1/conv1/filters/Initializer/truncated_normal:0
Ф
Generator/up1/conv1/biases:0!Generator/up1/conv1/biases/Assign!Generator/up1/conv1/biases/read:02.Generator/up1/conv1/biases/Initializer/Const:0
г
Generator/up1/conv2/filters:0"Generator/up1/conv2/filters/Assign"Generator/up1/conv2/filters/read:02:Generator/up1/conv2/filters/Initializer/truncated_normal:0
Ф
Generator/up1/conv2/biases:0!Generator/up1/conv2/biases/Assign!Generator/up1/conv2/biases/read:02.Generator/up1/conv2/biases/Initializer/Const:0
г
Generator/up1/conv3/filters:0"Generator/up1/conv3/filters/Assign"Generator/up1/conv3/filters/read:02:Generator/up1/conv3/filters/Initializer/truncated_normal:0
Ф
Generator/up1/conv3/biases:0!Generator/up1/conv3/biases/Assign!Generator/up1/conv3/biases/read:02.Generator/up1/conv3/biases/Initializer/Const:0
г
Generator/up0/conv1/filters:0"Generator/up0/conv1/filters/Assign"Generator/up0/conv1/filters/read:02:Generator/up0/conv1/filters/Initializer/truncated_normal:0
Ф
Generator/up0/conv1/biases:0!Generator/up0/conv1/biases/Assign!Generator/up0/conv1/biases/read:02.Generator/up0/conv1/biases/Initializer/Const:0
г
Generator/up0/conv2/filters:0"Generator/up0/conv2/filters/Assign"Generator/up0/conv2/filters/read:02:Generator/up0/conv2/filters/Initializer/truncated_normal:0
Ф
Generator/up0/conv2/biases:0!Generator/up0/conv2/biases/Assign!Generator/up0/conv2/biases/read:02.Generator/up0/conv2/biases/Initializer/Const:0
г
Generator/up0/conv3/filters:0"Generator/up0/conv3/filters/Assign"Generator/up0/conv3/filters/read:02:Generator/up0/conv3/filters/Initializer/truncated_normal:0
Ф
Generator/up0/conv3/biases:0!Generator/up0/conv3/biases/Assign!Generator/up0/conv3/biases/read:02.Generator/up0/conv3/biases/Initializer/Const:0
з
Generator/last_layer/filters:0#Generator/last_layer/filters/Assign#Generator/last_layer/filters/read:02;Generator/last_layer/filters/Initializer/truncated_normal:0
Ш
Generator/last_layer/biases:0"Generator/last_layer/biases/Assign"Generator/last_layer/biases/read:02/Generator/last_layer/biases/Initializer/Const:0*┤
serving_defaultа
A
input_images1
Placeholder:0                  ?
output_images.
Generator/BiasAdd_25:0ААtensorflow/serving/predict