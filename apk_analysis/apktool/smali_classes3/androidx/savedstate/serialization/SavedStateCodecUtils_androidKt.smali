.class public final Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final charSequenceArrayDescriptor:Lmp7;

.field private static final charSequenceListDescriptor:Lmp7;

.field private static final nullablePolymorphicSparseParcelableArrayDescriptor:Lmp7;

.field private static final parcelableArrayDescriptor:Lmp7;

.field private static final parcelableListDescriptor:Lmp7;

.field private static final polymorphicCharSequenceArrayDescriptor:Lmp7;

.field private static final polymorphicCharSequenceDescriptor:Lmp7;

.field private static final polymorphicCharSequenceListDescriptor:Lmp7;

.field private static final polymorphicIBinderDescriptor:Lmp7;

.field private static final polymorphicJavaSerializableDescriptor:Lmp7;

.field private static final polymorphicParcelableArrayDescriptor:Lmp7;

.field private static final polymorphicParcelableDescriptor:Lmp7;

.field private static final polymorphicParcelableListDescriptor:Lmp7;

.field private static final polymorphicSparseParcelableArrayDescriptor:Lmp7;

.field private static final sparseParcelableArrayDescriptor:Lmp7;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lda6;

    const-class v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    invoke-direct {v0, v2}, Lda6;-><init>(Lne4;)V

    invoke-virtual {v0}, Lda6;->getDescriptor()Lmp7;

    move-result-object v0

    sput-object v0, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->polymorphicCharSequenceDescriptor:Lmp7;

    new-instance v0, Lda6;

    const-class v2, Landroid/os/Parcelable;

    invoke-static {v2}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v3

    invoke-direct {v0, v3}, Lda6;-><init>(Lne4;)V

    invoke-virtual {v0}, Lda6;->getDescriptor()Lmp7;

    move-result-object v0

    sput-object v0, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->polymorphicParcelableDescriptor:Lmp7;

    new-instance v0, Lda6;

    const-class v3, Ljava/io/Serializable;

    invoke-static {v3}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v3

    invoke-direct {v0, v3}, Lda6;-><init>(Lne4;)V

    invoke-virtual {v0}, Lda6;->getDescriptor()Lmp7;

    move-result-object v0

    sput-object v0, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->polymorphicJavaSerializableDescriptor:Lmp7;

    new-instance v0, Lda6;

    const-class v3, Landroid/os/IBinder;

    invoke-static {v3}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v3

    invoke-direct {v0, v3}, Lda6;-><init>(Lne4;)V

    invoke-virtual {v0}, Lda6;->getDescriptor()Lmp7;

    move-result-object v0

    sput-object v0, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->polymorphicIBinderDescriptor:Lmp7;

    sget-object v0, Landroidx/savedstate/serialization/serializers/DefaultParcelableSerializer;->INSTANCE:Landroidx/savedstate/serialization/serializers/DefaultParcelableSerializer;

    invoke-static {v2}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ler;

    invoke-interface {v0}, Lxp7;->getDescriptor()Lmp7;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v4}, Lkr4;-><init>(Lmp7;)V

    sput-object v3, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->parcelableArrayDescriptor:Lmp7;

    new-instance v3, Lda6;

    invoke-static {v2}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v4

    invoke-direct {v3, v4}, Lda6;-><init>(Lne4;)V

    invoke-static {v2}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    new-instance v4, Ler;

    invoke-interface {v3}, Lxp7;->getDescriptor()Lmp7;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v3}, Lkr4;-><init>(Lmp7;)V

    sput-object v4, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->polymorphicParcelableArrayDescriptor:Lmp7;

    new-instance v3, Lkr;

    invoke-interface {v0}, Lxp7;->getDescriptor()Lmp7;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v4}, Lkr4;-><init>(Lmp7;)V

    sput-object v3, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->parcelableListDescriptor:Lmp7;

    new-instance v3, Lda6;

    invoke-static {v2}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v4

    invoke-direct {v3, v4}, Lda6;-><init>(Lne4;)V

    new-instance v4, Lkr;

    invoke-virtual {v3}, Lda6;->getDescriptor()Lmp7;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v3}, Lkr4;-><init>(Lmp7;)V

    sput-object v4, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->polymorphicParcelableListDescriptor:Lmp7;

    sget-object v3, Landroidx/savedstate/serialization/serializers/CharSequenceSerializer;->INSTANCE:Landroidx/savedstate/serialization/serializers/CharSequenceSerializer;

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ler;

    invoke-interface {v3}, Lxp7;->getDescriptor()Lmp7;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v5}, Lkr4;-><init>(Lmp7;)V

    sput-object v4, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->charSequenceArrayDescriptor:Lmp7;

    new-instance v4, Lda6;

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v5

    invoke-direct {v4, v5}, Lda6;-><init>(Lne4;)V

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    new-instance v5, Ler;

    invoke-interface {v4}, Lxp7;->getDescriptor()Lmp7;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v5, v4}, Lkr4;-><init>(Lmp7;)V

    sput-object v5, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->polymorphicCharSequenceArrayDescriptor:Lmp7;

    new-instance v4, Lkr;

    invoke-interface {v3}, Lxp7;->getDescriptor()Lmp7;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v3}, Lkr4;-><init>(Lmp7;)V

    sput-object v4, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->charSequenceListDescriptor:Lmp7;

    new-instance v3, Lda6;

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v1

    invoke-direct {v3, v1}, Lda6;-><init>(Lne4;)V

    new-instance v1, Lkr;

    invoke-virtual {v3}, Lda6;->getDescriptor()Lmp7;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v3}, Lkr4;-><init>(Lmp7;)V

    sput-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->polymorphicCharSequenceListDescriptor:Lmp7;

    new-instance v1, Landroidx/savedstate/serialization/serializers/SparseArraySerializer;

    invoke-direct {v1, v0}, Landroidx/savedstate/serialization/serializers/SparseArraySerializer;-><init>(Ldf4;)V

    invoke-virtual {v1}, Landroidx/savedstate/serialization/serializers/SparseArraySerializer;->getDescriptor()Lmp7;

    move-result-object v0

    sput-object v0, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->sparseParcelableArrayDescriptor:Lmp7;

    new-instance v0, Landroidx/savedstate/serialization/serializers/SparseArraySerializer;

    new-instance v1, Lda6;

    invoke-static {v2}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v3

    invoke-direct {v1, v3}, Lda6;-><init>(Lne4;)V

    invoke-direct {v0, v1}, Landroidx/savedstate/serialization/serializers/SparseArraySerializer;-><init>(Ldf4;)V

    invoke-virtual {v0}, Landroidx/savedstate/serialization/serializers/SparseArraySerializer;->getDescriptor()Lmp7;

    move-result-object v0

    sput-object v0, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->polymorphicSparseParcelableArrayDescriptor:Lmp7;

    new-instance v0, Landroidx/savedstate/serialization/serializers/SparseArraySerializer;

    new-instance v1, Lda6;

    invoke-static {v2}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    invoke-direct {v1, v2}, Lda6;-><init>(Lne4;)V

    invoke-static {v1}, Lev0;->a(Ldf4;)Ldf4;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/savedstate/serialization/serializers/SparseArraySerializer;-><init>(Ldf4;)V

    invoke-virtual {v0}, Landroidx/savedstate/serialization/serializers/SparseArraySerializer;->getDescriptor()Lmp7;

    move-result-object v0

    sput-object v0, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->nullablePolymorphicSparseParcelableArrayDescriptor:Lmp7;

    return-void
