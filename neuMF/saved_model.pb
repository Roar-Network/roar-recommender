ç¹
°
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
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
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
¥
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
Á
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.8.22v2.8.2-0-g2ea19cbb5758Û¾

embedding_58/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	' *(
shared_nameembedding_58/embeddings

+embedding_58/embeddings/Read/ReadVariableOpReadVariableOpembedding_58/embeddings*
_output_shapes
:	' *
dtype0

embedding_59/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
±í *(
shared_nameembedding_59/embeddings

+embedding_59/embeddings/Read/ReadVariableOpReadVariableOpembedding_59/embeddings* 
_output_shapes
:
±í *
dtype0
~
mlp_layer1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*"
shared_namemlp_layer1/kernel
w
%mlp_layer1/kernel/Read/ReadVariableOpReadVariableOpmlp_layer1/kernel*
_output_shapes

:@@*
dtype0
v
mlp_layer1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_namemlp_layer1/bias
o
#mlp_layer1/bias/Read/ReadVariableOpReadVariableOpmlp_layer1/bias*
_output_shapes
:@*
dtype0
z
batch_norm1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_namebatch_norm1/gamma
s
%batch_norm1/gamma/Read/ReadVariableOpReadVariableOpbatch_norm1/gamma*
_output_shapes
:@*
dtype0
x
batch_norm1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_namebatch_norm1/beta
q
$batch_norm1/beta/Read/ReadVariableOpReadVariableOpbatch_norm1/beta*
_output_shapes
:@*
dtype0

batch_norm1/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_namebatch_norm1/moving_mean

+batch_norm1/moving_mean/Read/ReadVariableOpReadVariableOpbatch_norm1/moving_mean*
_output_shapes
:@*
dtype0

batch_norm1/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_norm1/moving_variance

/batch_norm1/moving_variance/Read/ReadVariableOpReadVariableOpbatch_norm1/moving_variance*
_output_shapes
:@*
dtype0
~
mlp_layer2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *"
shared_namemlp_layer2/kernel
w
%mlp_layer2/kernel/Read/ReadVariableOpReadVariableOpmlp_layer2/kernel*
_output_shapes

:@ *
dtype0
v
mlp_layer2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_namemlp_layer2/bias
o
#mlp_layer2/bias/Read/ReadVariableOpReadVariableOpmlp_layer2/bias*
_output_shapes
: *
dtype0

embedding_56/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	'*(
shared_nameembedding_56/embeddings

+embedding_56/embeddings/Read/ReadVariableOpReadVariableOpembedding_56/embeddings*
_output_shapes
:	'*
dtype0

embedding_57/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
±í*(
shared_nameembedding_57/embeddings

+embedding_57/embeddings/Read/ReadVariableOpReadVariableOpembedding_57/embeddings* 
_output_shapes
:
±í*
dtype0
z
batch_norm2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_namebatch_norm2/gamma
s
%batch_norm2/gamma/Read/ReadVariableOpReadVariableOpbatch_norm2/gamma*
_output_shapes
: *
dtype0
x
batch_norm2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_namebatch_norm2/beta
q
$batch_norm2/beta/Read/ReadVariableOpReadVariableOpbatch_norm2/beta*
_output_shapes
: *
dtype0

batch_norm2/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_namebatch_norm2/moving_mean

+batch_norm2/moving_mean/Read/ReadVariableOpReadVariableOpbatch_norm2/moving_mean*
_output_shapes
: *
dtype0

batch_norm2/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namebatch_norm2/moving_variance

/batch_norm2/moving_variance/Read/ReadVariableOpReadVariableOpbatch_norm2/moving_variance*
_output_shapes
: *
dtype0
~
mlp_layer3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *"
shared_namemlp_layer3/kernel
w
%mlp_layer3/kernel/Read/ReadVariableOpReadVariableOpmlp_layer3/kernel*
_output_shapes

: *
dtype0
v
mlp_layer3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namemlp_layer3/bias
o
#mlp_layer3/bias/Read/ReadVariableOpReadVariableOpmlp_layer3/bias*
_output_shapes
:*
dtype0
~
mlp_layer4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*"
shared_namemlp_layer4/kernel
w
%mlp_layer4/kernel/Read/ReadVariableOpReadVariableOpmlp_layer4/kernel*
_output_shapes

:*
dtype0
v
mlp_layer4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namemlp_layer4/bias
o
#mlp_layer4/bias/Read/ReadVariableOpReadVariableOpmlp_layer4/bias*
_output_shapes
:*
dtype0

output_layer/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*$
shared_nameoutput_layer/kernel
{
'output_layer/kernel/Read/ReadVariableOpReadVariableOpoutput_layer/kernel*
_output_shapes

:*
dtype0
z
output_layer/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameoutput_layer/bias
s
%output_layer/bias/Read/ReadVariableOpReadVariableOpoutput_layer/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0

embedding_58/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	' **
shared_nameembedding_58/embeddings/m

-embedding_58/embeddings/m/Read/ReadVariableOpReadVariableOpembedding_58/embeddings/m*
_output_shapes
:	' *
dtype0

embedding_59/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
±í **
shared_nameembedding_59/embeddings/m

-embedding_59/embeddings/m/Read/ReadVariableOpReadVariableOpembedding_59/embeddings/m* 
_output_shapes
:
±í *
dtype0

mlp_layer1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*$
shared_namemlp_layer1/kernel/m
{
'mlp_layer1/kernel/m/Read/ReadVariableOpReadVariableOpmlp_layer1/kernel/m*
_output_shapes

:@@*
dtype0
z
mlp_layer1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_namemlp_layer1/bias/m
s
%mlp_layer1/bias/m/Read/ReadVariableOpReadVariableOpmlp_layer1/bias/m*
_output_shapes
:@*
dtype0
~
batch_norm1/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_namebatch_norm1/gamma/m
w
'batch_norm1/gamma/m/Read/ReadVariableOpReadVariableOpbatch_norm1/gamma/m*
_output_shapes
:@*
dtype0
|
batch_norm1/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_namebatch_norm1/beta/m
u
&batch_norm1/beta/m/Read/ReadVariableOpReadVariableOpbatch_norm1/beta/m*
_output_shapes
:@*
dtype0

mlp_layer2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *$
shared_namemlp_layer2/kernel/m
{
'mlp_layer2/kernel/m/Read/ReadVariableOpReadVariableOpmlp_layer2/kernel/m*
_output_shapes

:@ *
dtype0
z
mlp_layer2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_namemlp_layer2/bias/m
s
%mlp_layer2/bias/m/Read/ReadVariableOpReadVariableOpmlp_layer2/bias/m*
_output_shapes
: *
dtype0

embedding_56/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	'**
shared_nameembedding_56/embeddings/m

-embedding_56/embeddings/m/Read/ReadVariableOpReadVariableOpembedding_56/embeddings/m*
_output_shapes
:	'*
dtype0

embedding_57/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
±í**
shared_nameembedding_57/embeddings/m

-embedding_57/embeddings/m/Read/ReadVariableOpReadVariableOpembedding_57/embeddings/m* 
_output_shapes
:
±í*
dtype0
~
batch_norm2/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_namebatch_norm2/gamma/m
w
'batch_norm2/gamma/m/Read/ReadVariableOpReadVariableOpbatch_norm2/gamma/m*
_output_shapes
: *
dtype0
|
batch_norm2/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_namebatch_norm2/beta/m
u
&batch_norm2/beta/m/Read/ReadVariableOpReadVariableOpbatch_norm2/beta/m*
_output_shapes
: *
dtype0

mlp_layer3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *$
shared_namemlp_layer3/kernel/m
{
'mlp_layer3/kernel/m/Read/ReadVariableOpReadVariableOpmlp_layer3/kernel/m*
_output_shapes

: *
dtype0
z
mlp_layer3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_namemlp_layer3/bias/m
s
%mlp_layer3/bias/m/Read/ReadVariableOpReadVariableOpmlp_layer3/bias/m*
_output_shapes
:*
dtype0

mlp_layer4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*$
shared_namemlp_layer4/kernel/m
{
'mlp_layer4/kernel/m/Read/ReadVariableOpReadVariableOpmlp_layer4/kernel/m*
_output_shapes

:*
dtype0
z
mlp_layer4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_namemlp_layer4/bias/m
s
%mlp_layer4/bias/m/Read/ReadVariableOpReadVariableOpmlp_layer4/bias/m*
_output_shapes
:*
dtype0

output_layer/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameoutput_layer/kernel/m

)output_layer/kernel/m/Read/ReadVariableOpReadVariableOpoutput_layer/kernel/m*
_output_shapes

:*
dtype0
~
output_layer/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameoutput_layer/bias/m
w
'output_layer/bias/m/Read/ReadVariableOpReadVariableOpoutput_layer/bias/m*
_output_shapes
:*
dtype0

embedding_58/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	' **
shared_nameembedding_58/embeddings/v

-embedding_58/embeddings/v/Read/ReadVariableOpReadVariableOpembedding_58/embeddings/v*
_output_shapes
:	' *
dtype0

embedding_59/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
±í **
shared_nameembedding_59/embeddings/v

-embedding_59/embeddings/v/Read/ReadVariableOpReadVariableOpembedding_59/embeddings/v* 
_output_shapes
:
±í *
dtype0

mlp_layer1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*$
shared_namemlp_layer1/kernel/v
{
'mlp_layer1/kernel/v/Read/ReadVariableOpReadVariableOpmlp_layer1/kernel/v*
_output_shapes

:@@*
dtype0
z
mlp_layer1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_namemlp_layer1/bias/v
s
%mlp_layer1/bias/v/Read/ReadVariableOpReadVariableOpmlp_layer1/bias/v*
_output_shapes
:@*
dtype0
~
batch_norm1/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_namebatch_norm1/gamma/v
w
'batch_norm1/gamma/v/Read/ReadVariableOpReadVariableOpbatch_norm1/gamma/v*
_output_shapes
:@*
dtype0
|
batch_norm1/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_namebatch_norm1/beta/v
u
&batch_norm1/beta/v/Read/ReadVariableOpReadVariableOpbatch_norm1/beta/v*
_output_shapes
:@*
dtype0

mlp_layer2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *$
shared_namemlp_layer2/kernel/v
{
'mlp_layer2/kernel/v/Read/ReadVariableOpReadVariableOpmlp_layer2/kernel/v*
_output_shapes

:@ *
dtype0
z
mlp_layer2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_namemlp_layer2/bias/v
s
%mlp_layer2/bias/v/Read/ReadVariableOpReadVariableOpmlp_layer2/bias/v*
_output_shapes
: *
dtype0

embedding_56/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	'**
shared_nameembedding_56/embeddings/v

-embedding_56/embeddings/v/Read/ReadVariableOpReadVariableOpembedding_56/embeddings/v*
_output_shapes
:	'*
dtype0

embedding_57/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
±í**
shared_nameembedding_57/embeddings/v

-embedding_57/embeddings/v/Read/ReadVariableOpReadVariableOpembedding_57/embeddings/v* 
_output_shapes
:
±í*
dtype0
~
batch_norm2/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_namebatch_norm2/gamma/v
w
'batch_norm2/gamma/v/Read/ReadVariableOpReadVariableOpbatch_norm2/gamma/v*
_output_shapes
: *
dtype0
|
batch_norm2/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_namebatch_norm2/beta/v
u
&batch_norm2/beta/v/Read/ReadVariableOpReadVariableOpbatch_norm2/beta/v*
_output_shapes
: *
dtype0

mlp_layer3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *$
shared_namemlp_layer3/kernel/v
{
'mlp_layer3/kernel/v/Read/ReadVariableOpReadVariableOpmlp_layer3/kernel/v*
_output_shapes

: *
dtype0
z
mlp_layer3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_namemlp_layer3/bias/v
s
%mlp_layer3/bias/v/Read/ReadVariableOpReadVariableOpmlp_layer3/bias/v*
_output_shapes
:*
dtype0

mlp_layer4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*$
shared_namemlp_layer4/kernel/v
{
'mlp_layer4/kernel/v/Read/ReadVariableOpReadVariableOpmlp_layer4/kernel/v*
_output_shapes

:*
dtype0
z
mlp_layer4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_namemlp_layer4/bias/v
s
%mlp_layer4/bias/v/Read/ReadVariableOpReadVariableOpmlp_layer4/bias/v*
_output_shapes
:*
dtype0

output_layer/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameoutput_layer/kernel/v

)output_layer/kernel/v/Read/ReadVariableOpReadVariableOpoutput_layer/kernel/v*
_output_shapes

:*
dtype0
~
output_layer/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameoutput_layer/bias/v
w
'output_layer/bias/v/Read/ReadVariableOpReadVariableOpoutput_layer/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
«©
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*å¨
valueÚ¨BÖ¨ BÎ¨
È
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer-6
layer-7
	layer_with_weights-2
	layer-8

layer-9
layer_with_weights-3
layer-10
layer_with_weights-4
layer-11
layer-12
layer_with_weights-5
layer-13
layer_with_weights-6
layer-14
layer_with_weights-7
layer-15
layer-16
layer-17
layer_with_weights-8
layer-18
layer-19
layer_with_weights-9
layer-20
layer-21
layer_with_weights-10
layer-22
	optimizer

signatures
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses
!_default_save_signature*
'
#"_self_saveable_object_factories* 
'
##_self_saveable_object_factories* 
Å
$
embeddings
#%_self_saveable_object_factories
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses*
Å
,
embeddings
#-_self_saveable_object_factories
.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses*
³
#4_self_saveable_object_factories
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses* 
³
#;_self_saveable_object_factories
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses* 
³
#B_self_saveable_object_factories
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses* 
Ê
#I_self_saveable_object_factories
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
N_random_generator
O__call__
*P&call_and_return_all_conditional_losses* 
Ë

Qkernel
Rbias
#S_self_saveable_object_factories
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
X__call__
*Y&call_and_return_all_conditional_losses*
Ê
#Z_self_saveable_object_factories
[	variables
\trainable_variables
]regularization_losses
^	keras_api
__random_generator
`__call__
*a&call_and_return_all_conditional_losses* 
ú
baxis
	cgamma
dbeta
emoving_mean
fmoving_variance
#g_self_saveable_object_factories
h	variables
itrainable_variables
jregularization_losses
k	keras_api
l__call__
*m&call_and_return_all_conditional_losses*
Ë

nkernel
obias
#p_self_saveable_object_factories
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses*
Ê
#w_self_saveable_object_factories
x	variables
ytrainable_variables
zregularization_losses
{	keras_api
|_random_generator
}__call__
*~&call_and_return_all_conditional_losses* 
Ì

embeddings
$_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses*
Í

embeddings
$_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses*

	axis

gamma
	beta
moving_mean
moving_variance
$_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses*
º
$_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
+¡&call_and_return_all_conditional_losses* 
º
$¢_self_saveable_object_factories
£	variables
¤trainable_variables
¥regularization_losses
¦	keras_api
§__call__
+¨&call_and_return_all_conditional_losses* 
Ô
©kernel
	ªbias
$«_self_saveable_object_factories
¬	variables
­trainable_variables
®regularization_losses
¯	keras_api
°__call__
+±&call_and_return_all_conditional_losses*
º
$²_self_saveable_object_factories
³	variables
´trainable_variables
µregularization_losses
¶	keras_api
·__call__
+¸&call_and_return_all_conditional_losses* 
Ô
¹kernel
	ºbias
$»_self_saveable_object_factories
¼	variables
½trainable_variables
¾regularization_losses
¿	keras_api
À__call__
+Á&call_and_return_all_conditional_losses*
º
$Â_self_saveable_object_factories
Ã	variables
Ätrainable_variables
Åregularization_losses
Æ	keras_api
Ç__call__
+È&call_and_return_all_conditional_losses* 
Ô
Ékernel
	Êbias
$Ë_self_saveable_object_factories
Ì	variables
Ítrainable_variables
Îregularization_losses
Ï	keras_api
Ð__call__
+Ñ&call_and_return_all_conditional_losses*
Ã
	Òiter
Óbeta_1
Ôbeta_2

Õdecay
Ölearning_rate$mË,mÌQmÍRmÎcmÏdmÐnmÑomÒmÓ	mÔ	mÕ	mÖ	©m×	ªmØ	¹mÙ	ºmÚ	ÉmÛ	ÊmÜ$vÝ,vÞQvßRvàcvádvânvãovävå	væ	vç	vè	©vé	ªvê	¹vë	ºvì	Éví	Êvî*

×serving_default* 
* 
µ
$0
,1
Q2
R3
c4
d5
e6
f7
n8
o9
10
11
12
13
14
15
©16
ª17
¹18
º19
É20
Ê21*

$0
,1
Q2
R3
c4
d5
n6
o7
8
9
10
11
©12
ª13
¹14
º15
É16
Ê17*
* 
µ
Ønon_trainable_variables
Ùlayers
Úmetrics
 Ûlayer_regularization_losses
Ülayer_metrics
	variables
trainable_variables
regularization_losses
__call__
!_default_save_signature
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses*
* 
* 
* 
* 
* 
ke
VARIABLE_VALUEembedding_58/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE*
* 

$0*

$0*
* 

Ýnon_trainable_variables
Þlayers
ßmetrics
 àlayer_regularization_losses
álayer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses*
* 
* 
ke
VARIABLE_VALUEembedding_59/embeddings:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUE*
* 

,0*

,0*
* 

ânon_trainable_variables
ãlayers
ämetrics
 ålayer_regularization_losses
ælayer_metrics
.	variables
/trainable_variables
0regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 

çnon_trainable_variables
èlayers
émetrics
 êlayer_regularization_losses
ëlayer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 

ìnon_trainable_variables
ílayers
îmetrics
 ïlayer_regularization_losses
ðlayer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 

ñnon_trainable_variables
òlayers
ómetrics
 ôlayer_regularization_losses
õlayer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 

önon_trainable_variables
÷layers
ømetrics
 ùlayer_regularization_losses
úlayer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses* 
* 
* 
* 
a[
VARIABLE_VALUEmlp_layer1/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEmlp_layer1/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

Q0
R1*

Q0
R1*
* 

ûnon_trainable_variables
ülayers
ýmetrics
 þlayer_regularization_losses
ÿlayer_metrics
T	variables
Utrainable_variables
Vregularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
[	variables
\trainable_variables
]regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses* 
* 
* 
* 
* 
`Z
VARIABLE_VALUEbatch_norm1/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEbatch_norm1/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUEbatch_norm1/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEbatch_norm1/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
c0
d1
e2
f3*

c0
d1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
h	variables
itrainable_variables
jregularization_losses
l__call__
*m&call_and_return_all_conditional_losses
&m"call_and_return_conditional_losses*
* 
* 
a[
VARIABLE_VALUEmlp_layer2/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEmlp_layer2/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

n0
o1*

n0
o1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
x	variables
ytrainable_variables
zregularization_losses
}__call__
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses* 
* 
* 
* 
ke
VARIABLE_VALUEembedding_56/embeddings:layer_with_weights-5/embeddings/.ATTRIBUTES/VARIABLE_VALUE*
* 

0*

0*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
ke
VARIABLE_VALUEembedding_57/embeddings:layer_with_weights-6/embeddings/.ATTRIBUTES/VARIABLE_VALUE*
* 

0*

0*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
* 
`Z
VARIABLE_VALUEbatch_norm2/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEbatch_norm2/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUEbatch_norm2/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEbatch_norm2/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
$
0
1
2
3*

0
1*
* 

non_trainable_variables
layers
 metrics
 ¡layer_regularization_losses
¢layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 

£non_trainable_variables
¤layers
¥metrics
 ¦layer_regularization_losses
§layer_metrics
	variables
trainable_variables
regularization_losses
 __call__
+¡&call_and_return_all_conditional_losses
'¡"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 

¨non_trainable_variables
©layers
ªmetrics
 «layer_regularization_losses
¬layer_metrics
£	variables
¤trainable_variables
¥regularization_losses
§__call__
+¨&call_and_return_all_conditional_losses
'¨"call_and_return_conditional_losses* 
* 
* 
a[
VARIABLE_VALUEmlp_layer3/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEmlp_layer3/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

©0
ª1*

©0
ª1*
* 

­non_trainable_variables
®layers
¯metrics
 °layer_regularization_losses
±layer_metrics
¬	variables
­trainable_variables
®regularization_losses
°__call__
+±&call_and_return_all_conditional_losses
'±"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 

²non_trainable_variables
³layers
´metrics
 µlayer_regularization_losses
¶layer_metrics
³	variables
´trainable_variables
µregularization_losses
·__call__
+¸&call_and_return_all_conditional_losses
'¸"call_and_return_conditional_losses* 
* 
* 
a[
VARIABLE_VALUEmlp_layer4/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEmlp_layer4/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

¹0
º1*

¹0
º1*
* 

·non_trainable_variables
¸layers
¹metrics
 ºlayer_regularization_losses
»layer_metrics
¼	variables
½trainable_variables
¾regularization_losses
À__call__
+Á&call_and_return_all_conditional_losses
'Á"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 

¼non_trainable_variables
½layers
¾metrics
 ¿layer_regularization_losses
Àlayer_metrics
Ã	variables
Ätrainable_variables
Åregularization_losses
Ç__call__
+È&call_and_return_all_conditional_losses
'È"call_and_return_conditional_losses* 
* 
* 
d^
VARIABLE_VALUEoutput_layer/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEoutput_layer/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

É0
Ê1*

É0
Ê1*
* 

Ánon_trainable_variables
Âlayers
Ãmetrics
 Älayer_regularization_losses
Ålayer_metrics
Ì	variables
Ítrainable_variables
Îregularization_losses
Ð__call__
+Ñ&call_and_return_all_conditional_losses
'Ñ"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
"
e0
f1
2
3*
²
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22*

Æ0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

e0
f1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

0
1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<

Çtotal

Ècount
É	variables
Ê	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

Ç0
È1*

É	variables*

VARIABLE_VALUEembedding_58/embeddings/mVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEembedding_59/embeddings/mVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEmlp_layer1/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEmlp_layer1/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEbatch_norm1/gamma/mQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEbatch_norm1/beta/mPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEmlp_layer2/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEmlp_layer2/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEembedding_56/embeddings/mVlayer_with_weights-5/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEembedding_57/embeddings/mVlayer_with_weights-6/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEbatch_norm2/gamma/mQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEbatch_norm2/beta/mPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEmlp_layer3/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEmlp_layer3/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEmlp_layer4/kernel/mRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEmlp_layer4/bias/mPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEoutput_layer/kernel/mSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEoutput_layer/bias/mQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEembedding_58/embeddings/vVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEembedding_59/embeddings/vVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEmlp_layer1/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEmlp_layer1/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEbatch_norm1/gamma/vQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEbatch_norm1/beta/vPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEmlp_layer2/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEmlp_layer2/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEembedding_56/embeddings/vVlayer_with_weights-5/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEembedding_57/embeddings/vVlayer_with_weights-6/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEbatch_norm2/gamma/vQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEbatch_norm2/beta/vPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEmlp_layer3/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEmlp_layer3/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEmlp_layer4/kernel/vRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEmlp_layer4/bias/vPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEoutput_layer/kernel/vSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEoutput_layer/bias/vQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
serving_default_input_29Placeholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
{
serving_default_input_30Placeholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
Í
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_29serving_default_input_30embedding_59/embeddingsembedding_58/embeddingsmlp_layer1/kernelmlp_layer1/biasbatch_norm1/moving_variancebatch_norm1/gammabatch_norm1/moving_meanbatch_norm1/betamlp_layer2/kernelmlp_layer2/biasbatch_norm2/moving_variancebatch_norm2/gammabatch_norm2/moving_meanbatch_norm2/betaembedding_57/embeddingsembedding_56/embeddingsmlp_layer3/kernelmlp_layer3/biasmlp_layer4/kernelmlp_layer4/biasoutput_layer/kerneloutput_layer/bias*#
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *.
f)R'
%__inference_signature_wrapper_2424737
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ª
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename+embedding_58/embeddings/Read/ReadVariableOp+embedding_59/embeddings/Read/ReadVariableOp%mlp_layer1/kernel/Read/ReadVariableOp#mlp_layer1/bias/Read/ReadVariableOp%batch_norm1/gamma/Read/ReadVariableOp$batch_norm1/beta/Read/ReadVariableOp+batch_norm1/moving_mean/Read/ReadVariableOp/batch_norm1/moving_variance/Read/ReadVariableOp%mlp_layer2/kernel/Read/ReadVariableOp#mlp_layer2/bias/Read/ReadVariableOp+embedding_56/embeddings/Read/ReadVariableOp+embedding_57/embeddings/Read/ReadVariableOp%batch_norm2/gamma/Read/ReadVariableOp$batch_norm2/beta/Read/ReadVariableOp+batch_norm2/moving_mean/Read/ReadVariableOp/batch_norm2/moving_variance/Read/ReadVariableOp%mlp_layer3/kernel/Read/ReadVariableOp#mlp_layer3/bias/Read/ReadVariableOp%mlp_layer4/kernel/Read/ReadVariableOp#mlp_layer4/bias/Read/ReadVariableOp'output_layer/kernel/Read/ReadVariableOp%output_layer/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp-embedding_58/embeddings/m/Read/ReadVariableOp-embedding_59/embeddings/m/Read/ReadVariableOp'mlp_layer1/kernel/m/Read/ReadVariableOp%mlp_layer1/bias/m/Read/ReadVariableOp'batch_norm1/gamma/m/Read/ReadVariableOp&batch_norm1/beta/m/Read/ReadVariableOp'mlp_layer2/kernel/m/Read/ReadVariableOp%mlp_layer2/bias/m/Read/ReadVariableOp-embedding_56/embeddings/m/Read/ReadVariableOp-embedding_57/embeddings/m/Read/ReadVariableOp'batch_norm2/gamma/m/Read/ReadVariableOp&batch_norm2/beta/m/Read/ReadVariableOp'mlp_layer3/kernel/m/Read/ReadVariableOp%mlp_layer3/bias/m/Read/ReadVariableOp'mlp_layer4/kernel/m/Read/ReadVariableOp%mlp_layer4/bias/m/Read/ReadVariableOp)output_layer/kernel/m/Read/ReadVariableOp'output_layer/bias/m/Read/ReadVariableOp-embedding_58/embeddings/v/Read/ReadVariableOp-embedding_59/embeddings/v/Read/ReadVariableOp'mlp_layer1/kernel/v/Read/ReadVariableOp%mlp_layer1/bias/v/Read/ReadVariableOp'batch_norm1/gamma/v/Read/ReadVariableOp&batch_norm1/beta/v/Read/ReadVariableOp'mlp_layer2/kernel/v/Read/ReadVariableOp%mlp_layer2/bias/v/Read/ReadVariableOp-embedding_56/embeddings/v/Read/ReadVariableOp-embedding_57/embeddings/v/Read/ReadVariableOp'batch_norm2/gamma/v/Read/ReadVariableOp&batch_norm2/beta/v/Read/ReadVariableOp'mlp_layer3/kernel/v/Read/ReadVariableOp%mlp_layer3/bias/v/Read/ReadVariableOp'mlp_layer4/kernel/v/Read/ReadVariableOp%mlp_layer4/bias/v/Read/ReadVariableOp)output_layer/kernel/v/Read/ReadVariableOp'output_layer/bias/v/Read/ReadVariableOpConst*N
TinG
E2C	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__traced_save_2425442

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding_58/embeddingsembedding_59/embeddingsmlp_layer1/kernelmlp_layer1/biasbatch_norm1/gammabatch_norm1/betabatch_norm1/moving_meanbatch_norm1/moving_variancemlp_layer2/kernelmlp_layer2/biasembedding_56/embeddingsembedding_57/embeddingsbatch_norm2/gammabatch_norm2/betabatch_norm2/moving_meanbatch_norm2/moving_variancemlp_layer3/kernelmlp_layer3/biasmlp_layer4/kernelmlp_layer4/biasoutput_layer/kerneloutput_layer/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountembedding_58/embeddings/membedding_59/embeddings/mmlp_layer1/kernel/mmlp_layer1/bias/mbatch_norm1/gamma/mbatch_norm1/beta/mmlp_layer2/kernel/mmlp_layer2/bias/membedding_56/embeddings/membedding_57/embeddings/mbatch_norm2/gamma/mbatch_norm2/beta/mmlp_layer3/kernel/mmlp_layer3/bias/mmlp_layer4/kernel/mmlp_layer4/bias/moutput_layer/kernel/moutput_layer/bias/membedding_58/embeddings/vembedding_59/embeddings/vmlp_layer1/kernel/vmlp_layer1/bias/vbatch_norm1/gamma/vbatch_norm1/beta/vmlp_layer2/kernel/vmlp_layer2/bias/vembedding_56/embeddings/vembedding_57/embeddings/vbatch_norm2/gamma/vbatch_norm2/beta/vmlp_layer3/kernel/vmlp_layer3/bias/vmlp_layer4/kernel/vmlp_layer4/bias/voutput_layer/kernel/voutput_layer/bias/v*M
TinF
D2B*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference__traced_restore_2425647è


ø
G__inference_mlp_layer4_layer_call_and_return_conditional_losses_2425191

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¿
c
G__inference_flatten_59_layer_call_and_return_conditional_losses_2423519

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
¼
u
K__inference_concatenate_20_layer_call_and_return_conditional_losses_2423528

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :u
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@W
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
%
á
H__inference_batch_norm1_layer_call_and_return_conditional_losses_2424958

inputs5
'assignmovingavg_readvariableop_resource:@7
)assignmovingavg_1_readvariableop_resource:@3
%batchnorm_mul_readvariableop_resource:@/
!batchnorm_readvariableop_resource:@
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:@
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:@*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:@x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:@¬
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:@*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:@~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:@´
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:@v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ê
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ñ
¨
I__inference_embedding_58_layer_call_and_return_conditional_losses_2424753

inputs+
embedding_lookup_2424747:	' 
identity¢embedding_lookup»
embedding_lookupResourceGatherembedding_lookup_2424747inputs*
Tindices0*+
_class!
loc:@embedding_lookup/2424747*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0£
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/2424747*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


f
G__inference_dropout_10_layer_call_and_return_conditional_losses_2423918

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*
seed[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs


 __inference__traced_save_2425442
file_prefix6
2savev2_embedding_58_embeddings_read_readvariableop6
2savev2_embedding_59_embeddings_read_readvariableop0
,savev2_mlp_layer1_kernel_read_readvariableop.
*savev2_mlp_layer1_bias_read_readvariableop0
,savev2_batch_norm1_gamma_read_readvariableop/
+savev2_batch_norm1_beta_read_readvariableop6
2savev2_batch_norm1_moving_mean_read_readvariableop:
6savev2_batch_norm1_moving_variance_read_readvariableop0
,savev2_mlp_layer2_kernel_read_readvariableop.
*savev2_mlp_layer2_bias_read_readvariableop6
2savev2_embedding_56_embeddings_read_readvariableop6
2savev2_embedding_57_embeddings_read_readvariableop0
,savev2_batch_norm2_gamma_read_readvariableop/
+savev2_batch_norm2_beta_read_readvariableop6
2savev2_batch_norm2_moving_mean_read_readvariableop:
6savev2_batch_norm2_moving_variance_read_readvariableop0
,savev2_mlp_layer3_kernel_read_readvariableop.
*savev2_mlp_layer3_bias_read_readvariableop0
,savev2_mlp_layer4_kernel_read_readvariableop.
*savev2_mlp_layer4_bias_read_readvariableop2
.savev2_output_layer_kernel_read_readvariableop0
,savev2_output_layer_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop8
4savev2_embedding_58_embeddings_m_read_readvariableop8
4savev2_embedding_59_embeddings_m_read_readvariableop2
.savev2_mlp_layer1_kernel_m_read_readvariableop0
,savev2_mlp_layer1_bias_m_read_readvariableop2
.savev2_batch_norm1_gamma_m_read_readvariableop1
-savev2_batch_norm1_beta_m_read_readvariableop2
.savev2_mlp_layer2_kernel_m_read_readvariableop0
,savev2_mlp_layer2_bias_m_read_readvariableop8
4savev2_embedding_56_embeddings_m_read_readvariableop8
4savev2_embedding_57_embeddings_m_read_readvariableop2
.savev2_batch_norm2_gamma_m_read_readvariableop1
-savev2_batch_norm2_beta_m_read_readvariableop2
.savev2_mlp_layer3_kernel_m_read_readvariableop0
,savev2_mlp_layer3_bias_m_read_readvariableop2
.savev2_mlp_layer4_kernel_m_read_readvariableop0
,savev2_mlp_layer4_bias_m_read_readvariableop4
0savev2_output_layer_kernel_m_read_readvariableop2
.savev2_output_layer_bias_m_read_readvariableop8
4savev2_embedding_58_embeddings_v_read_readvariableop8
4savev2_embedding_59_embeddings_v_read_readvariableop2
.savev2_mlp_layer1_kernel_v_read_readvariableop0
,savev2_mlp_layer1_bias_v_read_readvariableop2
.savev2_batch_norm1_gamma_v_read_readvariableop1
-savev2_batch_norm1_beta_v_read_readvariableop2
.savev2_mlp_layer2_kernel_v_read_readvariableop0
,savev2_mlp_layer2_bias_v_read_readvariableop8
4savev2_embedding_56_embeddings_v_read_readvariableop8
4savev2_embedding_57_embeddings_v_read_readvariableop2
.savev2_batch_norm2_gamma_v_read_readvariableop1
-savev2_batch_norm2_beta_v_read_readvariableop2
.savev2_mlp_layer3_kernel_v_read_readvariableop0
,savev2_mlp_layer3_bias_v_read_readvariableop2
.savev2_mlp_layer4_kernel_v_read_readvariableop0
,savev2_mlp_layer4_bias_v_read_readvariableop4
0savev2_output_layer_kernel_v_read_readvariableop2
.savev2_output_layer_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: %
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:B*
dtype0*Æ$
value¼$B¹$BB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-5/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-6/embeddings/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-5/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-6/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-5/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-6/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHô
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:B*
dtype0*
valueBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:02savev2_embedding_58_embeddings_read_readvariableop2savev2_embedding_59_embeddings_read_readvariableop,savev2_mlp_layer1_kernel_read_readvariableop*savev2_mlp_layer1_bias_read_readvariableop,savev2_batch_norm1_gamma_read_readvariableop+savev2_batch_norm1_beta_read_readvariableop2savev2_batch_norm1_moving_mean_read_readvariableop6savev2_batch_norm1_moving_variance_read_readvariableop,savev2_mlp_layer2_kernel_read_readvariableop*savev2_mlp_layer2_bias_read_readvariableop2savev2_embedding_56_embeddings_read_readvariableop2savev2_embedding_57_embeddings_read_readvariableop,savev2_batch_norm2_gamma_read_readvariableop+savev2_batch_norm2_beta_read_readvariableop2savev2_batch_norm2_moving_mean_read_readvariableop6savev2_batch_norm2_moving_variance_read_readvariableop,savev2_mlp_layer3_kernel_read_readvariableop*savev2_mlp_layer3_bias_read_readvariableop,savev2_mlp_layer4_kernel_read_readvariableop*savev2_mlp_layer4_bias_read_readvariableop.savev2_output_layer_kernel_read_readvariableop,savev2_output_layer_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop4savev2_embedding_58_embeddings_m_read_readvariableop4savev2_embedding_59_embeddings_m_read_readvariableop.savev2_mlp_layer1_kernel_m_read_readvariableop,savev2_mlp_layer1_bias_m_read_readvariableop.savev2_batch_norm1_gamma_m_read_readvariableop-savev2_batch_norm1_beta_m_read_readvariableop.savev2_mlp_layer2_kernel_m_read_readvariableop,savev2_mlp_layer2_bias_m_read_readvariableop4savev2_embedding_56_embeddings_m_read_readvariableop4savev2_embedding_57_embeddings_m_read_readvariableop.savev2_batch_norm2_gamma_m_read_readvariableop-savev2_batch_norm2_beta_m_read_readvariableop.savev2_mlp_layer3_kernel_m_read_readvariableop,savev2_mlp_layer3_bias_m_read_readvariableop.savev2_mlp_layer4_kernel_m_read_readvariableop,savev2_mlp_layer4_bias_m_read_readvariableop0savev2_output_layer_kernel_m_read_readvariableop.savev2_output_layer_bias_m_read_readvariableop4savev2_embedding_58_embeddings_v_read_readvariableop4savev2_embedding_59_embeddings_v_read_readvariableop.savev2_mlp_layer1_kernel_v_read_readvariableop,savev2_mlp_layer1_bias_v_read_readvariableop.savev2_batch_norm1_gamma_v_read_readvariableop-savev2_batch_norm1_beta_v_read_readvariableop.savev2_mlp_layer2_kernel_v_read_readvariableop,savev2_mlp_layer2_bias_v_read_readvariableop4savev2_embedding_56_embeddings_v_read_readvariableop4savev2_embedding_57_embeddings_v_read_readvariableop.savev2_batch_norm2_gamma_v_read_readvariableop-savev2_batch_norm2_beta_v_read_readvariableop.savev2_mlp_layer3_kernel_v_read_readvariableop,savev2_mlp_layer3_bias_v_read_readvariableop.savev2_mlp_layer4_kernel_v_read_readvariableop,savev2_mlp_layer4_bias_v_read_readvariableop0savev2_output_layer_kernel_v_read_readvariableop.savev2_output_layer_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *P
dtypesF
D2B	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*
_input_shapesï
ì: :	' :
±í :@@:@:@:@:@:@:@ : :	':
±í: : : : : :::::: : : : : : : :	' :
±í :@@:@:@:@:@ : :	':
±í: : : ::::::	' :
±í :@@:@:@:@:@ : :	':
±í: : : :::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	' :&"
 
_output_shapes
:
±í :$ 

_output_shapes

:@@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:$	 

_output_shapes

:@ : 


_output_shapes
: :%!

_output_shapes
:	':&"
 
_output_shapes
:
±í: 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	' :&"
 
_output_shapes
:
±í :$  

_output_shapes

:@@: !

_output_shapes
:@: "

_output_shapes
:@: #

_output_shapes
:@:$$ 

_output_shapes

:@ : %

_output_shapes
: :%&!

_output_shapes
:	':&'"
 
_output_shapes
:
±í: (

_output_shapes
: : )

_output_shapes
: :$* 

_output_shapes

: : +

_output_shapes
::$, 

_output_shapes

:: -

_output_shapes
::$. 

_output_shapes

:: /

_output_shapes
::%0!

_output_shapes
:	' :&1"
 
_output_shapes
:
±í :$2 

_output_shapes

:@@: 3

_output_shapes
:@: 4

_output_shapes
:@: 5

_output_shapes
:@:$6 

_output_shapes

:@ : 7

_output_shapes
: :%8!

_output_shapes
:	':&9"
 
_output_shapes
:
±í: :

_output_shapes
: : ;

_output_shapes
: :$< 

_output_shapes

: : =

_output_shapes
::$> 

_output_shapes

:: ?

_output_shapes
::$@ 

_output_shapes

:: A

_output_shapes
::B

_output_shapes
: 
»
r
H__inference_multiply_14_layer_call_and_return_conditional_losses_2423668

inputs
inputs_1
identityN
mulMulinputsinputs_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿO
IdentityIdentitymul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
­

.__inference_embedding_56_layer_call_fn_2425012

inputs
unknown:	'
identity¢StatefulPartitionedCallÕ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_embedding_56_layer_call_and_return_conditional_losses_2423625s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¿
c
G__inference_flatten_56_layer_call_and_return_conditional_losses_2425128

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ã
t
H__inference_multiply_14_layer_call_and_return_conditional_losses_2425171
inputs_0
inputs_1
identityP
mulMulinputs_0inputs_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿO
IdentityIdentitymul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:Q M
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1


f
G__inference_dropout_10_layer_call_and_return_conditional_losses_2424831

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*
seed[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

(
#__inference__traced_restore_2425647
file_prefix;
(assignvariableop_embedding_58_embeddings:	' >
*assignvariableop_1_embedding_59_embeddings:
±í 6
$assignvariableop_2_mlp_layer1_kernel:@@0
"assignvariableop_3_mlp_layer1_bias:@2
$assignvariableop_4_batch_norm1_gamma:@1
#assignvariableop_5_batch_norm1_beta:@8
*assignvariableop_6_batch_norm1_moving_mean:@<
.assignvariableop_7_batch_norm1_moving_variance:@6
$assignvariableop_8_mlp_layer2_kernel:@ 0
"assignvariableop_9_mlp_layer2_bias: >
+assignvariableop_10_embedding_56_embeddings:	'?
+assignvariableop_11_embedding_57_embeddings:
±í3
%assignvariableop_12_batch_norm2_gamma: 2
$assignvariableop_13_batch_norm2_beta: 9
+assignvariableop_14_batch_norm2_moving_mean: =
/assignvariableop_15_batch_norm2_moving_variance: 7
%assignvariableop_16_mlp_layer3_kernel: 1
#assignvariableop_17_mlp_layer3_bias:7
%assignvariableop_18_mlp_layer4_kernel:1
#assignvariableop_19_mlp_layer4_bias:9
'assignvariableop_20_output_layer_kernel:3
%assignvariableop_21_output_layer_bias:'
assignvariableop_22_adam_iter:	 )
assignvariableop_23_adam_beta_1: )
assignvariableop_24_adam_beta_2: (
assignvariableop_25_adam_decay: 0
&assignvariableop_26_adam_learning_rate: #
assignvariableop_27_total: #
assignvariableop_28_count: @
-assignvariableop_29_embedding_58_embeddings_m:	' A
-assignvariableop_30_embedding_59_embeddings_m:
±í 9
'assignvariableop_31_mlp_layer1_kernel_m:@@3
%assignvariableop_32_mlp_layer1_bias_m:@5
'assignvariableop_33_batch_norm1_gamma_m:@4
&assignvariableop_34_batch_norm1_beta_m:@9
'assignvariableop_35_mlp_layer2_kernel_m:@ 3
%assignvariableop_36_mlp_layer2_bias_m: @
-assignvariableop_37_embedding_56_embeddings_m:	'A
-assignvariableop_38_embedding_57_embeddings_m:
±í5
'assignvariableop_39_batch_norm2_gamma_m: 4
&assignvariableop_40_batch_norm2_beta_m: 9
'assignvariableop_41_mlp_layer3_kernel_m: 3
%assignvariableop_42_mlp_layer3_bias_m:9
'assignvariableop_43_mlp_layer4_kernel_m:3
%assignvariableop_44_mlp_layer4_bias_m:;
)assignvariableop_45_output_layer_kernel_m:5
'assignvariableop_46_output_layer_bias_m:@
-assignvariableop_47_embedding_58_embeddings_v:	' A
-assignvariableop_48_embedding_59_embeddings_v:
±í 9
'assignvariableop_49_mlp_layer1_kernel_v:@@3
%assignvariableop_50_mlp_layer1_bias_v:@5
'assignvariableop_51_batch_norm1_gamma_v:@4
&assignvariableop_52_batch_norm1_beta_v:@9
'assignvariableop_53_mlp_layer2_kernel_v:@ 3
%assignvariableop_54_mlp_layer2_bias_v: @
-assignvariableop_55_embedding_56_embeddings_v:	'A
-assignvariableop_56_embedding_57_embeddings_v:
±í5
'assignvariableop_57_batch_norm2_gamma_v: 4
&assignvariableop_58_batch_norm2_beta_v: 9
'assignvariableop_59_mlp_layer3_kernel_v: 3
%assignvariableop_60_mlp_layer3_bias_v:9
'assignvariableop_61_mlp_layer4_kernel_v:3
%assignvariableop_62_mlp_layer4_bias_v:;
)assignvariableop_63_output_layer_kernel_v:5
'assignvariableop_64_output_layer_bias_v:
identity_66¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_41¢AssignVariableOp_42¢AssignVariableOp_43¢AssignVariableOp_44¢AssignVariableOp_45¢AssignVariableOp_46¢AssignVariableOp_47¢AssignVariableOp_48¢AssignVariableOp_49¢AssignVariableOp_5¢AssignVariableOp_50¢AssignVariableOp_51¢AssignVariableOp_52¢AssignVariableOp_53¢AssignVariableOp_54¢AssignVariableOp_55¢AssignVariableOp_56¢AssignVariableOp_57¢AssignVariableOp_58¢AssignVariableOp_59¢AssignVariableOp_6¢AssignVariableOp_60¢AssignVariableOp_61¢AssignVariableOp_62¢AssignVariableOp_63¢AssignVariableOp_64¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9 %
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:B*
dtype0*Æ$
value¼$B¹$BB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-5/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-6/embeddings/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-5/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-6/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-5/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-6/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH÷
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:B*
dtype0*
valueBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ë
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*P
dtypesF
D2B	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp(assignvariableop_embedding_58_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp*assignvariableop_1_embedding_59_embeddingsIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp$assignvariableop_2_mlp_layer1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp"assignvariableop_3_mlp_layer1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp$assignvariableop_4_batch_norm1_gammaIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp#assignvariableop_5_batch_norm1_betaIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp*assignvariableop_6_batch_norm1_moving_meanIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp.assignvariableop_7_batch_norm1_moving_varianceIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp$assignvariableop_8_mlp_layer2_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp"assignvariableop_9_mlp_layer2_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOp+assignvariableop_10_embedding_56_embeddingsIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOp+assignvariableop_11_embedding_57_embeddingsIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp%assignvariableop_12_batch_norm2_gammaIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp$assignvariableop_13_batch_norm2_betaIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOp+assignvariableop_14_batch_norm2_moving_meanIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_15AssignVariableOp/assignvariableop_15_batch_norm2_moving_varianceIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp%assignvariableop_16_mlp_layer3_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp#assignvariableop_17_mlp_layer3_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp%assignvariableop_18_mlp_layer4_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp#assignvariableop_19_mlp_layer4_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOp'assignvariableop_20_output_layer_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOp%assignvariableop_21_output_layer_biasIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_22AssignVariableOpassignvariableop_22_adam_iterIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOpassignvariableop_23_adam_beta_1Identity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOpassignvariableop_24_adam_beta_2Identity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOpassignvariableop_25_adam_decayIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp&assignvariableop_26_adam_learning_rateIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOpassignvariableop_27_totalIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOpassignvariableop_28_countIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp-assignvariableop_29_embedding_58_embeddings_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp-assignvariableop_30_embedding_59_embeddings_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOp'assignvariableop_31_mlp_layer1_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOp%assignvariableop_32_mlp_layer1_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_33AssignVariableOp'assignvariableop_33_batch_norm1_gamma_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_34AssignVariableOp&assignvariableop_34_batch_norm1_beta_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_35AssignVariableOp'assignvariableop_35_mlp_layer2_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_36AssignVariableOp%assignvariableop_36_mlp_layer2_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_37AssignVariableOp-assignvariableop_37_embedding_56_embeddings_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_38AssignVariableOp-assignvariableop_38_embedding_57_embeddings_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_39AssignVariableOp'assignvariableop_39_batch_norm2_gamma_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_40AssignVariableOp&assignvariableop_40_batch_norm2_beta_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_41AssignVariableOp'assignvariableop_41_mlp_layer3_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_42AssignVariableOp%assignvariableop_42_mlp_layer3_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_43AssignVariableOp'assignvariableop_43_mlp_layer4_kernel_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_44AssignVariableOp%assignvariableop_44_mlp_layer4_bias_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_45AssignVariableOp)assignvariableop_45_output_layer_kernel_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_46AssignVariableOp'assignvariableop_46_output_layer_bias_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_47AssignVariableOp-assignvariableop_47_embedding_58_embeddings_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_48AssignVariableOp-assignvariableop_48_embedding_59_embeddings_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_49AssignVariableOp'assignvariableop_49_mlp_layer1_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_50AssignVariableOp%assignvariableop_50_mlp_layer1_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_51AssignVariableOp'assignvariableop_51_batch_norm1_gamma_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_52AssignVariableOp&assignvariableop_52_batch_norm1_beta_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_53AssignVariableOp'assignvariableop_53_mlp_layer2_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_54AssignVariableOp%assignvariableop_54_mlp_layer2_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_55AssignVariableOp-assignvariableop_55_embedding_56_embeddings_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_56AssignVariableOp-assignvariableop_56_embedding_57_embeddings_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_57AssignVariableOp'assignvariableop_57_batch_norm2_gamma_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_58AssignVariableOp&assignvariableop_58_batch_norm2_beta_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_59AssignVariableOp'assignvariableop_59_mlp_layer3_kernel_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_60AssignVariableOp%assignvariableop_60_mlp_layer3_bias_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_61AssignVariableOp'assignvariableop_61_mlp_layer4_kernel_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_62AssignVariableOp%assignvariableop_62_mlp_layer4_bias_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_63AssignVariableOp)assignvariableop_63_output_layer_kernel_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_64AssignVariableOp'assignvariableop_64_output_layer_bias_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 å
Identity_65Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_66IdentityIdentity_65:output:0^NoOp_1*
T0*
_output_shapes
: Ò
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_66Identity_66:output:0*
_input_shapes
: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix


ø
G__inference_mlp_layer1_layer_call_and_return_conditional_losses_2424851

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ð
Ü
E__inference_model_10_layer_call_and_return_conditional_losses_2424529
inputs_0
inputs_19
%embedding_59_embedding_lookup_2424426:
±í 8
%embedding_58_embedding_lookup_2424431:	' ;
)mlp_layer1_matmul_readvariableop_resource:@@8
*mlp_layer1_biasadd_readvariableop_resource:@;
-batch_norm1_batchnorm_readvariableop_resource:@?
1batch_norm1_batchnorm_mul_readvariableop_resource:@=
/batch_norm1_batchnorm_readvariableop_1_resource:@=
/batch_norm1_batchnorm_readvariableop_2_resource:@;
)mlp_layer2_matmul_readvariableop_resource:@ 8
*mlp_layer2_biasadd_readvariableop_resource: ;
-batch_norm2_batchnorm_readvariableop_resource: ?
1batch_norm2_batchnorm_mul_readvariableop_resource: =
/batch_norm2_batchnorm_readvariableop_1_resource: =
/batch_norm2_batchnorm_readvariableop_2_resource: 9
%embedding_57_embedding_lookup_2424491:
±í8
%embedding_56_embedding_lookup_2424496:	';
)mlp_layer3_matmul_readvariableop_resource: 8
*mlp_layer3_biasadd_readvariableop_resource:;
)mlp_layer4_matmul_readvariableop_resource:8
*mlp_layer4_biasadd_readvariableop_resource:=
+output_layer_matmul_readvariableop_resource::
,output_layer_biasadd_readvariableop_resource:
identity¢$batch_norm1/batchnorm/ReadVariableOp¢&batch_norm1/batchnorm/ReadVariableOp_1¢&batch_norm1/batchnorm/ReadVariableOp_2¢(batch_norm1/batchnorm/mul/ReadVariableOp¢$batch_norm2/batchnorm/ReadVariableOp¢&batch_norm2/batchnorm/ReadVariableOp_1¢&batch_norm2/batchnorm/ReadVariableOp_2¢(batch_norm2/batchnorm/mul/ReadVariableOp¢embedding_56/embedding_lookup¢embedding_57/embedding_lookup¢embedding_58/embedding_lookup¢embedding_59/embedding_lookup¢!mlp_layer1/BiasAdd/ReadVariableOp¢ mlp_layer1/MatMul/ReadVariableOp¢!mlp_layer2/BiasAdd/ReadVariableOp¢ mlp_layer2/MatMul/ReadVariableOp¢!mlp_layer3/BiasAdd/ReadVariableOp¢ mlp_layer3/MatMul/ReadVariableOp¢!mlp_layer4/BiasAdd/ReadVariableOp¢ mlp_layer4/MatMul/ReadVariableOp¢#output_layer/BiasAdd/ReadVariableOp¢"output_layer/MatMul/ReadVariableOpä
embedding_59/embedding_lookupResourceGather%embedding_59_embedding_lookup_2424426inputs_1*
Tindices0*8
_class.
,*loc:@embedding_59/embedding_lookup/2424426*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0Ê
&embedding_59/embedding_lookup/IdentityIdentity&embedding_59/embedding_lookup:output:0*
T0*8
_class.
,*loc:@embedding_59/embedding_lookup/2424426*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(embedding_59/embedding_lookup/Identity_1Identity/embedding_59/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ä
embedding_58/embedding_lookupResourceGather%embedding_58_embedding_lookup_2424431inputs_0*
Tindices0*8
_class.
,*loc:@embedding_58/embedding_lookup/2424431*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0Ê
&embedding_58/embedding_lookup/IdentityIdentity&embedding_58/embedding_lookup:output:0*
T0*8
_class.
,*loc:@embedding_58/embedding_lookup/2424431*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(embedding_58/embedding_lookup/Identity_1Identity/embedding_58/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ a
flatten_58/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    
flatten_58/ReshapeReshape1embedding_58/embedding_lookup/Identity_1:output:0flatten_58/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ a
flatten_59/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    
flatten_59/ReshapeReshape1embedding_59/embedding_lookup/Identity_1:output:0flatten_59/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ \
concatenate_20/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :»
concatenate_20/concatConcatV2flatten_58/Reshape:output:0flatten_59/Reshape:output:0#concatenate_20/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@q
dropout_10/IdentityIdentityconcatenate_20/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 mlp_layer1/MatMul/ReadVariableOpReadVariableOp)mlp_layer1_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0
mlp_layer1/MatMulMatMuldropout_10/Identity:output:0(mlp_layer1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
!mlp_layer1/BiasAdd/ReadVariableOpReadVariableOp*mlp_layer1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
mlp_layer1/BiasAddBiasAddmlp_layer1/MatMul:product:0)mlp_layer1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f
mlp_layer1/ReluRelumlp_layer1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
dropout1/IdentityIdentitymlp_layer1/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
$batch_norm1/batchnorm/ReadVariableOpReadVariableOp-batch_norm1_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0`
batch_norm1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:
batch_norm1/batchnorm/addAddV2,batch_norm1/batchnorm/ReadVariableOp:value:0$batch_norm1/batchnorm/add/y:output:0*
T0*
_output_shapes
:@h
batch_norm1/batchnorm/RsqrtRsqrtbatch_norm1/batchnorm/add:z:0*
T0*
_output_shapes
:@
(batch_norm1/batchnorm/mul/ReadVariableOpReadVariableOp1batch_norm1_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0
batch_norm1/batchnorm/mulMulbatch_norm1/batchnorm/Rsqrt:y:00batch_norm1/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@
batch_norm1/batchnorm/mul_1Muldropout1/Identity:output:0batch_norm1/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
&batch_norm1/batchnorm/ReadVariableOp_1ReadVariableOp/batch_norm1_batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype0
batch_norm1/batchnorm/mul_2Mul.batch_norm1/batchnorm/ReadVariableOp_1:value:0batch_norm1/batchnorm/mul:z:0*
T0*
_output_shapes
:@
&batch_norm1/batchnorm/ReadVariableOp_2ReadVariableOp/batch_norm1_batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype0
batch_norm1/batchnorm/subSub.batch_norm1/batchnorm/ReadVariableOp_2:value:0batch_norm1/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@
batch_norm1/batchnorm/add_1AddV2batch_norm1/batchnorm/mul_1:z:0batch_norm1/batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 mlp_layer2/MatMul/ReadVariableOpReadVariableOp)mlp_layer2_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0
mlp_layer2/MatMulMatMulbatch_norm1/batchnorm/add_1:z:0(mlp_layer2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
!mlp_layer2/BiasAdd/ReadVariableOpReadVariableOp*mlp_layer2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
mlp_layer2/BiasAddBiasAddmlp_layer2/MatMul:product:0)mlp_layer2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
mlp_layer2/ReluRelumlp_layer2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ n
dropout2/IdentityIdentitymlp_layer2/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
$batch_norm2/batchnorm/ReadVariableOpReadVariableOp-batch_norm2_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0`
batch_norm2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:
batch_norm2/batchnorm/addAddV2,batch_norm2/batchnorm/ReadVariableOp:value:0$batch_norm2/batchnorm/add/y:output:0*
T0*
_output_shapes
: h
batch_norm2/batchnorm/RsqrtRsqrtbatch_norm2/batchnorm/add:z:0*
T0*
_output_shapes
: 
(batch_norm2/batchnorm/mul/ReadVariableOpReadVariableOp1batch_norm2_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0
batch_norm2/batchnorm/mulMulbatch_norm2/batchnorm/Rsqrt:y:00batch_norm2/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 
batch_norm2/batchnorm/mul_1Muldropout2/Identity:output:0batch_norm2/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
&batch_norm2/batchnorm/ReadVariableOp_1ReadVariableOp/batch_norm2_batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype0
batch_norm2/batchnorm/mul_2Mul.batch_norm2/batchnorm/ReadVariableOp_1:value:0batch_norm2/batchnorm/mul:z:0*
T0*
_output_shapes
: 
&batch_norm2/batchnorm/ReadVariableOp_2ReadVariableOp/batch_norm2_batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype0
batch_norm2/batchnorm/subSub.batch_norm2/batchnorm/ReadVariableOp_2:value:0batch_norm2/batchnorm/mul_2:z:0*
T0*
_output_shapes
: 
batch_norm2/batchnorm/add_1AddV2batch_norm2/batchnorm/mul_1:z:0batch_norm2/batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ä
embedding_57/embedding_lookupResourceGather%embedding_57_embedding_lookup_2424491inputs_1*
Tindices0*8
_class.
,*loc:@embedding_57/embedding_lookup/2424491*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0Ê
&embedding_57/embedding_lookup/IdentityIdentity&embedding_57/embedding_lookup:output:0*
T0*8
_class.
,*loc:@embedding_57/embedding_lookup/2424491*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(embedding_57/embedding_lookup/Identity_1Identity/embedding_57/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿä
embedding_56/embedding_lookupResourceGather%embedding_56_embedding_lookup_2424496inputs_0*
Tindices0*8
_class.
,*loc:@embedding_56/embedding_lookup/2424496*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0Ê
&embedding_56/embedding_lookup/IdentityIdentity&embedding_56/embedding_lookup:output:0*
T0*8
_class.
,*loc:@embedding_56/embedding_lookup/2424496*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(embedding_56/embedding_lookup/Identity_1Identity/embedding_56/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 mlp_layer3/MatMul/ReadVariableOpReadVariableOp)mlp_layer3_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
mlp_layer3/MatMulMatMulbatch_norm2/batchnorm/add_1:z:0(mlp_layer3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!mlp_layer3/BiasAdd/ReadVariableOpReadVariableOp*mlp_layer3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
mlp_layer3/BiasAddBiasAddmlp_layer3/MatMul:product:0)mlp_layer3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
mlp_layer3/ReluRelumlp_layer3/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
flatten_56/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
flatten_56/ReshapeReshape1embedding_56/embedding_lookup/Identity_1:output:0flatten_56/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
flatten_57/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
flatten_57/ReshapeReshape1embedding_57/embedding_lookup/Identity_1:output:0flatten_57/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
multiply_14/mulMulflatten_56/Reshape:output:0flatten_57/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 mlp_layer4/MatMul/ReadVariableOpReadVariableOp)mlp_layer4_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
mlp_layer4/MatMulMatMulmlp_layer3/Relu:activations:0(mlp_layer4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!mlp_layer4/BiasAdd/ReadVariableOpReadVariableOp*mlp_layer4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
mlp_layer4/BiasAddBiasAddmlp_layer4/MatMul:product:0)mlp_layer4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
mlp_layer4/ReluRelumlp_layer4/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
concatenate_21/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :µ
concatenate_21/concatConcatV2multiply_14/mul:z:0mlp_layer4/Relu:activations:0#concatenate_21/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"output_layer/MatMul/ReadVariableOpReadVariableOp+output_layer_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
output_layer/MatMulMatMulconcatenate_21/concat:output:0*output_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#output_layer/BiasAdd/ReadVariableOpReadVariableOp,output_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
output_layer/BiasAddBiasAddoutput_layer/MatMul:product:0+output_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
IdentityIdentityoutput_layer/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿõ
NoOpNoOp%^batch_norm1/batchnorm/ReadVariableOp'^batch_norm1/batchnorm/ReadVariableOp_1'^batch_norm1/batchnorm/ReadVariableOp_2)^batch_norm1/batchnorm/mul/ReadVariableOp%^batch_norm2/batchnorm/ReadVariableOp'^batch_norm2/batchnorm/ReadVariableOp_1'^batch_norm2/batchnorm/ReadVariableOp_2)^batch_norm2/batchnorm/mul/ReadVariableOp^embedding_56/embedding_lookup^embedding_57/embedding_lookup^embedding_58/embedding_lookup^embedding_59/embedding_lookup"^mlp_layer1/BiasAdd/ReadVariableOp!^mlp_layer1/MatMul/ReadVariableOp"^mlp_layer2/BiasAdd/ReadVariableOp!^mlp_layer2/MatMul/ReadVariableOp"^mlp_layer3/BiasAdd/ReadVariableOp!^mlp_layer3/MatMul/ReadVariableOp"^mlp_layer4/BiasAdd/ReadVariableOp!^mlp_layer4/MatMul/ReadVariableOp$^output_layer/BiasAdd/ReadVariableOp#^output_layer/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : 2L
$batch_norm1/batchnorm/ReadVariableOp$batch_norm1/batchnorm/ReadVariableOp2P
&batch_norm1/batchnorm/ReadVariableOp_1&batch_norm1/batchnorm/ReadVariableOp_12P
&batch_norm1/batchnorm/ReadVariableOp_2&batch_norm1/batchnorm/ReadVariableOp_22T
(batch_norm1/batchnorm/mul/ReadVariableOp(batch_norm1/batchnorm/mul/ReadVariableOp2L
$batch_norm2/batchnorm/ReadVariableOp$batch_norm2/batchnorm/ReadVariableOp2P
&batch_norm2/batchnorm/ReadVariableOp_1&batch_norm2/batchnorm/ReadVariableOp_12P
&batch_norm2/batchnorm/ReadVariableOp_2&batch_norm2/batchnorm/ReadVariableOp_22T
(batch_norm2/batchnorm/mul/ReadVariableOp(batch_norm2/batchnorm/mul/ReadVariableOp2>
embedding_56/embedding_lookupembedding_56/embedding_lookup2>
embedding_57/embedding_lookupembedding_57/embedding_lookup2>
embedding_58/embedding_lookupembedding_58/embedding_lookup2>
embedding_59/embedding_lookupembedding_59/embedding_lookup2F
!mlp_layer1/BiasAdd/ReadVariableOp!mlp_layer1/BiasAdd/ReadVariableOp2D
 mlp_layer1/MatMul/ReadVariableOp mlp_layer1/MatMul/ReadVariableOp2F
!mlp_layer2/BiasAdd/ReadVariableOp!mlp_layer2/BiasAdd/ReadVariableOp2D
 mlp_layer2/MatMul/ReadVariableOp mlp_layer2/MatMul/ReadVariableOp2F
!mlp_layer3/BiasAdd/ReadVariableOp!mlp_layer3/BiasAdd/ReadVariableOp2D
 mlp_layer3/MatMul/ReadVariableOp mlp_layer3/MatMul/ReadVariableOp2F
!mlp_layer4/BiasAdd/ReadVariableOp!mlp_layer4/BiasAdd/ReadVariableOp2D
 mlp_layer4/MatMul/ReadVariableOp mlp_layer4/MatMul/ReadVariableOp2J
#output_layer/BiasAdd/ReadVariableOp#output_layer/BiasAdd/ReadVariableOp2H
"output_layer/MatMul/ReadVariableOp"output_layer/MatMul/ReadVariableOp:Q M
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1
¿
c
G__inference_flatten_56_layer_call_and_return_conditional_losses_2423652

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ì	
ú
I__inference_output_layer_layer_call_and_return_conditional_losses_2423706

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


d
E__inference_dropout1_layer_call_and_return_conditional_losses_2424878

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*
seed[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ñ
c
*__inference_dropout2_layer_call_fn_2424988

inputs
identity¢StatefulPartitionedCallÀ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout2_layer_call_and_return_conditional_losses_2423852o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
¥
Ì
*__inference_model_10_layer_call_fn_2423760
input_29
input_30
unknown:
±í 
	unknown_0:	' 
	unknown_1:@@
	unknown_2:@
	unknown_3:@
	unknown_4:@
	unknown_5:@
	unknown_6:@
	unknown_7:@ 
	unknown_8: 
	unknown_9: 

unknown_10: 

unknown_11: 

unknown_12: 

unknown_13:
±í

unknown_14:	'

unknown_15: 

unknown_16:

unknown_17:

unknown_18:

unknown_19:

unknown_20:
identity¢StatefulPartitionedCallö
StatefulPartitionedCallStatefulPartitionedCallinput_29input_30unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*#
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_model_10_layer_call_and_return_conditional_losses_2423713o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_29:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_30
Å
§
H__inference_batch_norm2_layer_call_and_return_conditional_losses_2423412

inputs/
!batchnorm_readvariableop_resource: 3
%batchnorm_mul_readvariableop_resource: 1
#batchnorm_readvariableop_1_resource: 1
#batchnorm_readvariableop_2_resource: 
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
: P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: ~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
: z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ º
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs


ø
G__inference_mlp_layer4_layer_call_and_return_conditional_losses_2423681

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
î\
ª
E__inference_model_10_layer_call_and_return_conditional_losses_2424079

inputs
inputs_1(
embedding_59_2424013:
±í '
embedding_58_2424016:	' $
mlp_layer1_2424023:@@ 
mlp_layer1_2424025:@!
batch_norm1_2424029:@!
batch_norm1_2424031:@!
batch_norm1_2424033:@!
batch_norm1_2424035:@$
mlp_layer2_2424038:@  
mlp_layer2_2424040: !
batch_norm2_2424044: !
batch_norm2_2424046: !
batch_norm2_2424048: !
batch_norm2_2424050: (
embedding_57_2424053:
±í'
embedding_56_2424056:	'$
mlp_layer3_2424059:  
mlp_layer3_2424061:$
mlp_layer4_2424067: 
mlp_layer4_2424069:&
output_layer_2424073:"
output_layer_2424075:
identity¢#batch_norm1/StatefulPartitionedCall¢#batch_norm2/StatefulPartitionedCall¢ dropout1/StatefulPartitionedCall¢ dropout2/StatefulPartitionedCall¢"dropout_10/StatefulPartitionedCall¢$embedding_56/StatefulPartitionedCall¢$embedding_57/StatefulPartitionedCall¢$embedding_58/StatefulPartitionedCall¢$embedding_59/StatefulPartitionedCall¢"mlp_layer1/StatefulPartitionedCall¢"mlp_layer2/StatefulPartitionedCall¢"mlp_layer3/StatefulPartitionedCall¢"mlp_layer4/StatefulPartitionedCall¢$output_layer/StatefulPartitionedCallñ
$embedding_59/StatefulPartitionedCallStatefulPartitionedCallinputs_1embedding_59_2424013*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_embedding_59_layer_call_and_return_conditional_losses_2423488ï
$embedding_58/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_58_2424016*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_embedding_58_layer_call_and_return_conditional_losses_2423501ä
flatten_58/PartitionedCallPartitionedCall-embedding_58/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_flatten_58_layer_call_and_return_conditional_losses_2423511ä
flatten_59/PartitionedCallPartitionedCall-embedding_59/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_flatten_59_layer_call_and_return_conditional_losses_2423519
concatenate_20/PartitionedCallPartitionedCall#flatten_58/PartitionedCall:output:0#flatten_59/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_concatenate_20_layer_call_and_return_conditional_losses_2423528î
"dropout_10/StatefulPartitionedCallStatefulPartitionedCall'concatenate_20/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_10_layer_call_and_return_conditional_losses_2423918 
"mlp_layer1/StatefulPartitionedCallStatefulPartitionedCall+dropout_10/StatefulPartitionedCall:output:0mlp_layer1_2424023mlp_layer1_2424025*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_mlp_layer1_layer_call_and_return_conditional_losses_2423548
 dropout1/StatefulPartitionedCallStatefulPartitionedCall+mlp_layer1/StatefulPartitionedCall:output:0#^dropout_10/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout1_layer_call_and_return_conditional_losses_2423885Î
#batch_norm1/StatefulPartitionedCallStatefulPartitionedCall)dropout1/StatefulPartitionedCall:output:0batch_norm1_2424029batch_norm1_2424031batch_norm1_2424033batch_norm1_2424035*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_batch_norm1_layer_call_and_return_conditional_losses_2423377¡
"mlp_layer2/StatefulPartitionedCallStatefulPartitionedCall,batch_norm1/StatefulPartitionedCall:output:0mlp_layer2_2424038mlp_layer2_2424040*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_mlp_layer2_layer_call_and_return_conditional_losses_2423581
 dropout2/StatefulPartitionedCallStatefulPartitionedCall+mlp_layer2/StatefulPartitionedCall:output:0!^dropout1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout2_layer_call_and_return_conditional_losses_2423852Î
#batch_norm2/StatefulPartitionedCallStatefulPartitionedCall)dropout2/StatefulPartitionedCall:output:0batch_norm2_2424044batch_norm2_2424046batch_norm2_2424048batch_norm2_2424050*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_batch_norm2_layer_call_and_return_conditional_losses_2423459ñ
$embedding_57/StatefulPartitionedCallStatefulPartitionedCallinputs_1embedding_57_2424053*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_embedding_57_layer_call_and_return_conditional_losses_2423612ï
$embedding_56/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_56_2424056*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_embedding_56_layer_call_and_return_conditional_losses_2423625¡
"mlp_layer3/StatefulPartitionedCallStatefulPartitionedCall,batch_norm2/StatefulPartitionedCall:output:0mlp_layer3_2424059mlp_layer3_2424061*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_mlp_layer3_layer_call_and_return_conditional_losses_2423640ä
flatten_56/PartitionedCallPartitionedCall-embedding_56/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_flatten_56_layer_call_and_return_conditional_losses_2423652ä
flatten_57/PartitionedCallPartitionedCall-embedding_57/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_flatten_57_layer_call_and_return_conditional_losses_2423660
multiply_14/PartitionedCallPartitionedCall#flatten_56/PartitionedCall:output:0#flatten_57/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_multiply_14_layer_call_and_return_conditional_losses_2423668 
"mlp_layer4/StatefulPartitionedCallStatefulPartitionedCall+mlp_layer3/StatefulPartitionedCall:output:0mlp_layer4_2424067mlp_layer4_2424069*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_mlp_layer4_layer_call_and_return_conditional_losses_2423681
concatenate_21/PartitionedCallPartitionedCall$multiply_14/PartitionedCall:output:0+mlp_layer4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_concatenate_21_layer_call_and_return_conditional_losses_2423694¤
$output_layer/StatefulPartitionedCallStatefulPartitionedCall'concatenate_21/PartitionedCall:output:0output_layer_2424073output_layer_2424075*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_output_layer_layer_call_and_return_conditional_losses_2423706|
IdentityIdentity-output_layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
NoOpNoOp$^batch_norm1/StatefulPartitionedCall$^batch_norm2/StatefulPartitionedCall!^dropout1/StatefulPartitionedCall!^dropout2/StatefulPartitionedCall#^dropout_10/StatefulPartitionedCall%^embedding_56/StatefulPartitionedCall%^embedding_57/StatefulPartitionedCall%^embedding_58/StatefulPartitionedCall%^embedding_59/StatefulPartitionedCall#^mlp_layer1/StatefulPartitionedCall#^mlp_layer2/StatefulPartitionedCall#^mlp_layer3/StatefulPartitionedCall#^mlp_layer4/StatefulPartitionedCall%^output_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : 2J
#batch_norm1/StatefulPartitionedCall#batch_norm1/StatefulPartitionedCall2J
#batch_norm2/StatefulPartitionedCall#batch_norm2/StatefulPartitionedCall2D
 dropout1/StatefulPartitionedCall dropout1/StatefulPartitionedCall2D
 dropout2/StatefulPartitionedCall dropout2/StatefulPartitionedCall2H
"dropout_10/StatefulPartitionedCall"dropout_10/StatefulPartitionedCall2L
$embedding_56/StatefulPartitionedCall$embedding_56/StatefulPartitionedCall2L
$embedding_57/StatefulPartitionedCall$embedding_57/StatefulPartitionedCall2L
$embedding_58/StatefulPartitionedCall$embedding_58/StatefulPartitionedCall2L
$embedding_59/StatefulPartitionedCall$embedding_59/StatefulPartitionedCall2H
"mlp_layer1/StatefulPartitionedCall"mlp_layer1/StatefulPartitionedCall2H
"mlp_layer2/StatefulPartitionedCall"mlp_layer2/StatefulPartitionedCall2H
"mlp_layer3/StatefulPartitionedCall"mlp_layer3/StatefulPartitionedCall2H
"mlp_layer4/StatefulPartitionedCall"mlp_layer4/StatefulPartitionedCall2L
$output_layer/StatefulPartitionedCall$output_layer/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¡
Ì
*__inference_model_10_layer_call_fn_2424176
input_29
input_30
unknown:
±í 
	unknown_0:	' 
	unknown_1:@@
	unknown_2:@
	unknown_3:@
	unknown_4:@
	unknown_5:@
	unknown_6:@
	unknown_7:@ 
	unknown_8: 
	unknown_9: 

unknown_10: 

unknown_11: 

unknown_12: 

unknown_13:
±í

unknown_14:	'

unknown_15: 

unknown_16:

unknown_17:

unknown_18:

unknown_19:

unknown_20:
identity¢StatefulPartitionedCallò
StatefulPartitionedCallStatefulPartitionedCallinput_29input_30unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*#
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_model_10_layer_call_and_return_conditional_losses_2424079o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_29:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_30
Å
§
H__inference_batch_norm1_layer_call_and_return_conditional_losses_2424924

inputs/
!batchnorm_readvariableop_resource:@3
%batchnorm_mul_readvariableop_resource:@1
#batchnorm_readvariableop_1_resource:@1
#batchnorm_readvariableop_2_resource:@
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:@z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@º
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

È
-__inference_batch_norm2_layer_call_fn_2425050

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity¢StatefulPartitionedCall÷
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_batch_norm2_layer_call_and_return_conditional_losses_2423412o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs


ø
G__inference_mlp_layer1_layer_call_and_return_conditional_losses_2423548

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ò
©
I__inference_embedding_59_layer_call_and_return_conditional_losses_2423488

inputs,
embedding_lookup_2423482:
±í 
identity¢embedding_lookup»
embedding_lookupResourceGatherembedding_lookup_2423482inputs*
Tindices0*+
_class!
loc:@embedding_lookup/2423482*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0£
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/2423482*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ø\
¬
E__inference_model_10_layer_call_and_return_conditional_losses_2424316
input_29
input_30(
embedding_59_2424250:
±í '
embedding_58_2424253:	' $
mlp_layer1_2424260:@@ 
mlp_layer1_2424262:@!
batch_norm1_2424266:@!
batch_norm1_2424268:@!
batch_norm1_2424270:@!
batch_norm1_2424272:@$
mlp_layer2_2424275:@  
mlp_layer2_2424277: !
batch_norm2_2424281: !
batch_norm2_2424283: !
batch_norm2_2424285: !
batch_norm2_2424287: (
embedding_57_2424290:
±í'
embedding_56_2424293:	'$
mlp_layer3_2424296:  
mlp_layer3_2424298:$
mlp_layer4_2424304: 
mlp_layer4_2424306:&
output_layer_2424310:"
output_layer_2424312:
identity¢#batch_norm1/StatefulPartitionedCall¢#batch_norm2/StatefulPartitionedCall¢ dropout1/StatefulPartitionedCall¢ dropout2/StatefulPartitionedCall¢"dropout_10/StatefulPartitionedCall¢$embedding_56/StatefulPartitionedCall¢$embedding_57/StatefulPartitionedCall¢$embedding_58/StatefulPartitionedCall¢$embedding_59/StatefulPartitionedCall¢"mlp_layer1/StatefulPartitionedCall¢"mlp_layer2/StatefulPartitionedCall¢"mlp_layer3/StatefulPartitionedCall¢"mlp_layer4/StatefulPartitionedCall¢$output_layer/StatefulPartitionedCallñ
$embedding_59/StatefulPartitionedCallStatefulPartitionedCallinput_30embedding_59_2424250*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_embedding_59_layer_call_and_return_conditional_losses_2423488ñ
$embedding_58/StatefulPartitionedCallStatefulPartitionedCallinput_29embedding_58_2424253*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_embedding_58_layer_call_and_return_conditional_losses_2423501ä
flatten_58/PartitionedCallPartitionedCall-embedding_58/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_flatten_58_layer_call_and_return_conditional_losses_2423511ä
flatten_59/PartitionedCallPartitionedCall-embedding_59/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_flatten_59_layer_call_and_return_conditional_losses_2423519
concatenate_20/PartitionedCallPartitionedCall#flatten_58/PartitionedCall:output:0#flatten_59/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_concatenate_20_layer_call_and_return_conditional_losses_2423528î
"dropout_10/StatefulPartitionedCallStatefulPartitionedCall'concatenate_20/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_10_layer_call_and_return_conditional_losses_2423918 
"mlp_layer1/StatefulPartitionedCallStatefulPartitionedCall+dropout_10/StatefulPartitionedCall:output:0mlp_layer1_2424260mlp_layer1_2424262*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_mlp_layer1_layer_call_and_return_conditional_losses_2423548
 dropout1/StatefulPartitionedCallStatefulPartitionedCall+mlp_layer1/StatefulPartitionedCall:output:0#^dropout_10/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout1_layer_call_and_return_conditional_losses_2423885Î
#batch_norm1/StatefulPartitionedCallStatefulPartitionedCall)dropout1/StatefulPartitionedCall:output:0batch_norm1_2424266batch_norm1_2424268batch_norm1_2424270batch_norm1_2424272*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_batch_norm1_layer_call_and_return_conditional_losses_2423377¡
"mlp_layer2/StatefulPartitionedCallStatefulPartitionedCall,batch_norm1/StatefulPartitionedCall:output:0mlp_layer2_2424275mlp_layer2_2424277*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_mlp_layer2_layer_call_and_return_conditional_losses_2423581
 dropout2/StatefulPartitionedCallStatefulPartitionedCall+mlp_layer2/StatefulPartitionedCall:output:0!^dropout1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout2_layer_call_and_return_conditional_losses_2423852Î
#batch_norm2/StatefulPartitionedCallStatefulPartitionedCall)dropout2/StatefulPartitionedCall:output:0batch_norm2_2424281batch_norm2_2424283batch_norm2_2424285batch_norm2_2424287*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_batch_norm2_layer_call_and_return_conditional_losses_2423459ñ
$embedding_57/StatefulPartitionedCallStatefulPartitionedCallinput_30embedding_57_2424290*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_embedding_57_layer_call_and_return_conditional_losses_2423612ñ
$embedding_56/StatefulPartitionedCallStatefulPartitionedCallinput_29embedding_56_2424293*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_embedding_56_layer_call_and_return_conditional_losses_2423625¡
"mlp_layer3/StatefulPartitionedCallStatefulPartitionedCall,batch_norm2/StatefulPartitionedCall:output:0mlp_layer3_2424296mlp_layer3_2424298*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_mlp_layer3_layer_call_and_return_conditional_losses_2423640ä
flatten_56/PartitionedCallPartitionedCall-embedding_56/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_flatten_56_layer_call_and_return_conditional_losses_2423652ä
flatten_57/PartitionedCallPartitionedCall-embedding_57/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_flatten_57_layer_call_and_return_conditional_losses_2423660
multiply_14/PartitionedCallPartitionedCall#flatten_56/PartitionedCall:output:0#flatten_57/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_multiply_14_layer_call_and_return_conditional_losses_2423668 
"mlp_layer4/StatefulPartitionedCallStatefulPartitionedCall+mlp_layer3/StatefulPartitionedCall:output:0mlp_layer4_2424304mlp_layer4_2424306*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_mlp_layer4_layer_call_and_return_conditional_losses_2423681
concatenate_21/PartitionedCallPartitionedCall$multiply_14/PartitionedCall:output:0+mlp_layer4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_concatenate_21_layer_call_and_return_conditional_losses_2423694¤
$output_layer/StatefulPartitionedCallStatefulPartitionedCall'concatenate_21/PartitionedCall:output:0output_layer_2424310output_layer_2424312*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_output_layer_layer_call_and_return_conditional_losses_2423706|
IdentityIdentity-output_layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
NoOpNoOp$^batch_norm1/StatefulPartitionedCall$^batch_norm2/StatefulPartitionedCall!^dropout1/StatefulPartitionedCall!^dropout2/StatefulPartitionedCall#^dropout_10/StatefulPartitionedCall%^embedding_56/StatefulPartitionedCall%^embedding_57/StatefulPartitionedCall%^embedding_58/StatefulPartitionedCall%^embedding_59/StatefulPartitionedCall#^mlp_layer1/StatefulPartitionedCall#^mlp_layer2/StatefulPartitionedCall#^mlp_layer3/StatefulPartitionedCall#^mlp_layer4/StatefulPartitionedCall%^output_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : 2J
#batch_norm1/StatefulPartitionedCall#batch_norm1/StatefulPartitionedCall2J
#batch_norm2/StatefulPartitionedCall#batch_norm2/StatefulPartitionedCall2D
 dropout1/StatefulPartitionedCall dropout1/StatefulPartitionedCall2D
 dropout2/StatefulPartitionedCall dropout2/StatefulPartitionedCall2H
"dropout_10/StatefulPartitionedCall"dropout_10/StatefulPartitionedCall2L
$embedding_56/StatefulPartitionedCall$embedding_56/StatefulPartitionedCall2L
$embedding_57/StatefulPartitionedCall$embedding_57/StatefulPartitionedCall2L
$embedding_58/StatefulPartitionedCall$embedding_58/StatefulPartitionedCall2L
$embedding_59/StatefulPartitionedCall$embedding_59/StatefulPartitionedCall2H
"mlp_layer1/StatefulPartitionedCall"mlp_layer1/StatefulPartitionedCall2H
"mlp_layer2/StatefulPartitionedCall"mlp_layer2/StatefulPartitionedCall2H
"mlp_layer3/StatefulPartitionedCall"mlp_layer3/StatefulPartitionedCall2H
"mlp_layer4/StatefulPartitionedCall"mlp_layer4/StatefulPartitionedCall2L
$output_layer/StatefulPartitionedCall$output_layer/StatefulPartitionedCall:Q M
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_29:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_30


ø
G__inference_mlp_layer3_layer_call_and_return_conditional_losses_2425159

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
«
H
,__inference_flatten_56_layer_call_fn_2425122

inputs
identity²
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_flatten_56_layer_call_and_return_conditional_losses_2423652`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


ø
G__inference_mlp_layer3_layer_call_and_return_conditional_losses_2423640

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Ò
©
I__inference_embedding_57_layer_call_and_return_conditional_losses_2423612

inputs,
embedding_lookup_2423606:
±í
identity¢embedding_lookup»
embedding_lookupResourceGatherembedding_lookup_2423606inputs*
Tindices0*+
_class!
loc:@embedding_lookup/2423606*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0£
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/2423606*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ä
w
K__inference_concatenate_20_layer_call_and_return_conditional_losses_2424804
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :w
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@W
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :Q M
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
inputs/1
È

,__inference_mlp_layer1_layer_call_fn_2424840

inputs
unknown:@@
	unknown_0:@
identity¢StatefulPartitionedCallÜ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_mlp_layer1_layer_call_and_return_conditional_losses_2423548o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

È
-__inference_batch_norm1_layer_call_fn_2424891

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity¢StatefulPartitionedCall÷
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_batch_norm1_layer_call_and_return_conditional_losses_2423330o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
«
H
,__inference_flatten_59_layer_call_fn_2424785

inputs
identity²
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_flatten_59_layer_call_and_return_conditional_losses_2423519`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
°
\
0__inference_concatenate_21_layer_call_fn_2425197
inputs_0
inputs_1
identityÃ
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_concatenate_21_layer_call_and_return_conditional_losses_2423694`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:Q M
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1
È

,__inference_mlp_layer2_layer_call_fn_2424967

inputs
unknown:@ 
	unknown_0: 
identity¢StatefulPartitionedCallÜ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_mlp_layer2_layer_call_and_return_conditional_losses_2423581o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ñ
¨
I__inference_embedding_56_layer_call_and_return_conditional_losses_2423625

inputs+
embedding_lookup_2423619:	'
identity¢embedding_lookup»
embedding_lookupResourceGatherembedding_lookup_2423619inputs*
Tindices0*+
_class!
loc:@embedding_lookup/2423619*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0£
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/2423619*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
«
H
,__inference_flatten_58_layer_call_fn_2424774

inputs
identity²
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_flatten_58_layer_call_and_return_conditional_losses_2423511`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Å
§
H__inference_batch_norm1_layer_call_and_return_conditional_losses_2423330

inputs/
!batchnorm_readvariableop_resource:@3
%batchnorm_mul_readvariableop_resource:@1
#batchnorm_readvariableop_1_resource:@1
#batchnorm_readvariableop_2_resource:@
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:@z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@º
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ñ
¨
I__inference_embedding_56_layer_call_and_return_conditional_losses_2425021

inputs+
embedding_lookup_2425015:	'
identity¢embedding_lookup»
embedding_lookupResourceGatherembedding_lookup_2425015inputs*
Tindices0*+
_class!
loc:@embedding_lookup/2425015*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0£
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/2425015*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ø
c
E__inference_dropout2_layer_call_and_return_conditional_losses_2423592

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
®

.__inference_embedding_57_layer_call_fn_2425028

inputs
unknown:
±í
identity¢StatefulPartitionedCallÕ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_embedding_57_layer_call_and_return_conditional_losses_2423612s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

F
*__inference_dropout2_layer_call_fn_2424983

inputs
identity°
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout2_layer_call_and_return_conditional_losses_2423592`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
õ
e
,__inference_dropout_10_layer_call_fn_2424814

inputs
identity¢StatefulPartitionedCallÂ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_10_layer_call_and_return_conditional_losses_2423918o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs


ø
G__inference_mlp_layer2_layer_call_and_return_conditional_losses_2423581

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs


ø
G__inference_mlp_layer2_layer_call_and_return_conditional_losses_2424978

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs


d
E__inference_dropout1_layer_call_and_return_conditional_losses_2423885

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*
seed[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¿
c
G__inference_flatten_57_layer_call_and_return_conditional_losses_2423660

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


d
E__inference_dropout2_layer_call_and_return_conditional_losses_2423852

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
¿
c
G__inference_flatten_59_layer_call_and_return_conditional_losses_2424791

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Ò
©
I__inference_embedding_59_layer_call_and_return_conditional_losses_2424769

inputs,
embedding_lookup_2424763:
±í 
identity¢embedding_lookup»
embedding_lookupResourceGatherembedding_lookup_2424763inputs*
Tindices0*+
_class!
loc:@embedding_lookup/2424763*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0£
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/2424763*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
«
H
,__inference_flatten_57_layer_call_fn_2425133

inputs
identity²
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_flatten_57_layer_call_and_return_conditional_losses_2423660`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¿
c
G__inference_flatten_58_layer_call_and_return_conditional_losses_2423511

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
£
H
,__inference_dropout_10_layer_call_fn_2424809

inputs
identity²
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_10_layer_call_and_return_conditional_losses_2423535`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ä
w
K__inference_concatenate_21_layer_call_and_return_conditional_losses_2425204
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :w
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:Q M
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1
Ä

E__inference_model_10_layer_call_and_return_conditional_losses_2424685
inputs_0
inputs_19
%embedding_59_embedding_lookup_2424533:
±í 8
%embedding_58_embedding_lookup_2424538:	' ;
)mlp_layer1_matmul_readvariableop_resource:@@8
*mlp_layer1_biasadd_readvariableop_resource:@A
3batch_norm1_assignmovingavg_readvariableop_resource:@C
5batch_norm1_assignmovingavg_1_readvariableop_resource:@?
1batch_norm1_batchnorm_mul_readvariableop_resource:@;
-batch_norm1_batchnorm_readvariableop_resource:@;
)mlp_layer2_matmul_readvariableop_resource:@ 8
*mlp_layer2_biasadd_readvariableop_resource: A
3batch_norm2_assignmovingavg_readvariableop_resource: C
5batch_norm2_assignmovingavg_1_readvariableop_resource: ?
1batch_norm2_batchnorm_mul_readvariableop_resource: ;
-batch_norm2_batchnorm_readvariableop_resource: 9
%embedding_57_embedding_lookup_2424647:
±í8
%embedding_56_embedding_lookup_2424652:	';
)mlp_layer3_matmul_readvariableop_resource: 8
*mlp_layer3_biasadd_readvariableop_resource:;
)mlp_layer4_matmul_readvariableop_resource:8
*mlp_layer4_biasadd_readvariableop_resource:=
+output_layer_matmul_readvariableop_resource::
,output_layer_biasadd_readvariableop_resource:
identity¢batch_norm1/AssignMovingAvg¢*batch_norm1/AssignMovingAvg/ReadVariableOp¢batch_norm1/AssignMovingAvg_1¢,batch_norm1/AssignMovingAvg_1/ReadVariableOp¢$batch_norm1/batchnorm/ReadVariableOp¢(batch_norm1/batchnorm/mul/ReadVariableOp¢batch_norm2/AssignMovingAvg¢*batch_norm2/AssignMovingAvg/ReadVariableOp¢batch_norm2/AssignMovingAvg_1¢,batch_norm2/AssignMovingAvg_1/ReadVariableOp¢$batch_norm2/batchnorm/ReadVariableOp¢(batch_norm2/batchnorm/mul/ReadVariableOp¢embedding_56/embedding_lookup¢embedding_57/embedding_lookup¢embedding_58/embedding_lookup¢embedding_59/embedding_lookup¢!mlp_layer1/BiasAdd/ReadVariableOp¢ mlp_layer1/MatMul/ReadVariableOp¢!mlp_layer2/BiasAdd/ReadVariableOp¢ mlp_layer2/MatMul/ReadVariableOp¢!mlp_layer3/BiasAdd/ReadVariableOp¢ mlp_layer3/MatMul/ReadVariableOp¢!mlp_layer4/BiasAdd/ReadVariableOp¢ mlp_layer4/MatMul/ReadVariableOp¢#output_layer/BiasAdd/ReadVariableOp¢"output_layer/MatMul/ReadVariableOpä
embedding_59/embedding_lookupResourceGather%embedding_59_embedding_lookup_2424533inputs_1*
Tindices0*8
_class.
,*loc:@embedding_59/embedding_lookup/2424533*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0Ê
&embedding_59/embedding_lookup/IdentityIdentity&embedding_59/embedding_lookup:output:0*
T0*8
_class.
,*loc:@embedding_59/embedding_lookup/2424533*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(embedding_59/embedding_lookup/Identity_1Identity/embedding_59/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ä
embedding_58/embedding_lookupResourceGather%embedding_58_embedding_lookup_2424538inputs_0*
Tindices0*8
_class.
,*loc:@embedding_58/embedding_lookup/2424538*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0Ê
&embedding_58/embedding_lookup/IdentityIdentity&embedding_58/embedding_lookup:output:0*
T0*8
_class.
,*loc:@embedding_58/embedding_lookup/2424538*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(embedding_58/embedding_lookup/Identity_1Identity/embedding_58/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ a
flatten_58/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    
flatten_58/ReshapeReshape1embedding_58/embedding_lookup/Identity_1:output:0flatten_58/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ a
flatten_59/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    
flatten_59/ReshapeReshape1embedding_59/embedding_lookup/Identity_1:output:0flatten_59/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ \
concatenate_20/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :»
concatenate_20/concatConcatV2flatten_58/Reshape:output:0flatten_59/Reshape:output:0#concatenate_20/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@]
dropout_10/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
dropout_10/dropout/MulMulconcatenate_20/concat:output:0!dropout_10/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f
dropout_10/dropout/ShapeShapeconcatenate_20/concat:output:0*
T0*
_output_shapes
:¯
/dropout_10/dropout/random_uniform/RandomUniformRandomUniform!dropout_10/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*
seedf
!dropout_10/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Ç
dropout_10/dropout/GreaterEqualGreaterEqual8dropout_10/dropout/random_uniform/RandomUniform:output:0*dropout_10/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dropout_10/dropout/CastCast#dropout_10/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dropout_10/dropout/Mul_1Muldropout_10/dropout/Mul:z:0dropout_10/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 mlp_layer1/MatMul/ReadVariableOpReadVariableOp)mlp_layer1_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0
mlp_layer1/MatMulMatMuldropout_10/dropout/Mul_1:z:0(mlp_layer1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
!mlp_layer1/BiasAdd/ReadVariableOpReadVariableOp*mlp_layer1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
mlp_layer1/BiasAddBiasAddmlp_layer1/MatMul:product:0)mlp_layer1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f
mlp_layer1/ReluRelumlp_layer1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@[
dropout1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
dropout1/dropout/MulMulmlp_layer1/Relu:activations:0dropout1/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c
dropout1/dropout/ShapeShapemlp_layer1/Relu:activations:0*
T0*
_output_shapes
:¸
-dropout1/dropout/random_uniform/RandomUniformRandomUniformdropout1/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0*
seed*
seed2d
dropout1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Á
dropout1/dropout/GreaterEqualGreaterEqual6dropout1/dropout/random_uniform/RandomUniform:output:0(dropout1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dropout1/dropout/CastCast!dropout1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dropout1/dropout/Mul_1Muldropout1/dropout/Mul:z:0dropout1/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@t
*batch_norm1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: «
batch_norm1/moments/meanMeandropout1/dropout/Mul_1:z:03batch_norm1/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(|
 batch_norm1/moments/StopGradientStopGradient!batch_norm1/moments/mean:output:0*
T0*
_output_shapes

:@³
%batch_norm1/moments/SquaredDifferenceSquaredDifferencedropout1/dropout/Mul_1:z:0)batch_norm1/moments/StopGradient:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@x
.batch_norm1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: Â
batch_norm1/moments/varianceMean)batch_norm1/moments/SquaredDifference:z:07batch_norm1/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(
batch_norm1/moments/SqueezeSqueeze!batch_norm1/moments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 
batch_norm1/moments/Squeeze_1Squeeze%batch_norm1/moments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 f
!batch_norm1/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
*batch_norm1/AssignMovingAvg/ReadVariableOpReadVariableOp3batch_norm1_assignmovingavg_readvariableop_resource*
_output_shapes
:@*
dtype0¥
batch_norm1/AssignMovingAvg/subSub2batch_norm1/AssignMovingAvg/ReadVariableOp:value:0$batch_norm1/moments/Squeeze:output:0*
T0*
_output_shapes
:@
batch_norm1/AssignMovingAvg/mulMul#batch_norm1/AssignMovingAvg/sub:z:0*batch_norm1/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:@Ü
batch_norm1/AssignMovingAvgAssignSubVariableOp3batch_norm1_assignmovingavg_readvariableop_resource#batch_norm1/AssignMovingAvg/mul:z:0+^batch_norm1/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0h
#batch_norm1/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
,batch_norm1/AssignMovingAvg_1/ReadVariableOpReadVariableOp5batch_norm1_assignmovingavg_1_readvariableop_resource*
_output_shapes
:@*
dtype0«
!batch_norm1/AssignMovingAvg_1/subSub4batch_norm1/AssignMovingAvg_1/ReadVariableOp:value:0&batch_norm1/moments/Squeeze_1:output:0*
T0*
_output_shapes
:@¢
!batch_norm1/AssignMovingAvg_1/mulMul%batch_norm1/AssignMovingAvg_1/sub:z:0,batch_norm1/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:@ä
batch_norm1/AssignMovingAvg_1AssignSubVariableOp5batch_norm1_assignmovingavg_1_readvariableop_resource%batch_norm1/AssignMovingAvg_1/mul:z:0-^batch_norm1/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0`
batch_norm1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:
batch_norm1/batchnorm/addAddV2&batch_norm1/moments/Squeeze_1:output:0$batch_norm1/batchnorm/add/y:output:0*
T0*
_output_shapes
:@h
batch_norm1/batchnorm/RsqrtRsqrtbatch_norm1/batchnorm/add:z:0*
T0*
_output_shapes
:@
(batch_norm1/batchnorm/mul/ReadVariableOpReadVariableOp1batch_norm1_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0
batch_norm1/batchnorm/mulMulbatch_norm1/batchnorm/Rsqrt:y:00batch_norm1/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@
batch_norm1/batchnorm/mul_1Muldropout1/dropout/Mul_1:z:0batch_norm1/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
batch_norm1/batchnorm/mul_2Mul$batch_norm1/moments/Squeeze:output:0batch_norm1/batchnorm/mul:z:0*
T0*
_output_shapes
:@
$batch_norm1/batchnorm/ReadVariableOpReadVariableOp-batch_norm1_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0
batch_norm1/batchnorm/subSub,batch_norm1/batchnorm/ReadVariableOp:value:0batch_norm1/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@
batch_norm1/batchnorm/add_1AddV2batch_norm1/batchnorm/mul_1:z:0batch_norm1/batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 mlp_layer2/MatMul/ReadVariableOpReadVariableOp)mlp_layer2_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0
mlp_layer2/MatMulMatMulbatch_norm1/batchnorm/add_1:z:0(mlp_layer2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
!mlp_layer2/BiasAdd/ReadVariableOpReadVariableOp*mlp_layer2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
mlp_layer2/BiasAddBiasAddmlp_layer2/MatMul:product:0)mlp_layer2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ f
mlp_layer2/ReluRelumlp_layer2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [
dropout2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
dropout2/dropout/MulMulmlp_layer2/Relu:activations:0dropout2/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ c
dropout2/dropout/ShapeShapemlp_layer2/Relu:activations:0*
T0*
_output_shapes
:¸
-dropout2/dropout/random_uniform/RandomUniformRandomUniformdropout2/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed*
seed2d
dropout2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Á
dropout2/dropout/GreaterEqualGreaterEqual6dropout2/dropout/random_uniform/RandomUniform:output:0(dropout2/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dropout2/dropout/CastCast!dropout2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dropout2/dropout/Mul_1Muldropout2/dropout/Mul:z:0dropout2/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ t
*batch_norm2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: «
batch_norm2/moments/meanMeandropout2/dropout/Mul_1:z:03batch_norm2/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

: *
	keep_dims(|
 batch_norm2/moments/StopGradientStopGradient!batch_norm2/moments/mean:output:0*
T0*
_output_shapes

: ³
%batch_norm2/moments/SquaredDifferenceSquaredDifferencedropout2/dropout/Mul_1:z:0)batch_norm2/moments/StopGradient:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ x
.batch_norm2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: Â
batch_norm2/moments/varianceMean)batch_norm2/moments/SquaredDifference:z:07batch_norm2/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

: *
	keep_dims(
batch_norm2/moments/SqueezeSqueeze!batch_norm2/moments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 
batch_norm2/moments/Squeeze_1Squeeze%batch_norm2/moments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 f
!batch_norm2/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
*batch_norm2/AssignMovingAvg/ReadVariableOpReadVariableOp3batch_norm2_assignmovingavg_readvariableop_resource*
_output_shapes
: *
dtype0¥
batch_norm2/AssignMovingAvg/subSub2batch_norm2/AssignMovingAvg/ReadVariableOp:value:0$batch_norm2/moments/Squeeze:output:0*
T0*
_output_shapes
: 
batch_norm2/AssignMovingAvg/mulMul#batch_norm2/AssignMovingAvg/sub:z:0*batch_norm2/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
: Ü
batch_norm2/AssignMovingAvgAssignSubVariableOp3batch_norm2_assignmovingavg_readvariableop_resource#batch_norm2/AssignMovingAvg/mul:z:0+^batch_norm2/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0h
#batch_norm2/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
,batch_norm2/AssignMovingAvg_1/ReadVariableOpReadVariableOp5batch_norm2_assignmovingavg_1_readvariableop_resource*
_output_shapes
: *
dtype0«
!batch_norm2/AssignMovingAvg_1/subSub4batch_norm2/AssignMovingAvg_1/ReadVariableOp:value:0&batch_norm2/moments/Squeeze_1:output:0*
T0*
_output_shapes
: ¢
!batch_norm2/AssignMovingAvg_1/mulMul%batch_norm2/AssignMovingAvg_1/sub:z:0,batch_norm2/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
: ä
batch_norm2/AssignMovingAvg_1AssignSubVariableOp5batch_norm2_assignmovingavg_1_readvariableop_resource%batch_norm2/AssignMovingAvg_1/mul:z:0-^batch_norm2/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0`
batch_norm2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:
batch_norm2/batchnorm/addAddV2&batch_norm2/moments/Squeeze_1:output:0$batch_norm2/batchnorm/add/y:output:0*
T0*
_output_shapes
: h
batch_norm2/batchnorm/RsqrtRsqrtbatch_norm2/batchnorm/add:z:0*
T0*
_output_shapes
: 
(batch_norm2/batchnorm/mul/ReadVariableOpReadVariableOp1batch_norm2_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0
batch_norm2/batchnorm/mulMulbatch_norm2/batchnorm/Rsqrt:y:00batch_norm2/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 
batch_norm2/batchnorm/mul_1Muldropout2/dropout/Mul_1:z:0batch_norm2/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
batch_norm2/batchnorm/mul_2Mul$batch_norm2/moments/Squeeze:output:0batch_norm2/batchnorm/mul:z:0*
T0*
_output_shapes
: 
$batch_norm2/batchnorm/ReadVariableOpReadVariableOp-batch_norm2_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0
batch_norm2/batchnorm/subSub,batch_norm2/batchnorm/ReadVariableOp:value:0batch_norm2/batchnorm/mul_2:z:0*
T0*
_output_shapes
: 
batch_norm2/batchnorm/add_1AddV2batch_norm2/batchnorm/mul_1:z:0batch_norm2/batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ä
embedding_57/embedding_lookupResourceGather%embedding_57_embedding_lookup_2424647inputs_1*
Tindices0*8
_class.
,*loc:@embedding_57/embedding_lookup/2424647*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0Ê
&embedding_57/embedding_lookup/IdentityIdentity&embedding_57/embedding_lookup:output:0*
T0*8
_class.
,*loc:@embedding_57/embedding_lookup/2424647*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(embedding_57/embedding_lookup/Identity_1Identity/embedding_57/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿä
embedding_56/embedding_lookupResourceGather%embedding_56_embedding_lookup_2424652inputs_0*
Tindices0*8
_class.
,*loc:@embedding_56/embedding_lookup/2424652*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0Ê
&embedding_56/embedding_lookup/IdentityIdentity&embedding_56/embedding_lookup:output:0*
T0*8
_class.
,*loc:@embedding_56/embedding_lookup/2424652*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(embedding_56/embedding_lookup/Identity_1Identity/embedding_56/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 mlp_layer3/MatMul/ReadVariableOpReadVariableOp)mlp_layer3_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
mlp_layer3/MatMulMatMulbatch_norm2/batchnorm/add_1:z:0(mlp_layer3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!mlp_layer3/BiasAdd/ReadVariableOpReadVariableOp*mlp_layer3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
mlp_layer3/BiasAddBiasAddmlp_layer3/MatMul:product:0)mlp_layer3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
mlp_layer3/ReluRelumlp_layer3/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
flatten_56/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
flatten_56/ReshapeReshape1embedding_56/embedding_lookup/Identity_1:output:0flatten_56/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
flatten_57/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
flatten_57/ReshapeReshape1embedding_57/embedding_lookup/Identity_1:output:0flatten_57/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
multiply_14/mulMulflatten_56/Reshape:output:0flatten_57/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 mlp_layer4/MatMul/ReadVariableOpReadVariableOp)mlp_layer4_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
mlp_layer4/MatMulMatMulmlp_layer3/Relu:activations:0(mlp_layer4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!mlp_layer4/BiasAdd/ReadVariableOpReadVariableOp*mlp_layer4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
mlp_layer4/BiasAddBiasAddmlp_layer4/MatMul:product:0)mlp_layer4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
mlp_layer4/ReluRelumlp_layer4/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
concatenate_21/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :µ
concatenate_21/concatConcatV2multiply_14/mul:z:0mlp_layer4/Relu:activations:0#concatenate_21/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"output_layer/MatMul/ReadVariableOpReadVariableOp+output_layer_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
output_layer/MatMulMatMulconcatenate_21/concat:output:0*output_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#output_layer/BiasAdd/ReadVariableOpReadVariableOp,output_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
output_layer/BiasAddBiasAddoutput_layer/MatMul:product:0+output_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
IdentityIdentityoutput_layer/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^batch_norm1/AssignMovingAvg+^batch_norm1/AssignMovingAvg/ReadVariableOp^batch_norm1/AssignMovingAvg_1-^batch_norm1/AssignMovingAvg_1/ReadVariableOp%^batch_norm1/batchnorm/ReadVariableOp)^batch_norm1/batchnorm/mul/ReadVariableOp^batch_norm2/AssignMovingAvg+^batch_norm2/AssignMovingAvg/ReadVariableOp^batch_norm2/AssignMovingAvg_1-^batch_norm2/AssignMovingAvg_1/ReadVariableOp%^batch_norm2/batchnorm/ReadVariableOp)^batch_norm2/batchnorm/mul/ReadVariableOp^embedding_56/embedding_lookup^embedding_57/embedding_lookup^embedding_58/embedding_lookup^embedding_59/embedding_lookup"^mlp_layer1/BiasAdd/ReadVariableOp!^mlp_layer1/MatMul/ReadVariableOp"^mlp_layer2/BiasAdd/ReadVariableOp!^mlp_layer2/MatMul/ReadVariableOp"^mlp_layer3/BiasAdd/ReadVariableOp!^mlp_layer3/MatMul/ReadVariableOp"^mlp_layer4/BiasAdd/ReadVariableOp!^mlp_layer4/MatMul/ReadVariableOp$^output_layer/BiasAdd/ReadVariableOp#^output_layer/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : 2:
batch_norm1/AssignMovingAvgbatch_norm1/AssignMovingAvg2X
*batch_norm1/AssignMovingAvg/ReadVariableOp*batch_norm1/AssignMovingAvg/ReadVariableOp2>
batch_norm1/AssignMovingAvg_1batch_norm1/AssignMovingAvg_12\
,batch_norm1/AssignMovingAvg_1/ReadVariableOp,batch_norm1/AssignMovingAvg_1/ReadVariableOp2L
$batch_norm1/batchnorm/ReadVariableOp$batch_norm1/batchnorm/ReadVariableOp2T
(batch_norm1/batchnorm/mul/ReadVariableOp(batch_norm1/batchnorm/mul/ReadVariableOp2:
batch_norm2/AssignMovingAvgbatch_norm2/AssignMovingAvg2X
*batch_norm2/AssignMovingAvg/ReadVariableOp*batch_norm2/AssignMovingAvg/ReadVariableOp2>
batch_norm2/AssignMovingAvg_1batch_norm2/AssignMovingAvg_12\
,batch_norm2/AssignMovingAvg_1/ReadVariableOp,batch_norm2/AssignMovingAvg_1/ReadVariableOp2L
$batch_norm2/batchnorm/ReadVariableOp$batch_norm2/batchnorm/ReadVariableOp2T
(batch_norm2/batchnorm/mul/ReadVariableOp(batch_norm2/batchnorm/mul/ReadVariableOp2>
embedding_56/embedding_lookupembedding_56/embedding_lookup2>
embedding_57/embedding_lookupembedding_57/embedding_lookup2>
embedding_58/embedding_lookupembedding_58/embedding_lookup2>
embedding_59/embedding_lookupembedding_59/embedding_lookup2F
!mlp_layer1/BiasAdd/ReadVariableOp!mlp_layer1/BiasAdd/ReadVariableOp2D
 mlp_layer1/MatMul/ReadVariableOp mlp_layer1/MatMul/ReadVariableOp2F
!mlp_layer2/BiasAdd/ReadVariableOp!mlp_layer2/BiasAdd/ReadVariableOp2D
 mlp_layer2/MatMul/ReadVariableOp mlp_layer2/MatMul/ReadVariableOp2F
!mlp_layer3/BiasAdd/ReadVariableOp!mlp_layer3/BiasAdd/ReadVariableOp2D
 mlp_layer3/MatMul/ReadVariableOp mlp_layer3/MatMul/ReadVariableOp2F
!mlp_layer4/BiasAdd/ReadVariableOp!mlp_layer4/BiasAdd/ReadVariableOp2D
 mlp_layer4/MatMul/ReadVariableOp mlp_layer4/MatMul/ReadVariableOp2J
#output_layer/BiasAdd/ReadVariableOp#output_layer/BiasAdd/ReadVariableOp2H
"output_layer/MatMul/ReadVariableOp"output_layer/MatMul/ReadVariableOp:Q M
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1
È

,__inference_mlp_layer4_layer_call_fn_2425180

inputs
unknown:
	unknown_0:
identity¢StatefulPartitionedCallÜ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_mlp_layer4_layer_call_and_return_conditional_losses_2423681o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

F
*__inference_dropout1_layer_call_fn_2424856

inputs
identity°
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout1_layer_call_and_return_conditional_losses_2423559`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ø
c
E__inference_dropout1_layer_call_and_return_conditional_losses_2424866

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ª
Y
-__inference_multiply_14_layer_call_fn_2425165
inputs_0
inputs_1
identityÀ
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_multiply_14_layer_call_and_return_conditional_losses_2423668`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:Q M
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1
Ø
c
E__inference_dropout1_layer_call_and_return_conditional_losses_2423559

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ñ
c
*__inference_dropout1_layer_call_fn_2424861

inputs
identity¢StatefulPartitionedCallÀ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout1_layer_call_and_return_conditional_losses_2423885o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¿
c
G__inference_flatten_58_layer_call_and_return_conditional_losses_2424780

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Ì	
ú
I__inference_output_layer_layer_call_and_return_conditional_losses_2425223

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ú
e
G__inference_dropout_10_layer_call_and_return_conditional_losses_2423535

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
%
á
H__inference_batch_norm1_layer_call_and_return_conditional_losses_2423377

inputs5
'assignmovingavg_readvariableop_resource:@7
)assignmovingavg_1_readvariableop_resource:@3
%batchnorm_mul_readvariableop_resource:@/
!batchnorm_readvariableop_resource:@
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:@
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:@*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:@x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:@¬
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:@*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:@~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:@´
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:@v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ê
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¼
u
K__inference_concatenate_21_layer_call_and_return_conditional_losses_2423694

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :u
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
­

.__inference_embedding_58_layer_call_fn_2424744

inputs
unknown:	' 
identity¢StatefulPartitionedCallÕ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_embedding_58_layer_call_and_return_conditional_losses_2423501s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¦
Å
"__inference__wrapped_model_2423306
input_29
input_30B
.model_10_embedding_59_embedding_lookup_2423203:
±í A
.model_10_embedding_58_embedding_lookup_2423208:	' D
2model_10_mlp_layer1_matmul_readvariableop_resource:@@A
3model_10_mlp_layer1_biasadd_readvariableop_resource:@D
6model_10_batch_norm1_batchnorm_readvariableop_resource:@H
:model_10_batch_norm1_batchnorm_mul_readvariableop_resource:@F
8model_10_batch_norm1_batchnorm_readvariableop_1_resource:@F
8model_10_batch_norm1_batchnorm_readvariableop_2_resource:@D
2model_10_mlp_layer2_matmul_readvariableop_resource:@ A
3model_10_mlp_layer2_biasadd_readvariableop_resource: D
6model_10_batch_norm2_batchnorm_readvariableop_resource: H
:model_10_batch_norm2_batchnorm_mul_readvariableop_resource: F
8model_10_batch_norm2_batchnorm_readvariableop_1_resource: F
8model_10_batch_norm2_batchnorm_readvariableop_2_resource: B
.model_10_embedding_57_embedding_lookup_2423268:
±íA
.model_10_embedding_56_embedding_lookup_2423273:	'D
2model_10_mlp_layer3_matmul_readvariableop_resource: A
3model_10_mlp_layer3_biasadd_readvariableop_resource:D
2model_10_mlp_layer4_matmul_readvariableop_resource:A
3model_10_mlp_layer4_biasadd_readvariableop_resource:F
4model_10_output_layer_matmul_readvariableop_resource:C
5model_10_output_layer_biasadd_readvariableop_resource:
identity¢-model_10/batch_norm1/batchnorm/ReadVariableOp¢/model_10/batch_norm1/batchnorm/ReadVariableOp_1¢/model_10/batch_norm1/batchnorm/ReadVariableOp_2¢1model_10/batch_norm1/batchnorm/mul/ReadVariableOp¢-model_10/batch_norm2/batchnorm/ReadVariableOp¢/model_10/batch_norm2/batchnorm/ReadVariableOp_1¢/model_10/batch_norm2/batchnorm/ReadVariableOp_2¢1model_10/batch_norm2/batchnorm/mul/ReadVariableOp¢&model_10/embedding_56/embedding_lookup¢&model_10/embedding_57/embedding_lookup¢&model_10/embedding_58/embedding_lookup¢&model_10/embedding_59/embedding_lookup¢*model_10/mlp_layer1/BiasAdd/ReadVariableOp¢)model_10/mlp_layer1/MatMul/ReadVariableOp¢*model_10/mlp_layer2/BiasAdd/ReadVariableOp¢)model_10/mlp_layer2/MatMul/ReadVariableOp¢*model_10/mlp_layer3/BiasAdd/ReadVariableOp¢)model_10/mlp_layer3/MatMul/ReadVariableOp¢*model_10/mlp_layer4/BiasAdd/ReadVariableOp¢)model_10/mlp_layer4/MatMul/ReadVariableOp¢,model_10/output_layer/BiasAdd/ReadVariableOp¢+model_10/output_layer/MatMul/ReadVariableOpÿ
&model_10/embedding_59/embedding_lookupResourceGather.model_10_embedding_59_embedding_lookup_2423203input_30*
Tindices0*A
_class7
53loc:@model_10/embedding_59/embedding_lookup/2423203*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0å
/model_10/embedding_59/embedding_lookup/IdentityIdentity/model_10/embedding_59/embedding_lookup:output:0*
T0*A
_class7
53loc:@model_10/embedding_59/embedding_lookup/2423203*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ­
1model_10/embedding_59/embedding_lookup/Identity_1Identity8model_10/embedding_59/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ÿ
&model_10/embedding_58/embedding_lookupResourceGather.model_10_embedding_58_embedding_lookup_2423208input_29*
Tindices0*A
_class7
53loc:@model_10/embedding_58/embedding_lookup/2423208*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0å
/model_10/embedding_58/embedding_lookup/IdentityIdentity/model_10/embedding_58/embedding_lookup:output:0*
T0*A
_class7
53loc:@model_10/embedding_58/embedding_lookup/2423208*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ­
1model_10/embedding_58/embedding_lookup/Identity_1Identity8model_10/embedding_58/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ j
model_10/flatten_58/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ¸
model_10/flatten_58/ReshapeReshape:model_10/embedding_58/embedding_lookup/Identity_1:output:0"model_10/flatten_58/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ j
model_10/flatten_59/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ    ¸
model_10/flatten_59/ReshapeReshape:model_10/embedding_59/embedding_lookup/Identity_1:output:0"model_10/flatten_59/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ e
#model_10/concatenate_20/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ß
model_10/concatenate_20/concatConcatV2$model_10/flatten_58/Reshape:output:0$model_10/flatten_59/Reshape:output:0,model_10/concatenate_20/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
model_10/dropout_10/IdentityIdentity'model_10/concatenate_20/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
)model_10/mlp_layer1/MatMul/ReadVariableOpReadVariableOp2model_10_mlp_layer1_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0°
model_10/mlp_layer1/MatMulMatMul%model_10/dropout_10/Identity:output:01model_10/mlp_layer1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
*model_10/mlp_layer1/BiasAdd/ReadVariableOpReadVariableOp3model_10_mlp_layer1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0²
model_10/mlp_layer1/BiasAddBiasAdd$model_10/mlp_layer1/MatMul:product:02model_10/mlp_layer1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@x
model_10/mlp_layer1/ReluRelu$model_10/mlp_layer1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
model_10/dropout1/IdentityIdentity&model_10/mlp_layer1/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ 
-model_10/batch_norm1/batchnorm/ReadVariableOpReadVariableOp6model_10_batch_norm1_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0i
$model_10/batch_norm1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:¶
"model_10/batch_norm1/batchnorm/addAddV25model_10/batch_norm1/batchnorm/ReadVariableOp:value:0-model_10/batch_norm1/batchnorm/add/y:output:0*
T0*
_output_shapes
:@z
$model_10/batch_norm1/batchnorm/RsqrtRsqrt&model_10/batch_norm1/batchnorm/add:z:0*
T0*
_output_shapes
:@¨
1model_10/batch_norm1/batchnorm/mul/ReadVariableOpReadVariableOp:model_10_batch_norm1_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0³
"model_10/batch_norm1/batchnorm/mulMul(model_10/batch_norm1/batchnorm/Rsqrt:y:09model_10/batch_norm1/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@ª
$model_10/batch_norm1/batchnorm/mul_1Mul#model_10/dropout1/Identity:output:0&model_10/batch_norm1/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¤
/model_10/batch_norm1/batchnorm/ReadVariableOp_1ReadVariableOp8model_10_batch_norm1_batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype0±
$model_10/batch_norm1/batchnorm/mul_2Mul7model_10/batch_norm1/batchnorm/ReadVariableOp_1:value:0&model_10/batch_norm1/batchnorm/mul:z:0*
T0*
_output_shapes
:@¤
/model_10/batch_norm1/batchnorm/ReadVariableOp_2ReadVariableOp8model_10_batch_norm1_batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype0±
"model_10/batch_norm1/batchnorm/subSub7model_10/batch_norm1/batchnorm/ReadVariableOp_2:value:0(model_10/batch_norm1/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@±
$model_10/batch_norm1/batchnorm/add_1AddV2(model_10/batch_norm1/batchnorm/mul_1:z:0&model_10/batch_norm1/batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
)model_10/mlp_layer2/MatMul/ReadVariableOpReadVariableOp2model_10_mlp_layer2_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0³
model_10/mlp_layer2/MatMulMatMul(model_10/batch_norm1/batchnorm/add_1:z:01model_10/mlp_layer2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
*model_10/mlp_layer2/BiasAdd/ReadVariableOpReadVariableOp3model_10_mlp_layer2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0²
model_10/mlp_layer2/BiasAddBiasAdd$model_10/mlp_layer2/MatMul:product:02model_10/mlp_layer2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ x
model_10/mlp_layer2/ReluRelu$model_10/mlp_layer2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
model_10/dropout2/IdentityIdentity&model_10/mlp_layer2/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
-model_10/batch_norm2/batchnorm/ReadVariableOpReadVariableOp6model_10_batch_norm2_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0i
$model_10/batch_norm2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:¶
"model_10/batch_norm2/batchnorm/addAddV25model_10/batch_norm2/batchnorm/ReadVariableOp:value:0-model_10/batch_norm2/batchnorm/add/y:output:0*
T0*
_output_shapes
: z
$model_10/batch_norm2/batchnorm/RsqrtRsqrt&model_10/batch_norm2/batchnorm/add:z:0*
T0*
_output_shapes
: ¨
1model_10/batch_norm2/batchnorm/mul/ReadVariableOpReadVariableOp:model_10_batch_norm2_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0³
"model_10/batch_norm2/batchnorm/mulMul(model_10/batch_norm2/batchnorm/Rsqrt:y:09model_10/batch_norm2/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: ª
$model_10/batch_norm2/batchnorm/mul_1Mul#model_10/dropout2/Identity:output:0&model_10/batch_norm2/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ¤
/model_10/batch_norm2/batchnorm/ReadVariableOp_1ReadVariableOp8model_10_batch_norm2_batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype0±
$model_10/batch_norm2/batchnorm/mul_2Mul7model_10/batch_norm2/batchnorm/ReadVariableOp_1:value:0&model_10/batch_norm2/batchnorm/mul:z:0*
T0*
_output_shapes
: ¤
/model_10/batch_norm2/batchnorm/ReadVariableOp_2ReadVariableOp8model_10_batch_norm2_batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype0±
"model_10/batch_norm2/batchnorm/subSub7model_10/batch_norm2/batchnorm/ReadVariableOp_2:value:0(model_10/batch_norm2/batchnorm/mul_2:z:0*
T0*
_output_shapes
: ±
$model_10/batch_norm2/batchnorm/add_1AddV2(model_10/batch_norm2/batchnorm/mul_1:z:0&model_10/batch_norm2/batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ÿ
&model_10/embedding_57/embedding_lookupResourceGather.model_10_embedding_57_embedding_lookup_2423268input_30*
Tindices0*A
_class7
53loc:@model_10/embedding_57/embedding_lookup/2423268*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0å
/model_10/embedding_57/embedding_lookup/IdentityIdentity/model_10/embedding_57/embedding_lookup:output:0*
T0*A
_class7
53loc:@model_10/embedding_57/embedding_lookup/2423268*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ­
1model_10/embedding_57/embedding_lookup/Identity_1Identity8model_10/embedding_57/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿ
&model_10/embedding_56/embedding_lookupResourceGather.model_10_embedding_56_embedding_lookup_2423273input_29*
Tindices0*A
_class7
53loc:@model_10/embedding_56/embedding_lookup/2423273*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0å
/model_10/embedding_56/embedding_lookup/IdentityIdentity/model_10/embedding_56/embedding_lookup:output:0*
T0*A
_class7
53loc:@model_10/embedding_56/embedding_lookup/2423273*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ­
1model_10/embedding_56/embedding_lookup/Identity_1Identity8model_10/embedding_56/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)model_10/mlp_layer3/MatMul/ReadVariableOpReadVariableOp2model_10_mlp_layer3_matmul_readvariableop_resource*
_output_shapes

: *
dtype0³
model_10/mlp_layer3/MatMulMatMul(model_10/batch_norm2/batchnorm/add_1:z:01model_10/mlp_layer3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*model_10/mlp_layer3/BiasAdd/ReadVariableOpReadVariableOp3model_10_mlp_layer3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0²
model_10/mlp_layer3/BiasAddBiasAdd$model_10/mlp_layer3/MatMul:product:02model_10/mlp_layer3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
model_10/mlp_layer3/ReluRelu$model_10/mlp_layer3/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
model_10/flatten_56/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
model_10/flatten_56/ReshapeReshape:model_10/embedding_56/embedding_lookup/Identity_1:output:0"model_10/flatten_56/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
model_10/flatten_57/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
model_10/flatten_57/ReshapeReshape:model_10/embedding_57/embedding_lookup/Identity_1:output:0"model_10/flatten_57/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
model_10/multiply_14/mulMul$model_10/flatten_56/Reshape:output:0$model_10/flatten_57/Reshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)model_10/mlp_layer4/MatMul/ReadVariableOpReadVariableOp2model_10_mlp_layer4_matmul_readvariableop_resource*
_output_shapes

:*
dtype0±
model_10/mlp_layer4/MatMulMatMul&model_10/mlp_layer3/Relu:activations:01model_10/mlp_layer4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*model_10/mlp_layer4/BiasAdd/ReadVariableOpReadVariableOp3model_10_mlp_layer4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0²
model_10/mlp_layer4/BiasAddBiasAdd$model_10/mlp_layer4/MatMul:product:02model_10/mlp_layer4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
model_10/mlp_layer4/ReluRelu$model_10/mlp_layer4/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
#model_10/concatenate_21/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ù
model_10/concatenate_21/concatConcatV2model_10/multiply_14/mul:z:0&model_10/mlp_layer4/Relu:activations:0,model_10/concatenate_21/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
+model_10/output_layer/MatMul/ReadVariableOpReadVariableOp4model_10_output_layer_matmul_readvariableop_resource*
_output_shapes

:*
dtype0¶
model_10/output_layer/MatMulMatMul'model_10/concatenate_21/concat:output:03model_10/output_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,model_10/output_layer/BiasAdd/ReadVariableOpReadVariableOp5model_10_output_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¸
model_10/output_layer/BiasAddBiasAdd&model_10/output_layer/MatMul:product:04model_10/output_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
IdentityIdentity&model_10/output_layer/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
NoOpNoOp.^model_10/batch_norm1/batchnorm/ReadVariableOp0^model_10/batch_norm1/batchnorm/ReadVariableOp_10^model_10/batch_norm1/batchnorm/ReadVariableOp_22^model_10/batch_norm1/batchnorm/mul/ReadVariableOp.^model_10/batch_norm2/batchnorm/ReadVariableOp0^model_10/batch_norm2/batchnorm/ReadVariableOp_10^model_10/batch_norm2/batchnorm/ReadVariableOp_22^model_10/batch_norm2/batchnorm/mul/ReadVariableOp'^model_10/embedding_56/embedding_lookup'^model_10/embedding_57/embedding_lookup'^model_10/embedding_58/embedding_lookup'^model_10/embedding_59/embedding_lookup+^model_10/mlp_layer1/BiasAdd/ReadVariableOp*^model_10/mlp_layer1/MatMul/ReadVariableOp+^model_10/mlp_layer2/BiasAdd/ReadVariableOp*^model_10/mlp_layer2/MatMul/ReadVariableOp+^model_10/mlp_layer3/BiasAdd/ReadVariableOp*^model_10/mlp_layer3/MatMul/ReadVariableOp+^model_10/mlp_layer4/BiasAdd/ReadVariableOp*^model_10/mlp_layer4/MatMul/ReadVariableOp-^model_10/output_layer/BiasAdd/ReadVariableOp,^model_10/output_layer/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : 2^
-model_10/batch_norm1/batchnorm/ReadVariableOp-model_10/batch_norm1/batchnorm/ReadVariableOp2b
/model_10/batch_norm1/batchnorm/ReadVariableOp_1/model_10/batch_norm1/batchnorm/ReadVariableOp_12b
/model_10/batch_norm1/batchnorm/ReadVariableOp_2/model_10/batch_norm1/batchnorm/ReadVariableOp_22f
1model_10/batch_norm1/batchnorm/mul/ReadVariableOp1model_10/batch_norm1/batchnorm/mul/ReadVariableOp2^
-model_10/batch_norm2/batchnorm/ReadVariableOp-model_10/batch_norm2/batchnorm/ReadVariableOp2b
/model_10/batch_norm2/batchnorm/ReadVariableOp_1/model_10/batch_norm2/batchnorm/ReadVariableOp_12b
/model_10/batch_norm2/batchnorm/ReadVariableOp_2/model_10/batch_norm2/batchnorm/ReadVariableOp_22f
1model_10/batch_norm2/batchnorm/mul/ReadVariableOp1model_10/batch_norm2/batchnorm/mul/ReadVariableOp2P
&model_10/embedding_56/embedding_lookup&model_10/embedding_56/embedding_lookup2P
&model_10/embedding_57/embedding_lookup&model_10/embedding_57/embedding_lookup2P
&model_10/embedding_58/embedding_lookup&model_10/embedding_58/embedding_lookup2P
&model_10/embedding_59/embedding_lookup&model_10/embedding_59/embedding_lookup2X
*model_10/mlp_layer1/BiasAdd/ReadVariableOp*model_10/mlp_layer1/BiasAdd/ReadVariableOp2V
)model_10/mlp_layer1/MatMul/ReadVariableOp)model_10/mlp_layer1/MatMul/ReadVariableOp2X
*model_10/mlp_layer2/BiasAdd/ReadVariableOp*model_10/mlp_layer2/BiasAdd/ReadVariableOp2V
)model_10/mlp_layer2/MatMul/ReadVariableOp)model_10/mlp_layer2/MatMul/ReadVariableOp2X
*model_10/mlp_layer3/BiasAdd/ReadVariableOp*model_10/mlp_layer3/BiasAdd/ReadVariableOp2V
)model_10/mlp_layer3/MatMul/ReadVariableOp)model_10/mlp_layer3/MatMul/ReadVariableOp2X
*model_10/mlp_layer4/BiasAdd/ReadVariableOp*model_10/mlp_layer4/BiasAdd/ReadVariableOp2V
)model_10/mlp_layer4/MatMul/ReadVariableOp)model_10/mlp_layer4/MatMul/ReadVariableOp2\
,model_10/output_layer/BiasAdd/ReadVariableOp,model_10/output_layer/BiasAdd/ReadVariableOp2Z
+model_10/output_layer/MatMul/ReadVariableOp+model_10/output_layer/MatMul/ReadVariableOp:Q M
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_29:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_30
Ñ
¨
I__inference_embedding_58_layer_call_and_return_conditional_losses_2423501

inputs+
embedding_lookup_2423495:	' 
identity¢embedding_lookup»
embedding_lookupResourceGatherembedding_lookup_2423495inputs*
Tindices0*+
_class!
loc:@embedding_lookup/2423495*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0£
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/2423495*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
%
á
H__inference_batch_norm2_layer_call_and_return_conditional_losses_2425117

inputs5
'assignmovingavg_readvariableop_resource: 7
)assignmovingavg_1_readvariableop_resource: 3
%batchnorm_mul_readvariableop_resource: /
!batchnorm_readvariableop_resource: 
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

: *
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

: 
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

: *
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
: *
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
: x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
: ¬
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
: *
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
: ~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
: ´
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
: P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: ~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
: v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ê
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Ò
©
I__inference_embedding_57_layer_call_and_return_conditional_losses_2425037

inputs,
embedding_lookup_2425031:
±í
identity¢embedding_lookup»
embedding_lookupResourceGatherembedding_lookup_2425031inputs*
Tindices0*+
_class!
loc:@embedding_lookup/2425031*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0£
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/2425031*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Å
§
H__inference_batch_norm2_layer_call_and_return_conditional_losses_2425083

inputs/
!batchnorm_readvariableop_resource: 3
%batchnorm_mul_readvariableop_resource: 1
#batchnorm_readvariableop_1_resource: 1
#batchnorm_readvariableop_2_resource: 
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
: P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: ~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
: z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ º
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
ÀX
Á

E__inference_model_10_layer_call_and_return_conditional_losses_2424246
input_29
input_30(
embedding_59_2424180:
±í '
embedding_58_2424183:	' $
mlp_layer1_2424190:@@ 
mlp_layer1_2424192:@!
batch_norm1_2424196:@!
batch_norm1_2424198:@!
batch_norm1_2424200:@!
batch_norm1_2424202:@$
mlp_layer2_2424205:@  
mlp_layer2_2424207: !
batch_norm2_2424211: !
batch_norm2_2424213: !
batch_norm2_2424215: !
batch_norm2_2424217: (
embedding_57_2424220:
±í'
embedding_56_2424223:	'$
mlp_layer3_2424226:  
mlp_layer3_2424228:$
mlp_layer4_2424234: 
mlp_layer4_2424236:&
output_layer_2424240:"
output_layer_2424242:
identity¢#batch_norm1/StatefulPartitionedCall¢#batch_norm2/StatefulPartitionedCall¢$embedding_56/StatefulPartitionedCall¢$embedding_57/StatefulPartitionedCall¢$embedding_58/StatefulPartitionedCall¢$embedding_59/StatefulPartitionedCall¢"mlp_layer1/StatefulPartitionedCall¢"mlp_layer2/StatefulPartitionedCall¢"mlp_layer3/StatefulPartitionedCall¢"mlp_layer4/StatefulPartitionedCall¢$output_layer/StatefulPartitionedCallñ
$embedding_59/StatefulPartitionedCallStatefulPartitionedCallinput_30embedding_59_2424180*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_embedding_59_layer_call_and_return_conditional_losses_2423488ñ
$embedding_58/StatefulPartitionedCallStatefulPartitionedCallinput_29embedding_58_2424183*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_embedding_58_layer_call_and_return_conditional_losses_2423501ä
flatten_58/PartitionedCallPartitionedCall-embedding_58/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_flatten_58_layer_call_and_return_conditional_losses_2423511ä
flatten_59/PartitionedCallPartitionedCall-embedding_59/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_flatten_59_layer_call_and_return_conditional_losses_2423519
concatenate_20/PartitionedCallPartitionedCall#flatten_58/PartitionedCall:output:0#flatten_59/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_concatenate_20_layer_call_and_return_conditional_losses_2423528Þ
dropout_10/PartitionedCallPartitionedCall'concatenate_20/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_10_layer_call_and_return_conditional_losses_2423535
"mlp_layer1/StatefulPartitionedCallStatefulPartitionedCall#dropout_10/PartitionedCall:output:0mlp_layer1_2424190mlp_layer1_2424192*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_mlp_layer1_layer_call_and_return_conditional_losses_2423548Þ
dropout1/PartitionedCallPartitionedCall+mlp_layer1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout1_layer_call_and_return_conditional_losses_2423559È
#batch_norm1/StatefulPartitionedCallStatefulPartitionedCall!dropout1/PartitionedCall:output:0batch_norm1_2424196batch_norm1_2424198batch_norm1_2424200batch_norm1_2424202*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_batch_norm1_layer_call_and_return_conditional_losses_2423330¡
"mlp_layer2/StatefulPartitionedCallStatefulPartitionedCall,batch_norm1/StatefulPartitionedCall:output:0mlp_layer2_2424205mlp_layer2_2424207*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_mlp_layer2_layer_call_and_return_conditional_losses_2423581Þ
dropout2/PartitionedCallPartitionedCall+mlp_layer2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout2_layer_call_and_return_conditional_losses_2423592È
#batch_norm2/StatefulPartitionedCallStatefulPartitionedCall!dropout2/PartitionedCall:output:0batch_norm2_2424211batch_norm2_2424213batch_norm2_2424215batch_norm2_2424217*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_batch_norm2_layer_call_and_return_conditional_losses_2423412ñ
$embedding_57/StatefulPartitionedCallStatefulPartitionedCallinput_30embedding_57_2424220*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_embedding_57_layer_call_and_return_conditional_losses_2423612ñ
$embedding_56/StatefulPartitionedCallStatefulPartitionedCallinput_29embedding_56_2424223*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_embedding_56_layer_call_and_return_conditional_losses_2423625¡
"mlp_layer3/StatefulPartitionedCallStatefulPartitionedCall,batch_norm2/StatefulPartitionedCall:output:0mlp_layer3_2424226mlp_layer3_2424228*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_mlp_layer3_layer_call_and_return_conditional_losses_2423640ä
flatten_56/PartitionedCallPartitionedCall-embedding_56/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_flatten_56_layer_call_and_return_conditional_losses_2423652ä
flatten_57/PartitionedCallPartitionedCall-embedding_57/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_flatten_57_layer_call_and_return_conditional_losses_2423660
multiply_14/PartitionedCallPartitionedCall#flatten_56/PartitionedCall:output:0#flatten_57/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_multiply_14_layer_call_and_return_conditional_losses_2423668 
"mlp_layer4/StatefulPartitionedCallStatefulPartitionedCall+mlp_layer3/StatefulPartitionedCall:output:0mlp_layer4_2424234mlp_layer4_2424236*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_mlp_layer4_layer_call_and_return_conditional_losses_2423681
concatenate_21/PartitionedCallPartitionedCall$multiply_14/PartitionedCall:output:0+mlp_layer4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_concatenate_21_layer_call_and_return_conditional_losses_2423694¤
$output_layer/StatefulPartitionedCallStatefulPartitionedCall'concatenate_21/PartitionedCall:output:0output_layer_2424240output_layer_2424242*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_output_layer_layer_call_and_return_conditional_losses_2423706|
IdentityIdentity-output_layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿé
NoOpNoOp$^batch_norm1/StatefulPartitionedCall$^batch_norm2/StatefulPartitionedCall%^embedding_56/StatefulPartitionedCall%^embedding_57/StatefulPartitionedCall%^embedding_58/StatefulPartitionedCall%^embedding_59/StatefulPartitionedCall#^mlp_layer1/StatefulPartitionedCall#^mlp_layer2/StatefulPartitionedCall#^mlp_layer3/StatefulPartitionedCall#^mlp_layer4/StatefulPartitionedCall%^output_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : 2J
#batch_norm1/StatefulPartitionedCall#batch_norm1/StatefulPartitionedCall2J
#batch_norm2/StatefulPartitionedCall#batch_norm2/StatefulPartitionedCall2L
$embedding_56/StatefulPartitionedCall$embedding_56/StatefulPartitionedCall2L
$embedding_57/StatefulPartitionedCall$embedding_57/StatefulPartitionedCall2L
$embedding_58/StatefulPartitionedCall$embedding_58/StatefulPartitionedCall2L
$embedding_59/StatefulPartitionedCall$embedding_59/StatefulPartitionedCall2H
"mlp_layer1/StatefulPartitionedCall"mlp_layer1/StatefulPartitionedCall2H
"mlp_layer2/StatefulPartitionedCall"mlp_layer2/StatefulPartitionedCall2H
"mlp_layer3/StatefulPartitionedCall"mlp_layer3/StatefulPartitionedCall2H
"mlp_layer4/StatefulPartitionedCall"mlp_layer4/StatefulPartitionedCall2L
$output_layer/StatefulPartitionedCall$output_layer/StatefulPartitionedCall:Q M
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_29:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_30
¥
Ì
*__inference_model_10_layer_call_fn_2424372
inputs_0
inputs_1
unknown:
±í 
	unknown_0:	' 
	unknown_1:@@
	unknown_2:@
	unknown_3:@
	unknown_4:@
	unknown_5:@
	unknown_6:@
	unknown_7:@ 
	unknown_8: 
	unknown_9: 

unknown_10: 

unknown_11: 

unknown_12: 

unknown_13:
±í

unknown_14:	'

unknown_15: 

unknown_16:

unknown_17:

unknown_18:

unknown_19:

unknown_20:
identity¢StatefulPartitionedCallö
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*#
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_model_10_layer_call_and_return_conditional_losses_2423713o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1


d
E__inference_dropout2_layer_call_and_return_conditional_losses_2425005

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
dtype0*
seed[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
ý
Ç
%__inference_signature_wrapper_2424737
input_29
input_30
unknown:
±í 
	unknown_0:	' 
	unknown_1:@@
	unknown_2:@
	unknown_3:@
	unknown_4:@
	unknown_5:@
	unknown_6:@
	unknown_7:@ 
	unknown_8: 
	unknown_9: 

unknown_10: 

unknown_11: 

unknown_12: 

unknown_13:
±í

unknown_14:	'

unknown_15: 

unknown_16:

unknown_17:

unknown_18:

unknown_19:

unknown_20:
identity¢StatefulPartitionedCallÓ
StatefulPartitionedCallStatefulPartitionedCallinput_29input_30unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*#
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*8
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__wrapped_model_2423306o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_29:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_30
Ú
e
G__inference_dropout_10_layer_call_and_return_conditional_losses_2424819

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¶X
¿

E__inference_model_10_layer_call_and_return_conditional_losses_2423713

inputs
inputs_1(
embedding_59_2423489:
±í '
embedding_58_2423502:	' $
mlp_layer1_2423549:@@ 
mlp_layer1_2423551:@!
batch_norm1_2423561:@!
batch_norm1_2423563:@!
batch_norm1_2423565:@!
batch_norm1_2423567:@$
mlp_layer2_2423582:@  
mlp_layer2_2423584: !
batch_norm2_2423594: !
batch_norm2_2423596: !
batch_norm2_2423598: !
batch_norm2_2423600: (
embedding_57_2423613:
±í'
embedding_56_2423626:	'$
mlp_layer3_2423641:  
mlp_layer3_2423643:$
mlp_layer4_2423682: 
mlp_layer4_2423684:&
output_layer_2423707:"
output_layer_2423709:
identity¢#batch_norm1/StatefulPartitionedCall¢#batch_norm2/StatefulPartitionedCall¢$embedding_56/StatefulPartitionedCall¢$embedding_57/StatefulPartitionedCall¢$embedding_58/StatefulPartitionedCall¢$embedding_59/StatefulPartitionedCall¢"mlp_layer1/StatefulPartitionedCall¢"mlp_layer2/StatefulPartitionedCall¢"mlp_layer3/StatefulPartitionedCall¢"mlp_layer4/StatefulPartitionedCall¢$output_layer/StatefulPartitionedCallñ
$embedding_59/StatefulPartitionedCallStatefulPartitionedCallinputs_1embedding_59_2423489*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_embedding_59_layer_call_and_return_conditional_losses_2423488ï
$embedding_58/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_58_2423502*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_embedding_58_layer_call_and_return_conditional_losses_2423501ä
flatten_58/PartitionedCallPartitionedCall-embedding_58/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_flatten_58_layer_call_and_return_conditional_losses_2423511ä
flatten_59/PartitionedCallPartitionedCall-embedding_59/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_flatten_59_layer_call_and_return_conditional_losses_2423519
concatenate_20/PartitionedCallPartitionedCall#flatten_58/PartitionedCall:output:0#flatten_59/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_concatenate_20_layer_call_and_return_conditional_losses_2423528Þ
dropout_10/PartitionedCallPartitionedCall'concatenate_20/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_10_layer_call_and_return_conditional_losses_2423535
"mlp_layer1/StatefulPartitionedCallStatefulPartitionedCall#dropout_10/PartitionedCall:output:0mlp_layer1_2423549mlp_layer1_2423551*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_mlp_layer1_layer_call_and_return_conditional_losses_2423548Þ
dropout1/PartitionedCallPartitionedCall+mlp_layer1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout1_layer_call_and_return_conditional_losses_2423559È
#batch_norm1/StatefulPartitionedCallStatefulPartitionedCall!dropout1/PartitionedCall:output:0batch_norm1_2423561batch_norm1_2423563batch_norm1_2423565batch_norm1_2423567*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_batch_norm1_layer_call_and_return_conditional_losses_2423330¡
"mlp_layer2/StatefulPartitionedCallStatefulPartitionedCall,batch_norm1/StatefulPartitionedCall:output:0mlp_layer2_2423582mlp_layer2_2423584*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_mlp_layer2_layer_call_and_return_conditional_losses_2423581Þ
dropout2/PartitionedCallPartitionedCall+mlp_layer2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout2_layer_call_and_return_conditional_losses_2423592È
#batch_norm2/StatefulPartitionedCallStatefulPartitionedCall!dropout2/PartitionedCall:output:0batch_norm2_2423594batch_norm2_2423596batch_norm2_2423598batch_norm2_2423600*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_batch_norm2_layer_call_and_return_conditional_losses_2423412ñ
$embedding_57/StatefulPartitionedCallStatefulPartitionedCallinputs_1embedding_57_2423613*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_embedding_57_layer_call_and_return_conditional_losses_2423612ï
$embedding_56/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_56_2423626*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_embedding_56_layer_call_and_return_conditional_losses_2423625¡
"mlp_layer3/StatefulPartitionedCallStatefulPartitionedCall,batch_norm2/StatefulPartitionedCall:output:0mlp_layer3_2423641mlp_layer3_2423643*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_mlp_layer3_layer_call_and_return_conditional_losses_2423640ä
flatten_56/PartitionedCallPartitionedCall-embedding_56/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_flatten_56_layer_call_and_return_conditional_losses_2423652ä
flatten_57/PartitionedCallPartitionedCall-embedding_57/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_flatten_57_layer_call_and_return_conditional_losses_2423660
multiply_14/PartitionedCallPartitionedCall#flatten_56/PartitionedCall:output:0#flatten_57/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_multiply_14_layer_call_and_return_conditional_losses_2423668 
"mlp_layer4/StatefulPartitionedCallStatefulPartitionedCall+mlp_layer3/StatefulPartitionedCall:output:0mlp_layer4_2423682mlp_layer4_2423684*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_mlp_layer4_layer_call_and_return_conditional_losses_2423681
concatenate_21/PartitionedCallPartitionedCall$multiply_14/PartitionedCall:output:0+mlp_layer4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_concatenate_21_layer_call_and_return_conditional_losses_2423694¤
$output_layer/StatefulPartitionedCallStatefulPartitionedCall'concatenate_21/PartitionedCall:output:0output_layer_2423707output_layer_2423709*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_output_layer_layer_call_and_return_conditional_losses_2423706|
IdentityIdentity-output_layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿé
NoOpNoOp$^batch_norm1/StatefulPartitionedCall$^batch_norm2/StatefulPartitionedCall%^embedding_56/StatefulPartitionedCall%^embedding_57/StatefulPartitionedCall%^embedding_58/StatefulPartitionedCall%^embedding_59/StatefulPartitionedCall#^mlp_layer1/StatefulPartitionedCall#^mlp_layer2/StatefulPartitionedCall#^mlp_layer3/StatefulPartitionedCall#^mlp_layer4/StatefulPartitionedCall%^output_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : 2J
#batch_norm1/StatefulPartitionedCall#batch_norm1/StatefulPartitionedCall2J
#batch_norm2/StatefulPartitionedCall#batch_norm2/StatefulPartitionedCall2L
$embedding_56/StatefulPartitionedCall$embedding_56/StatefulPartitionedCall2L
$embedding_57/StatefulPartitionedCall$embedding_57/StatefulPartitionedCall2L
$embedding_58/StatefulPartitionedCall$embedding_58/StatefulPartitionedCall2L
$embedding_59/StatefulPartitionedCall$embedding_59/StatefulPartitionedCall2H
"mlp_layer1/StatefulPartitionedCall"mlp_layer1/StatefulPartitionedCall2H
"mlp_layer2/StatefulPartitionedCall"mlp_layer2/StatefulPartitionedCall2H
"mlp_layer3/StatefulPartitionedCall"mlp_layer3/StatefulPartitionedCall2H
"mlp_layer4/StatefulPartitionedCall"mlp_layer4/StatefulPartitionedCall2L
$output_layer/StatefulPartitionedCall$output_layer/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
È

,__inference_mlp_layer3_layer_call_fn_2425148

inputs
unknown: 
	unknown_0:
identity¢StatefulPartitionedCallÜ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_mlp_layer3_layer_call_and_return_conditional_losses_2423640o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
°
\
0__inference_concatenate_20_layer_call_fn_2424797
inputs_0
inputs_1
identityÃ
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_concatenate_20_layer_call_and_return_conditional_losses_2423528`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿ :ÿÿÿÿÿÿÿÿÿ :Q M
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
"
_user_specified_name
inputs/1
Ì

.__inference_output_layer_layer_call_fn_2425213

inputs
unknown:
	unknown_0:
identity¢StatefulPartitionedCallÞ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_output_layer_layer_call_and_return_conditional_losses_2423706o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ø
c
E__inference_dropout2_layer_call_and_return_conditional_losses_2424993

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ [

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs

È
-__inference_batch_norm2_layer_call_fn_2425063

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity¢StatefulPartitionedCallõ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_batch_norm2_layer_call_and_return_conditional_losses_2423459o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
¡
Ì
*__inference_model_10_layer_call_fn_2424422
inputs_0
inputs_1
unknown:
±í 
	unknown_0:	' 
	unknown_1:@@
	unknown_2:@
	unknown_3:@
	unknown_4:@
	unknown_5:@
	unknown_6:@
	unknown_7:@ 
	unknown_8: 
	unknown_9: 

unknown_10: 

unknown_11: 

unknown_12: 

unknown_13:
±í

unknown_14:	'

unknown_15: 

unknown_16:

unknown_17:

unknown_18:

unknown_19:

unknown_20:
identity¢StatefulPartitionedCallò
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*#
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_model_10_layer_call_and_return_conditional_losses_2424079o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1
®

.__inference_embedding_59_layer_call_fn_2424760

inputs
unknown:
±í 
identity¢StatefulPartitionedCallÕ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_embedding_59_layer_call_and_return_conditional_losses_2423488s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
%
á
H__inference_batch_norm2_layer_call_and_return_conditional_losses_2423459

inputs5
'assignmovingavg_readvariableop_resource: 7
)assignmovingavg_1_readvariableop_resource: 3
%batchnorm_mul_readvariableop_resource: /
!batchnorm_readvariableop_resource: 
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

: *
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

: 
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

: *
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
: *
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
: x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
: ¬
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
: *
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
: ~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
: ´
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
: P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: ~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
: v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ ê
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs

È
-__inference_batch_norm1_layer_call_fn_2424904

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity¢StatefulPartitionedCallõ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_batch_norm1_layer_call_and_return_conditional_losses_2423377o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¿
c
G__inference_flatten_57_layer_call_and_return_conditional_losses_2425139

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs"ÛL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*ð
serving_defaultÜ
=
input_291
serving_default_input_29:0ÿÿÿÿÿÿÿÿÿ
=
input_301
serving_default_input_30:0ÿÿÿÿÿÿÿÿÿ@
output_layer0
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:¯å
ß
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer-6
layer-7
	layer_with_weights-2
	layer-8

layer-9
layer_with_weights-3
layer-10
layer_with_weights-4
layer-11
layer-12
layer_with_weights-5
layer-13
layer_with_weights-6
layer-14
layer_with_weights-7
layer-15
layer-16
layer-17
layer_with_weights-8
layer-18
layer-19
layer_with_weights-9
layer-20
layer-21
layer_with_weights-10
layer-22
	optimizer

signatures
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses
!_default_save_signature"
_tf_keras_network
D
#"_self_saveable_object_factories"
_tf_keras_input_layer
D
##_self_saveable_object_factories"
_tf_keras_input_layer
Ú
$
embeddings
#%_self_saveable_object_factories
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses"
_tf_keras_layer
Ú
,
embeddings
#-_self_saveable_object_factories
.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses"
_tf_keras_layer
Ê
#4_self_saveable_object_factories
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses"
_tf_keras_layer
Ê
#;_self_saveable_object_factories
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses"
_tf_keras_layer
Ê
#B_self_saveable_object_factories
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses"
_tf_keras_layer
á
#I_self_saveable_object_factories
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
N_random_generator
O__call__
*P&call_and_return_all_conditional_losses"
_tf_keras_layer
à

Qkernel
Rbias
#S_self_saveable_object_factories
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
X__call__
*Y&call_and_return_all_conditional_losses"
_tf_keras_layer
á
#Z_self_saveable_object_factories
[	variables
\trainable_variables
]regularization_losses
^	keras_api
__random_generator
`__call__
*a&call_and_return_all_conditional_losses"
_tf_keras_layer

baxis
	cgamma
dbeta
emoving_mean
fmoving_variance
#g_self_saveable_object_factories
h	variables
itrainable_variables
jregularization_losses
k	keras_api
l__call__
*m&call_and_return_all_conditional_losses"
_tf_keras_layer
à

nkernel
obias
#p_self_saveable_object_factories
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses"
_tf_keras_layer
á
#w_self_saveable_object_factories
x	variables
ytrainable_variables
zregularization_losses
{	keras_api
|_random_generator
}__call__
*~&call_and_return_all_conditional_losses"
_tf_keras_layer
á

embeddings
$_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
â

embeddings
$_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer

	axis

gamma
	beta
moving_mean
moving_variance
$_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Ñ
$_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
+¡&call_and_return_all_conditional_losses"
_tf_keras_layer
Ñ
$¢_self_saveable_object_factories
£	variables
¤trainable_variables
¥regularization_losses
¦	keras_api
§__call__
+¨&call_and_return_all_conditional_losses"
_tf_keras_layer
é
©kernel
	ªbias
$«_self_saveable_object_factories
¬	variables
­trainable_variables
®regularization_losses
¯	keras_api
°__call__
+±&call_and_return_all_conditional_losses"
_tf_keras_layer
Ñ
$²_self_saveable_object_factories
³	variables
´trainable_variables
µregularization_losses
¶	keras_api
·__call__
+¸&call_and_return_all_conditional_losses"
_tf_keras_layer
é
¹kernel
	ºbias
$»_self_saveable_object_factories
¼	variables
½trainable_variables
¾regularization_losses
¿	keras_api
À__call__
+Á&call_and_return_all_conditional_losses"
_tf_keras_layer
Ñ
$Â_self_saveable_object_factories
Ã	variables
Ätrainable_variables
Åregularization_losses
Æ	keras_api
Ç__call__
+È&call_and_return_all_conditional_losses"
_tf_keras_layer
é
Ékernel
	Êbias
$Ë_self_saveable_object_factories
Ì	variables
Ítrainable_variables
Îregularization_losses
Ï	keras_api
Ð__call__
+Ñ&call_and_return_all_conditional_losses"
_tf_keras_layer
Ò
	Òiter
Óbeta_1
Ôbeta_2

Õdecay
Ölearning_rate$mË,mÌQmÍRmÎcmÏdmÐnmÑomÒmÓ	mÔ	mÕ	mÖ	©m×	ªmØ	¹mÙ	ºmÚ	ÉmÛ	ÊmÜ$vÝ,vÞQvßRvàcvádvânvãovävå	væ	vç	vè	©vé	ªvê	¹vë	ºvì	Éví	Êvî"
	optimizer
-
×serving_default"
signature_map
 "
trackable_dict_wrapper
Ñ
$0
,1
Q2
R3
c4
d5
e6
f7
n8
o9
10
11
12
13
14
15
©16
ª17
¹18
º19
É20
Ê21"
trackable_list_wrapper
¯
$0
,1
Q2
R3
c4
d5
n6
o7
8
9
10
11
©12
ª13
¹14
º15
É16
Ê17"
trackable_list_wrapper
 "
trackable_list_wrapper
Ï
Ønon_trainable_variables
Ùlayers
Úmetrics
 Ûlayer_regularization_losses
Ülayer_metrics
	variables
trainable_variables
regularization_losses
__call__
!_default_save_signature
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses"
_generic_user_object
ö2ó
*__inference_model_10_layer_call_fn_2423760
*__inference_model_10_layer_call_fn_2424372
*__inference_model_10_layer_call_fn_2424422
*__inference_model_10_layer_call_fn_2424176À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
â2ß
E__inference_model_10_layer_call_and_return_conditional_losses_2424529
E__inference_model_10_layer_call_and_return_conditional_losses_2424685
E__inference_model_10_layer_call_and_return_conditional_losses_2424246
E__inference_model_10_layer_call_and_return_conditional_losses_2424316À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ØBÕ
"__inference__wrapped_model_2423306input_29input_30"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
*:(	' 2embedding_58/embeddings
 "
trackable_dict_wrapper
'
$0"
trackable_list_wrapper
'
$0"
trackable_list_wrapper
 "
trackable_list_wrapper
²
Ýnon_trainable_variables
Þlayers
ßmetrics
 àlayer_regularization_losses
álayer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses"
_generic_user_object
Ø2Õ
.__inference_embedding_58_layer_call_fn_2424744¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ó2ð
I__inference_embedding_58_layer_call_and_return_conditional_losses_2424753¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
+:)
±í 2embedding_59/embeddings
 "
trackable_dict_wrapper
'
,0"
trackable_list_wrapper
'
,0"
trackable_list_wrapper
 "
trackable_list_wrapper
²
ânon_trainable_variables
ãlayers
ämetrics
 ålayer_regularization_losses
ælayer_metrics
.	variables
/trainable_variables
0regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses"
_generic_user_object
Ø2Õ
.__inference_embedding_59_layer_call_fn_2424760¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ó2ð
I__inference_embedding_59_layer_call_and_return_conditional_losses_2424769¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
çnon_trainable_variables
èlayers
émetrics
 êlayer_regularization_losses
ëlayer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses"
_generic_user_object
Ö2Ó
,__inference_flatten_58_layer_call_fn_2424774¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ñ2î
G__inference_flatten_58_layer_call_and_return_conditional_losses_2424780¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
ìnon_trainable_variables
ílayers
îmetrics
 ïlayer_regularization_losses
ðlayer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses"
_generic_user_object
Ö2Ó
,__inference_flatten_59_layer_call_fn_2424785¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ñ2î
G__inference_flatten_59_layer_call_and_return_conditional_losses_2424791¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
ñnon_trainable_variables
òlayers
ómetrics
 ôlayer_regularization_losses
õlayer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses"
_generic_user_object
Ú2×
0__inference_concatenate_20_layer_call_fn_2424797¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
õ2ò
K__inference_concatenate_20_layer_call_and_return_conditional_losses_2424804¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
önon_trainable_variables
÷layers
ømetrics
 ùlayer_regularization_losses
úlayer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
,__inference_dropout_10_layer_call_fn_2424809
,__inference_dropout_10_layer_call_fn_2424814´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ì2É
G__inference_dropout_10_layer_call_and_return_conditional_losses_2424819
G__inference_dropout_10_layer_call_and_return_conditional_losses_2424831´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
#:!@@2mlp_layer1/kernel
:@2mlp_layer1/bias
 "
trackable_dict_wrapper
.
Q0
R1"
trackable_list_wrapper
.
Q0
R1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
ûnon_trainable_variables
ülayers
ýmetrics
 þlayer_regularization_losses
ÿlayer_metrics
T	variables
Utrainable_variables
Vregularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses"
_generic_user_object
Ö2Ó
,__inference_mlp_layer1_layer_call_fn_2424840¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ñ2î
G__inference_mlp_layer1_layer_call_and_return_conditional_losses_2424851¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
[	variables
\trainable_variables
]regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
*__inference_dropout1_layer_call_fn_2424856
*__inference_dropout1_layer_call_fn_2424861´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
È2Å
E__inference_dropout1_layer_call_and_return_conditional_losses_2424866
E__inference_dropout1_layer_call_and_return_conditional_losses_2424878´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
:@2batch_norm1/gamma
:@2batch_norm1/beta
':%@ (2batch_norm1/moving_mean
+:)@ (2batch_norm1/moving_variance
 "
trackable_dict_wrapper
<
c0
d1
e2
f3"
trackable_list_wrapper
.
c0
d1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
h	variables
itrainable_variables
jregularization_losses
l__call__
*m&call_and_return_all_conditional_losses
&m"call_and_return_conditional_losses"
_generic_user_object
2
-__inference_batch_norm1_layer_call_fn_2424891
-__inference_batch_norm1_layer_call_fn_2424904´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Î2Ë
H__inference_batch_norm1_layer_call_and_return_conditional_losses_2424924
H__inference_batch_norm1_layer_call_and_return_conditional_losses_2424958´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
#:!@ 2mlp_layer2/kernel
: 2mlp_layer2/bias
 "
trackable_dict_wrapper
.
n0
o1"
trackable_list_wrapper
.
n0
o1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
Ö2Ó
,__inference_mlp_layer2_layer_call_fn_2424967¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ñ2î
G__inference_mlp_layer2_layer_call_and_return_conditional_losses_2424978¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
x	variables
ytrainable_variables
zregularization_losses
}__call__
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
*__inference_dropout2_layer_call_fn_2424983
*__inference_dropout2_layer_call_fn_2424988´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
È2Å
E__inference_dropout2_layer_call_and_return_conditional_losses_2424993
E__inference_dropout2_layer_call_and_return_conditional_losses_2425005´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
*:(	'2embedding_56/embeddings
 "
trackable_dict_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
Ø2Õ
.__inference_embedding_56_layer_call_fn_2425012¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ó2ð
I__inference_embedding_56_layer_call_and_return_conditional_losses_2425021¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
+:)
±í2embedding_57/embeddings
 "
trackable_dict_wrapper
(
0"
trackable_list_wrapper
(
0"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
Ø2Õ
.__inference_embedding_57_layer_call_fn_2425028¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ó2ð
I__inference_embedding_57_layer_call_and_return_conditional_losses_2425037¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
: 2batch_norm2/gamma
: 2batch_norm2/beta
':%  (2batch_norm2/moving_mean
+:)  (2batch_norm2/moving_variance
 "
trackable_dict_wrapper
@
0
1
2
3"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
 metrics
 ¡layer_regularization_losses
¢layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
2
-__inference_batch_norm2_layer_call_fn_2425050
-__inference_batch_norm2_layer_call_fn_2425063´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Î2Ë
H__inference_batch_norm2_layer_call_and_return_conditional_losses_2425083
H__inference_batch_norm2_layer_call_and_return_conditional_losses_2425117´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
£non_trainable_variables
¤layers
¥metrics
 ¦layer_regularization_losses
§layer_metrics
	variables
trainable_variables
regularization_losses
 __call__
+¡&call_and_return_all_conditional_losses
'¡"call_and_return_conditional_losses"
_generic_user_object
Ö2Ó
,__inference_flatten_56_layer_call_fn_2425122¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ñ2î
G__inference_flatten_56_layer_call_and_return_conditional_losses_2425128¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
¨non_trainable_variables
©layers
ªmetrics
 «layer_regularization_losses
¬layer_metrics
£	variables
¤trainable_variables
¥regularization_losses
§__call__
+¨&call_and_return_all_conditional_losses
'¨"call_and_return_conditional_losses"
_generic_user_object
Ö2Ó
,__inference_flatten_57_layer_call_fn_2425133¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ñ2î
G__inference_flatten_57_layer_call_and_return_conditional_losses_2425139¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
#:! 2mlp_layer3/kernel
:2mlp_layer3/bias
 "
trackable_dict_wrapper
0
©0
ª1"
trackable_list_wrapper
0
©0
ª1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
­non_trainable_variables
®layers
¯metrics
 °layer_regularization_losses
±layer_metrics
¬	variables
­trainable_variables
®regularization_losses
°__call__
+±&call_and_return_all_conditional_losses
'±"call_and_return_conditional_losses"
_generic_user_object
Ö2Ó
,__inference_mlp_layer3_layer_call_fn_2425148¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ñ2î
G__inference_mlp_layer3_layer_call_and_return_conditional_losses_2425159¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
²non_trainable_variables
³layers
´metrics
 µlayer_regularization_losses
¶layer_metrics
³	variables
´trainable_variables
µregularization_losses
·__call__
+¸&call_and_return_all_conditional_losses
'¸"call_and_return_conditional_losses"
_generic_user_object
×2Ô
-__inference_multiply_14_layer_call_fn_2425165¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ò2ï
H__inference_multiply_14_layer_call_and_return_conditional_losses_2425171¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
#:!2mlp_layer4/kernel
:2mlp_layer4/bias
 "
trackable_dict_wrapper
0
¹0
º1"
trackable_list_wrapper
0
¹0
º1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
·non_trainable_variables
¸layers
¹metrics
 ºlayer_regularization_losses
»layer_metrics
¼	variables
½trainable_variables
¾regularization_losses
À__call__
+Á&call_and_return_all_conditional_losses
'Á"call_and_return_conditional_losses"
_generic_user_object
Ö2Ó
,__inference_mlp_layer4_layer_call_fn_2425180¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ñ2î
G__inference_mlp_layer4_layer_call_and_return_conditional_losses_2425191¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
¼non_trainable_variables
½layers
¾metrics
 ¿layer_regularization_losses
Àlayer_metrics
Ã	variables
Ätrainable_variables
Åregularization_losses
Ç__call__
+È&call_and_return_all_conditional_losses
'È"call_and_return_conditional_losses"
_generic_user_object
Ú2×
0__inference_concatenate_21_layer_call_fn_2425197¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
õ2ò
K__inference_concatenate_21_layer_call_and_return_conditional_losses_2425204¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
%:#2output_layer/kernel
:2output_layer/bias
 "
trackable_dict_wrapper
0
É0
Ê1"
trackable_list_wrapper
0
É0
Ê1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ánon_trainable_variables
Âlayers
Ãmetrics
 Älayer_regularization_losses
Ålayer_metrics
Ì	variables
Ítrainable_variables
Îregularization_losses
Ð__call__
+Ñ&call_and_return_all_conditional_losses
'Ñ"call_and_return_conditional_losses"
_generic_user_object
Ø2Õ
.__inference_output_layer_layer_call_fn_2425213¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ó2ð
I__inference_output_layer_layer_call_and_return_conditional_losses_2425223¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
ÕBÒ
%__inference_signature_wrapper_2424737input_29input_30"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
>
e0
f1
2
3"
trackable_list_wrapper
Î
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22"
trackable_list_wrapper
(
Æ0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
e0
f1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
R

Çtotal

Ècount
É	variables
Ê	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
Ç0
È1"
trackable_list_wrapper
.
É	variables"
_generic_user_object
*:(	' 2embedding_58/embeddings/m
+:)
±í 2embedding_59/embeddings/m
#:!@@2mlp_layer1/kernel/m
:@2mlp_layer1/bias/m
:@2batch_norm1/gamma/m
:@2batch_norm1/beta/m
#:!@ 2mlp_layer2/kernel/m
: 2mlp_layer2/bias/m
*:(	'2embedding_56/embeddings/m
+:)
±í2embedding_57/embeddings/m
: 2batch_norm2/gamma/m
: 2batch_norm2/beta/m
#:! 2mlp_layer3/kernel/m
:2mlp_layer3/bias/m
#:!2mlp_layer4/kernel/m
:2mlp_layer4/bias/m
%:#2output_layer/kernel/m
:2output_layer/bias/m
*:(	' 2embedding_58/embeddings/v
+:)
±í 2embedding_59/embeddings/v
#:!@@2mlp_layer1/kernel/v
:@2mlp_layer1/bias/v
:@2batch_norm1/gamma/v
:@2batch_norm1/beta/v
#:!@ 2mlp_layer2/kernel/v
: 2mlp_layer2/bias/v
*:(	'2embedding_56/embeddings/v
+:)
±í2embedding_57/embeddings/v
: 2batch_norm2/gamma/v
: 2batch_norm2/beta/v
#:! 2mlp_layer3/kernel/v
:2mlp_layer3/bias/v
#:!2mlp_layer4/kernel/v
:2mlp_layer4/bias/v
%:#2output_layer/kernel/v
:2output_layer/bias/vã
"__inference__wrapped_model_2423306¼!,$QRfcedno©ª¹ºÉÊZ¢W
P¢M
KH
"
input_29ÿÿÿÿÿÿÿÿÿ
"
input_30ÿÿÿÿÿÿÿÿÿ
ª ";ª8
6
output_layer&#
output_layerÿÿÿÿÿÿÿÿÿ®
H__inference_batch_norm1_layer_call_and_return_conditional_losses_2424924bfced3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 ®
H__inference_batch_norm1_layer_call_and_return_conditional_losses_2424958befcd3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 
-__inference_batch_norm1_layer_call_fn_2424891Ufced3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p 
ª "ÿÿÿÿÿÿÿÿÿ@
-__inference_batch_norm1_layer_call_fn_2424904Uefcd3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p
ª "ÿÿÿÿÿÿÿÿÿ@²
H__inference_batch_norm2_layer_call_and_return_conditional_losses_2425083f3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ 
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 ²
H__inference_batch_norm2_layer_call_and_return_conditional_losses_2425117f3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ 
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 
-__inference_batch_norm2_layer_call_fn_2425050Y3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ 
p 
ª "ÿÿÿÿÿÿÿÿÿ 
-__inference_batch_norm2_layer_call_fn_2425063Y3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ 
p
ª "ÿÿÿÿÿÿÿÿÿ Ó
K__inference_concatenate_20_layer_call_and_return_conditional_losses_2424804Z¢W
P¢M
KH
"
inputs/0ÿÿÿÿÿÿÿÿÿ 
"
inputs/1ÿÿÿÿÿÿÿÿÿ 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 ª
0__inference_concatenate_20_layer_call_fn_2424797vZ¢W
P¢M
KH
"
inputs/0ÿÿÿÿÿÿÿÿÿ 
"
inputs/1ÿÿÿÿÿÿÿÿÿ 
ª "ÿÿÿÿÿÿÿÿÿ@Ó
K__inference_concatenate_21_layer_call_and_return_conditional_losses_2425204Z¢W
P¢M
KH
"
inputs/0ÿÿÿÿÿÿÿÿÿ
"
inputs/1ÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ª
0__inference_concatenate_21_layer_call_fn_2425197vZ¢W
P¢M
KH
"
inputs/0ÿÿÿÿÿÿÿÿÿ
"
inputs/1ÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¥
E__inference_dropout1_layer_call_and_return_conditional_losses_2424866\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 ¥
E__inference_dropout1_layer_call_and_return_conditional_losses_2424878\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 }
*__inference_dropout1_layer_call_fn_2424856O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p 
ª "ÿÿÿÿÿÿÿÿÿ@}
*__inference_dropout1_layer_call_fn_2424861O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p
ª "ÿÿÿÿÿÿÿÿÿ@¥
E__inference_dropout2_layer_call_and_return_conditional_losses_2424993\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ 
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 ¥
E__inference_dropout2_layer_call_and_return_conditional_losses_2425005\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ 
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 }
*__inference_dropout2_layer_call_fn_2424983O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ 
p 
ª "ÿÿÿÿÿÿÿÿÿ }
*__inference_dropout2_layer_call_fn_2424988O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ 
p
ª "ÿÿÿÿÿÿÿÿÿ §
G__inference_dropout_10_layer_call_and_return_conditional_losses_2424819\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 §
G__inference_dropout_10_layer_call_and_return_conditional_losses_2424831\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 
,__inference_dropout_10_layer_call_fn_2424809O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p 
ª "ÿÿÿÿÿÿÿÿÿ@
,__inference_dropout_10_layer_call_fn_2424814O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p
ª "ÿÿÿÿÿÿÿÿÿ@¬
I__inference_embedding_56_layer_call_and_return_conditional_losses_2425021_/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
.__inference_embedding_56_layer_call_fn_2425012R/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ­
I__inference_embedding_57_layer_call_and_return_conditional_losses_2425037`/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
.__inference_embedding_57_layer_call_fn_2425028S/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¬
I__inference_embedding_58_layer_call_and_return_conditional_losses_2424753_$/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ 
 
.__inference_embedding_58_layer_call_fn_2424744R$/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ ¬
I__inference_embedding_59_layer_call_and_return_conditional_losses_2424769_,/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ 
 
.__inference_embedding_59_layer_call_fn_2424760R,/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ §
G__inference_flatten_56_layer_call_and_return_conditional_losses_2425128\3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
,__inference_flatten_56_layer_call_fn_2425122O3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ§
G__inference_flatten_57_layer_call_and_return_conditional_losses_2425139\3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
,__inference_flatten_57_layer_call_fn_2425133O3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ§
G__inference_flatten_58_layer_call_and_return_conditional_losses_2424780\3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 
,__inference_flatten_58_layer_call_fn_2424774O3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ 
ª "ÿÿÿÿÿÿÿÿÿ §
G__inference_flatten_59_layer_call_and_return_conditional_losses_2424791\3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 
,__inference_flatten_59_layer_call_fn_2424785O3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ 
ª "ÿÿÿÿÿÿÿÿÿ §
G__inference_mlp_layer1_layer_call_and_return_conditional_losses_2424851\QR/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 
,__inference_mlp_layer1_layer_call_fn_2424840OQR/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿ@§
G__inference_mlp_layer2_layer_call_and_return_conditional_losses_2424978\no/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 
,__inference_mlp_layer2_layer_call_fn_2424967Ono/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿ ©
G__inference_mlp_layer3_layer_call_and_return_conditional_losses_2425159^©ª/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
,__inference_mlp_layer3_layer_call_fn_2425148Q©ª/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "ÿÿÿÿÿÿÿÿÿ©
G__inference_mlp_layer4_layer_call_and_return_conditional_losses_2425191^¹º/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
,__inference_mlp_layer4_layer_call_fn_2425180Q¹º/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿø
E__inference_model_10_layer_call_and_return_conditional_losses_2424246®!,$QRfcedno©ª¹ºÉÊb¢_
X¢U
KH
"
input_29ÿÿÿÿÿÿÿÿÿ
"
input_30ÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ø
E__inference_model_10_layer_call_and_return_conditional_losses_2424316®!,$QRefcdno©ª¹ºÉÊb¢_
X¢U
KH
"
input_29ÿÿÿÿÿÿÿÿÿ
"
input_30ÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ø
E__inference_model_10_layer_call_and_return_conditional_losses_2424529®!,$QRfcedno©ª¹ºÉÊb¢_
X¢U
KH
"
inputs/0ÿÿÿÿÿÿÿÿÿ
"
inputs/1ÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ø
E__inference_model_10_layer_call_and_return_conditional_losses_2424685®!,$QRefcdno©ª¹ºÉÊb¢_
X¢U
KH
"
inputs/0ÿÿÿÿÿÿÿÿÿ
"
inputs/1ÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Ð
*__inference_model_10_layer_call_fn_2423760¡!,$QRfcedno©ª¹ºÉÊb¢_
X¢U
KH
"
input_29ÿÿÿÿÿÿÿÿÿ
"
input_30ÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿÐ
*__inference_model_10_layer_call_fn_2424176¡!,$QRefcdno©ª¹ºÉÊb¢_
X¢U
KH
"
input_29ÿÿÿÿÿÿÿÿÿ
"
input_30ÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿÐ
*__inference_model_10_layer_call_fn_2424372¡!,$QRfcedno©ª¹ºÉÊb¢_
X¢U
KH
"
inputs/0ÿÿÿÿÿÿÿÿÿ
"
inputs/1ÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿÐ
*__inference_model_10_layer_call_fn_2424422¡!,$QRefcdno©ª¹ºÉÊb¢_
X¢U
KH
"
inputs/0ÿÿÿÿÿÿÿÿÿ
"
inputs/1ÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿÐ
H__inference_multiply_14_layer_call_and_return_conditional_losses_2425171Z¢W
P¢M
KH
"
inputs/0ÿÿÿÿÿÿÿÿÿ
"
inputs/1ÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 §
-__inference_multiply_14_layer_call_fn_2425165vZ¢W
P¢M
KH
"
inputs/0ÿÿÿÿÿÿÿÿÿ
"
inputs/1ÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ«
I__inference_output_layer_layer_call_and_return_conditional_losses_2425223^ÉÊ/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
.__inference_output_layer_layer_call_fn_2425213QÉÊ/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿù
%__inference_signature_wrapper_2424737Ï!,$QRfcedno©ª¹ºÉÊm¢j
¢ 
cª`
.
input_29"
input_29ÿÿÿÿÿÿÿÿÿ
.
input_30"
input_30ÿÿÿÿÿÿÿÿÿ";ª8
6
output_layer&#
output_layerÿÿÿÿÿÿÿÿÿ