.end method

.method public static final getCharSequenceArrayDescriptor()Lmp7;
    .locals 1

    sget-object v0, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->charSequenceArrayDescriptor:Lmp7;

    return-object v0
.end method

.method public static synthetic getCharSequenceArrayDescriptor$annotations()V
    .locals 0

    return-void
.end method

.method public static final getCharSequenceListDescriptor()Lmp7;
    .locals 1

    sget-object v0, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->charSequenceListDescriptor:Lmp7;

    return-object v0
.end method

.method public static final getNullablePolymorphicSparseParcelableArrayDescriptor()Lmp7;
    .locals 1

    sget-object v0, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->nullablePolymorphicSparseParcelableArrayDescriptor:Lmp7;

    return-object v0
.end method

.method public static final getParcelableArrayDescriptor()Lmp7;
    .locals 1

    sget-object v0, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->parcelableArrayDescriptor:Lmp7;

    return-object v0
.end method

.method public static synthetic getParcelableArrayDescriptor$annotations()V
    .locals 0

    return-void
.end method

.method public static final getParcelableListDescriptor()Lmp7;
    .locals 1

    sget-object v0, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->parcelableListDescriptor:Lmp7;

    return-object v0
.end method

.method public static final getPolymorphicCharSequenceArrayDescriptor()Lmp7;
    .locals 1

    sget-object v0, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->polymorphicCharSequenceArrayDescriptor:Lmp7;

    return-object v0
.end method

.method public static synthetic getPolymorphicCharSequenceArrayDescriptor$annotations()V
    .locals 0

    return-void
.end method

.method public static final getPolymorphicCharSequenceDescriptor()Lmp7;
    .locals 1

    sget-object v0, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->polymorphicCharSequenceDescriptor:Lmp7;

    return-object v0
.end method

.method public static final getPolymorphicCharSequenceListDescriptor()Lmp7;
    .locals 1

    sget-object v0, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->polymorphicCharSequenceListDescriptor:Lmp7;

    return-object v0
.end method

.method public static final getPolymorphicIBinderDescriptor()Lmp7;
    .locals 1

    sget-object v0, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->polymorphicIBinderDescriptor:Lmp7;

    return-object v0
.end method

.method public static final getPolymorphicJavaSerializableDescriptor()Lmp7;
    .locals 1

    sget-object v0, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->polymorphicJavaSerializableDescriptor:Lmp7;

    return-object v0
.end method

.method public static final getPolymorphicParcelableArrayDescriptor()Lmp7;
    .locals 1

    sget-object v0, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->polymorphicParcelableArrayDescriptor:Lmp7;

    return-object v0
.end method

.method public static synthetic getPolymorphicParcelableArrayDescriptor$annotations()V
    .locals 0

    return-void
.end method

.method public static final getPolymorphicParcelableDescriptor()Lmp7;
    .locals 1

    sget-object v0, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->polymorphicParcelableDescriptor:Lmp7;

    return-object v0
.end method

.method public static final getPolymorphicParcelableListDescriptor()Lmp7;
    .locals 1

    sget-object v0, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->polymorphicParcelableListDescriptor:Lmp7;

    return-object v0
.end method

.method public static final getPolymorphicSparseParcelableArrayDescriptor()Lmp7;
    .locals 1

    sget-object v0, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->polymorphicSparseParcelableArrayDescriptor:Lmp7;

    return-object v0
.end method

.method public static final getSparseParcelableArrayDescriptor()Lmp7;
    .locals 1

    sget-object v0, Landroidx/savedstate/serialization/SavedStateCodecUtils_androidKt;->sparseParcelableArrayDescriptor:Lmp7;

    return-object v0
.end method
