.class public abstract Lcom/google/protobuf/o;
.super Lcom/google/protobuf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/o$b;,
        Lcom/google/protobuf/o$e;,
        Lcom/google/protobuf/o$d;,
        Lcom/google/protobuf/o$c;,
        Lcom/google/protobuf/o$a;,
        Lcom/google/protobuf/o$f;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/protobuf/o<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/protobuf/o$a<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/protobuf/a<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static final MEMOIZED_SERIALIZED_SIZE_MASK:I = 0x7fffffff

.field private static final MUTABLE_FLAG_MASK:I = -0x80000000

.field static final UNINITIALIZED_HASH_CODE:I = 0x0

.field static final UNINITIALIZED_SERIALIZED_SIZE:I = 0x7fffffff

.field private static defaultInstanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/google/protobuf/o<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field private memoizedSerializedSize:I

.field protected unknownFields:Lcom/google/protobuf/k0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/protobuf/o;->defaultInstanceMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/a;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/o;->memoizedSerializedSize:I

    sget-object v0, Lcom/google/protobuf/k0;->f:Lcom/google/protobuf/k0;

    iput-object v0, p0, Lcom/google/protobuf/o;->unknownFields:Lcom/google/protobuf/k0;

    return-void
.end method

.method public static synthetic access$000(Lt43;)Lcom/google/protobuf/o$e;
    .locals 0

    invoke-static {p0}, Lcom/google/protobuf/o;->checkIsLite(Lt43;)Lcom/google/protobuf/o$e;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lcom/google/protobuf/o;[BIILcom/google/protobuf/j;)Lcom/google/protobuf/o;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/protobuf/o;->parsePartialFrom(Lcom/google/protobuf/o;[BIILcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    return-object p0
.end method

.method private static checkIsLite(Lt43;)Lcom/google/protobuf/o$e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/google/protobuf/o$c<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lt43<",
            "TMessageType;TT;>;)",
            "Lcom/google/protobuf/o$e<",
            "TMessageType;TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/google/protobuf/o$e;

    return-object p0
.end method

.method private static checkMessageInitialized(Lcom/google/protobuf/o;)Lcom/google/protobuf/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/o<",
            "TT;*>;>(TT;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/google/protobuf/o;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/a;->newUninitializedMessageException()Lcom/google/protobuf/UninitializedMessageException;

    move-result-object p0

    new-instance v0, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method private computeSerializedSize(Lcom/google/protobuf/f0;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/f0<",
            "*>;)I"
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object p1, Lrs6;->c:Lrs6;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrs6;->a(Ljava/lang/Class;)Lcom/google/protobuf/f0;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/protobuf/f0;->b(Lcom/google/protobuf/a;)I

    move-result p0

    return p0

    :cond_0
    invoke-interface {p1, p0}, Lcom/google/protobuf/f0;->b(Lcom/google/protobuf/a;)I

    move-result p0

    return p0
.end method

.method public static emptyBooleanList()Lcom/google/protobuf/q$a;
    .locals 1

    sget-object v0, Lcom/google/protobuf/e;->e:Lcom/google/protobuf/e;

    return-object v0
.end method

.method public static emptyDoubleList()Lcom/google/protobuf/q$b;
    .locals 1

    sget-object v0, Lcom/google/protobuf/i;->e:Lcom/google/protobuf/i;

    return-object v0
.end method

.method public static emptyFloatList()Lcom/google/protobuf/q$f;
    .locals 1

    sget-object v0, Lcom/google/protobuf/n;->e:Lcom/google/protobuf/n;

    return-object v0
.end method

.method public static emptyIntList()Lcom/google/protobuf/q$g;
    .locals 1

    sget-object v0, Lcom/google/protobuf/p;->e:Lcom/google/protobuf/p;

    return-object v0
.end method

.method public static emptyLongList()Lcom/google/protobuf/q$i;
    .locals 1

    sget-object v0, Lcom/google/protobuf/v;->e:Lcom/google/protobuf/v;

    return-object v0
.end method

.method public static emptyProtobufList()Lcom/google/protobuf/q$j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/protobuf/q$j<",
            "TE;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/e0;->e:Lcom/google/protobuf/e0;

    return-object v0
.end method

.method private ensureUnknownFieldsInitialized()V
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/o;->unknownFields:Lcom/google/protobuf/k0;

    sget-object v1, Lcom/google/protobuf/k0;->f:Lcom/google/protobuf/k0;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/google/protobuf/k0;

    invoke-direct {v0}, Lcom/google/protobuf/k0;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/o;->unknownFields:Lcom/google/protobuf/k0;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance(Ljava/lang/Class;)Lcom/google/protobuf/o;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/o<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/o;->defaultInstanceMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/o;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v0, Lcom/google/protobuf/o;->defaultInstanceMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/o;

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Class initialization cannot fail."

    invoke-static {v0, p0}, Lh2;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    :try_start_1
    sget-object v0, Lh79;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1

    check-cast v0, Lcom/google/protobuf/o;

    invoke-virtual {v0}, Lcom/google/protobuf/o;->getDefaultInstanceForType()Lcom/google/protobuf/o;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/google/protobuf/o;->defaultInstanceMap:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_1
    invoke-static {}, Lud;->g()V

    return-object v1

    :catch_1
    move-exception p0

    invoke-static {p0}, Li29;->a(Ljava/lang/Throwable;)V

    return-object v1

    :cond_2
    return-object v0
.end method

.method public static varargs getMethodOrDie(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 6

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    move-object v5, v0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\" missing method \""

    const-string v4, "\"."

    const-string v0, "Generated message class \""

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lqz0;->h(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    instance-of p1, p0, Ljava/lang/Error;

    if-nez p1, :cond_0

    const-string p1, "Unexpected exception thrown by generated accessor method."

    invoke-static {p1, p0}, Lmg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    :cond_0
    check-cast p0, Ljava/lang/Error;

    throw p0

    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    const-string p1, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-static {p1, p0}, Lmg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static final isInitialized(Lcom/google/protobuf/o;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/o<",
            "TT;*>;>(TT;Z)Z"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/o$f;->GET_MEMOIZED_IS_INITIALIZED:Lcom/google/protobuf/o$f;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/o;->dynamicMethod(Lcom/google/protobuf/o$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    sget-object v0, Lrs6;->c:Lrs6;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrs6;->a(Ljava/lang/Class;)Lcom/google/protobuf/f0;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/protobuf/f0;->isInitialized(Ljava/lang/Object;)Z

    move-result v0

    if-eqz p1, :cond_3

    sget-object p1, Lcom/google/protobuf/o$f;->SET_MEMOIZED_IS_INITIALIZED:Lcom/google/protobuf/o$f;

    if-eqz v0, :cond_2

    move-object v1, p0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/google/protobuf/o;->dynamicMethod(Lcom/google/protobuf/o$f;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return v0
.end method

.method public static mutableCopy(Lcom/google/protobuf/q$a;)Lcom/google/protobuf/q$a;
    .locals 3

    .line 52
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    .line 53
    :goto_0
    check-cast p0, Lcom/google/protobuf/e;

    .line 54
    iget v1, p0, Lcom/google/protobuf/e;->d:I

    if-lt v0, v1, :cond_1

    .line 55
    new-instance v1, Lcom/google/protobuf/e;

    iget-object v2, p0, Lcom/google/protobuf/e;->c:[Z

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v0

    iget p0, p0, Lcom/google/protobuf/e;->d:I

    const/4 v2, 0x1

    invoke-direct {v1, v0, p0, v2}, Lcom/google/protobuf/e;-><init>([ZIZ)V

    return-object v1

    .line 56
    :cond_1
    invoke-static {}, Lmi2;->b()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static mutableCopy(Lcom/google/protobuf/q$b;)Lcom/google/protobuf/q$b;
    .locals 3

    .line 47
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    .line 48
    :goto_0
    check-cast p0, Lcom/google/protobuf/i;

    .line 49
    iget v1, p0, Lcom/google/protobuf/i;->d:I

    if-lt v0, v1, :cond_1

    .line 50
    new-instance v1, Lcom/google/protobuf/i;

    iget-object v2, p0, Lcom/google/protobuf/i;->c:[D

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v0

    iget p0, p0, Lcom/google/protobuf/i;->d:I

    const/4 v2, 0x1

    invoke-direct {v1, v0, p0, v2}, Lcom/google/protobuf/i;-><init>([DIZ)V

    return-object v1

    .line 51
    :cond_1
    invoke-static {}, Lmi2;->b()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static mutableCopy(Lcom/google/protobuf/q$f;)Lcom/google/protobuf/q$f;
    .locals 3

    .line 42
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    .line 43
    :goto_0
    check-cast p0, Lcom/google/protobuf/n;

    .line 44
    iget v1, p0, Lcom/google/protobuf/n;->d:I

    if-lt v0, v1, :cond_1

    .line 45
    new-instance v1, Lcom/google/protobuf/n;

    iget-object v2, p0, Lcom/google/protobuf/n;->c:[F

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iget p0, p0, Lcom/google/protobuf/n;->d:I

    const/4 v2, 0x1

    invoke-direct {v1, v0, p0, v2}, Lcom/google/protobuf/n;-><init>([FIZ)V

    return-object v1

    .line 46
    :cond_1
    invoke-static {}, Lmi2;->b()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static mutableCopy(Lcom/google/protobuf/q$g;)Lcom/google/protobuf/q$g;
    .locals 3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    :goto_0
    check-cast p0, Lcom/google/protobuf/p;

    iget v1, p0, Lcom/google/protobuf/p;->d:I

    if-lt v0, v1, :cond_1

    new-instance v1, Lcom/google/protobuf/p;

    iget-object v2, p0, Lcom/google/protobuf/p;->c:[I

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iget p0, p0, Lcom/google/protobuf/p;->d:I

    const/4 v2, 0x1

    invoke-direct {v1, v0, p0, v2}, Lcom/google/protobuf/p;-><init>([IIZ)V

    return-object v1

    :cond_1
    invoke-static {}, Lmi2;->b()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static mutableCopy(Lcom/google/protobuf/q$i;)Lcom/google/protobuf/q$i;
    .locals 3

    .line 37
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    .line 38
    :goto_0
    check-cast p0, Lcom/google/protobuf/v;

    .line 39
    iget v1, p0, Lcom/google/protobuf/v;->d:I

    if-lt v0, v1, :cond_1

    .line 40
    new-instance v1, Lcom/google/protobuf/v;

    iget-object v2, p0, Lcom/google/protobuf/v;->c:[J

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iget p0, p0, Lcom/google/protobuf/v;->d:I

    const/4 v2, 0x1

    invoke-direct {v1, v0, p0, v2}, Lcom/google/protobuf/v;-><init>([JIZ)V

    return-object v1

    .line 41
    :cond_1
    invoke-static {}, Lmi2;->b()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static mutableCopy(Lcom/google/protobuf/q$j;)Lcom/google/protobuf/q$j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/q$j<",
            "TE;>;)",
            "Lcom/google/protobuf/q$j<",
            "TE;>;"
        }
    .end annotation

    .line 57
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    .line 58
    :goto_0
    invoke-interface {p0, v0}, Lcom/google/protobuf/q$j;->mutableCopyWithCapacity(I)Lcom/google/protobuf/q$j;

    move-result-object p0

    return-object p0
.end method

.method public static newMessageInfo(Lcom/google/protobuf/a0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lsx6;

    invoke-direct {v0, p0, p1, p2}, Lsx6;-><init>(Lcom/google/protobuf/a0;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static newRepeatedGeneratedExtension(Lcom/google/protobuf/a0;Lcom/google/protobuf/a0;Lcom/google/protobuf/q$d;ILui9;ZLjava/lang/Class;)Lcom/google/protobuf/o$e;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/google/protobuf/a0;",
            "Type:",
            "Ljava/lang/Object;",
            ">(TContainingType;",
            "Lcom/google/protobuf/a0;",
            "Lcom/google/protobuf/q$d<",
            "*>;I",
            "Lui9;",
            "Z",
            "Ljava/lang/Class;",
            ")",
            "Lcom/google/protobuf/o$e<",
            "TContainingType;TType;>;"
        }
    .end annotation

    sget-object p6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    new-instance v0, Lcom/google/protobuf/o$e;

    new-instance v1, Lcom/google/protobuf/o$d;

    const/4 v5, 0x1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/google/protobuf/o$d;-><init>(Lcom/google/protobuf/q$d;ILui9;ZZ)V

    invoke-direct {v0, p0, p6, p1, v1}, Lcom/google/protobuf/o$e;-><init>(Lcom/google/protobuf/a0;Ljava/lang/Object;Lcom/google/protobuf/a0;Lcom/google/protobuf/o$d;)V

    return-object v0
.end method

.method public static newSingularGeneratedExtension(Lcom/google/protobuf/a0;Ljava/lang/Object;Lcom/google/protobuf/a0;Lcom/google/protobuf/q$d;ILui9;Ljava/lang/Class;)Lcom/google/protobuf/o$e;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/google/protobuf/a0;",
            "Type:",
            "Ljava/lang/Object;",
            ">(TContainingType;TType;",
            "Lcom/google/protobuf/a0;",
            "Lcom/google/protobuf/q$d<",
            "*>;I",
            "Lui9;",
            "Ljava/lang/Class;",
            ")",
            "Lcom/google/protobuf/o$e<",
            "TContainingType;TType;>;"
        }
    .end annotation

    new-instance p6, Lcom/google/protobuf/o$e;

    new-instance v0, Lcom/google/protobuf/o$d;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p3

    move v2, p4

    move-object v3, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/o$d;-><init>(Lcom/google/protobuf/q$d;ILui9;ZZ)V

    invoke-direct {p6, p0, p1, p2, v0}, Lcom/google/protobuf/o$e;-><init>(Lcom/google/protobuf/a0;Ljava/lang/Object;Lcom/google/protobuf/a0;Lcom/google/protobuf/o$d;)V

    return-object p6
.end method

.method public static parseDelimitedFrom(Lcom/google/protobuf/o;Ljava/io/InputStream;)Lcom/google/protobuf/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/o<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/j;->a()Lcom/google/protobuf/j;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/protobuf/o;->parsePartialDelimitedFrom(Lcom/google/protobuf/o;Ljava/io/InputStream;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/o;->checkMessageInitialized(Lcom/google/protobuf/o;)Lcom/google/protobuf/o;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Lcom/google/protobuf/o;Ljava/io/InputStream;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/o<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            "Lcom/google/protobuf/j;",
            ")TT;"
        }
    .end annotation

    .line 13
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/o;->parsePartialDelimitedFrom(Lcom/google/protobuf/o;Ljava/io/InputStream;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    .line 14
    invoke-static {p0}, Lcom/google/protobuf/o;->checkMessageInitialized(Lcom/google/protobuf/o;)Lcom/google/protobuf/o;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/o;Lcom/google/protobuf/f;)Lcom/google/protobuf/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/o<",
            "TT;*>;>(TT;",
            "Lcom/google/protobuf/f;",
            ")TT;"
        }
    .end annotation

    .line 89
    invoke-static {}, Lcom/google/protobuf/j;->a()Lcom/google/protobuf/j;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Lcom/google/protobuf/f;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/o;Lcom/google/protobuf/f;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/o<",
            "TT;*>;>(TT;",
            "Lcom/google/protobuf/f;",
            "Lcom/google/protobuf/j;",
            ")TT;"
        }
    .end annotation

    .line 90
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/o;->parsePartialFrom(Lcom/google/protobuf/o;Lcom/google/protobuf/f;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/o;->checkMessageInitialized(Lcom/google/protobuf/o;)Lcom/google/protobuf/o;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/o;Lfx0;)Lcom/google/protobuf/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/o<",
            "TT;*>;>(TT;",
            "Lfx0;",
            ")TT;"
        }
    .end annotation

    .line 74
    invoke-static {}, Lcom/google/protobuf/j;->a()Lcom/google/protobuf/j;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Lfx0;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    .line 75
    invoke-static {p0}, Lcom/google/protobuf/o;->checkMessageInitialized(Lcom/google/protobuf/o;)Lcom/google/protobuf/o;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/o;Lfx0;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/o<",
            "TT;*>;>(TT;",
            "Lfx0;",
            "Lcom/google/protobuf/j;",
            ")TT;"
        }
    .end annotation

    .line 76
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/o;->parsePartialFrom(Lcom/google/protobuf/o;Lfx0;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/o;->checkMessageInitialized(Lcom/google/protobuf/o;)Lcom/google/protobuf/o;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/o;Ljava/io/InputStream;)Lcom/google/protobuf/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/o<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .line 83
    invoke-static {p1}, Lcom/google/protobuf/f;->g(Ljava/io/InputStream;)Lcom/google/protobuf/f;

    move-result-object p1

    .line 84
    invoke-static {}, Lcom/google/protobuf/j;->a()Lcom/google/protobuf/j;

    move-result-object v0

    .line 85
    invoke-static {p0, p1, v0}, Lcom/google/protobuf/o;->parsePartialFrom(Lcom/google/protobuf/o;Lcom/google/protobuf/f;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    .line 86
    invoke-static {p0}, Lcom/google/protobuf/o;->checkMessageInitialized(Lcom/google/protobuf/o;)Lcom/google/protobuf/o;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/o;Ljava/io/InputStream;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/o<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            "Lcom/google/protobuf/j;",
            ")TT;"
        }
    .end annotation

    .line 87
    invoke-static {p1}, Lcom/google/protobuf/f;->g(Ljava/io/InputStream;)Lcom/google/protobuf/f;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/o;->parsePartialFrom(Lcom/google/protobuf/o;Lcom/google/protobuf/f;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    .line 88
    invoke-static {p0}, Lcom/google/protobuf/o;->checkMessageInitialized(Lcom/google/protobuf/o;)Lcom/google/protobuf/o;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/o;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/o<",
            "TT;*>;>(TT;",
            "Ljava/nio/ByteBuffer;",
            ")TT;"
        }
    .end annotation

    .line 73
    invoke-static {}, Lcom/google/protobuf/j;->a()Lcom/google/protobuf/j;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Ljava/nio/ByteBuffer;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/o;Ljava/nio/ByteBuffer;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/o<",
            "TT;*>;>(TT;",
            "Ljava/nio/ByteBuffer;",
            "Lcom/google/protobuf/j;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p1

    invoke-static {v0, v3, p1, v1}, Lcom/google/protobuf/f;->f([BIIZ)Lcom/google/protobuf/f$a;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lh79;->d:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/protobuf/f$c;

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/f$c;-><init>(Ljava/nio/ByteBuffer;Z)V

    move-object p1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    new-array v2, v0, [B

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 p1, 0x1

    invoke-static {v2, v1, v0, p1}, Lcom/google/protobuf/f;->f([BIIZ)Lcom/google/protobuf/f$a;

    move-result-object p1

    :goto_0
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Lcom/google/protobuf/f;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/o;->checkMessageInitialized(Lcom/google/protobuf/o;)Lcom/google/protobuf/o;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/o;[B)Lcom/google/protobuf/o;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/o<",
            "TT;*>;>(TT;[B)TT;"
        }
    .end annotation

    .line 77
    array-length v0, p1

    .line 78
    invoke-static {}, Lcom/google/protobuf/j;->a()Lcom/google/protobuf/j;

    move-result-object v1

    const/4 v2, 0x0

    .line 79
    invoke-static {p0, p1, v2, v0, v1}, Lcom/google/protobuf/o;->parsePartialFrom(Lcom/google/protobuf/o;[BIILcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/o;->checkMessageInitialized(Lcom/google/protobuf/o;)Lcom/google/protobuf/o;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/o;[BLcom/google/protobuf/j;)Lcom/google/protobuf/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/o<",
            "TT;*>;>(TT;[B",
            "Lcom/google/protobuf/j;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 80
    array-length v1, p1

    .line 81
    invoke-static {p0, p1, v0, v1, p2}, Lcom/google/protobuf/o;->parsePartialFrom(Lcom/google/protobuf/o;[BIILcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    .line 82
    invoke-static {p0}, Lcom/google/protobuf/o;->checkMessageInitialized(Lcom/google/protobuf/o;)Lcom/google/protobuf/o;

    move-result-object p0

    return-object p0
.end method

.method private static parsePartialDelimitedFrom(Lcom/google/protobuf/o;Ljava/io/InputStream;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/o<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            "Lcom/google/protobuf/j;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {v0, p1}, Lcom/google/protobuf/f;->s(ILjava/io/InputStream;)I

    move-result v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Lcom/google/protobuf/a$a$a;

    invoke-direct {v1, p1, v0}, Lcom/google/protobuf/a$a$a;-><init>(Ljava/io/InputStream;I)V

    invoke-static {v1}, Lcom/google/protobuf/f;->g(Ljava/io/InputStream;)Lcom/google/protobuf/f;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/o;->parsePartialFrom(Lcom/google/protobuf/o;Lcom/google/protobuf/f;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/protobuf/f;->a(I)V

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    iget-boolean p1, p0, Lcom/google/protobuf/InvalidProtocolBufferException;->c:Z

    if-eqz p1, :cond_1

    new-instance p1, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, p1

    :cond_1
    throw p0
.end method

.method public static parsePartialFrom(Lcom/google/protobuf/o;Lcom/google/protobuf/f;)Lcom/google/protobuf/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/o<",
            "TT;*>;>(TT;",
            "Lcom/google/protobuf/f;",
            ")TT;"
        }
    .end annotation

    .line 123
    invoke-static {}, Lcom/google/protobuf/j;->a()Lcom/google/protobuf/j;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/protobuf/o;->parsePartialFrom(Lcom/google/protobuf/o;Lcom/google/protobuf/f;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    return-object p0
.end method

.method public static parsePartialFrom(Lcom/google/protobuf/o;Lcom/google/protobuf/f;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/o<",
            "TT;*>;>(TT;",
            "Lcom/google/protobuf/f;",
            "Lcom/google/protobuf/j;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/o;->newMutableInstance()Lcom/google/protobuf/o;

    move-result-object p0

    :try_start_0
    sget-object v0, Lrs6;->c:Lrs6;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrs6;->a(Ljava/lang/Class;)Lcom/google/protobuf/f0;

    move-result-object v0

    iget-object v1, p1, Lcom/google/protobuf/f;->d:Lcom/google/protobuf/g;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/protobuf/g;

    invoke-direct {v1, p1}, Lcom/google/protobuf/g;-><init>(Lcom/google/protobuf/f;)V

    :goto_0
    invoke-interface {v0, p0, v1, p2}, Lcom/google/protobuf/f0;->e(Ljava/lang/Object;Lcom/google/protobuf/g;Lcom/google/protobuf/j;)V

    invoke-interface {v0, p0}, Lcom/google/protobuf/f0;->makeImmutable(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/protobuf/UninitializedMessageException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/protobuf/InvalidProtocolBufferException;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p0

    :cond_1
    throw p0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/protobuf/InvalidProtocolBufferException;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p0

    :cond_2
    new-instance p1, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    new-instance p1, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_3
    move-exception p0

    iget-boolean p1, p0, Lcom/google/protobuf/InvalidProtocolBufferException;->c:Z

    if-eqz p1, :cond_3

    new-instance p1, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, p1

    :cond_3
    throw p0
.end method

.method private static parsePartialFrom(Lcom/google/protobuf/o;Lfx0;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/o<",
            "TT;*>;>(TT;",
            "Lfx0;",
            "Lcom/google/protobuf/j;",
            ")TT;"
        }
    .end annotation

    .line 124
    invoke-virtual {p1}, Lfx0;->k()Lcom/google/protobuf/f;

    move-result-object p1

    .line 125
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/o;->parsePartialFrom(Lcom/google/protobuf/o;Lcom/google/protobuf/f;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    const/4 p2, 0x0

    .line 126
    invoke-virtual {p1, p2}, Lcom/google/protobuf/f;->a(I)V

    return-object p0
.end method

.method private static parsePartialFrom(Lcom/google/protobuf/o;[BIILcom/google/protobuf/j;)Lcom/google/protobuf/o;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/o<",
            "TT;*>;>(TT;[BII",
            "Lcom/google/protobuf/j;",
            ")TT;"
        }
    .end annotation

    .line 104
    invoke-virtual {p0}, Lcom/google/protobuf/o;->newMutableInstance()Lcom/google/protobuf/o;

    move-result-object v1

    .line 105
    :try_start_0
    sget-object p0, Lrs6;->c:Lrs6;

    .line 106
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrs6;->a(Ljava/lang/Class;)Lcom/google/protobuf/f0;

    move-result-object v0

    add-int v4, p2, p3

    .line 108
    new-instance v5, Lcom/google/protobuf/d$b;

    invoke-direct {v5, p4}, Lcom/google/protobuf/d$b;-><init>(Lcom/google/protobuf/j;)V

    move-object v2, p1

    move v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/google/protobuf/f0;->c(Ljava/lang/Object;[BIILcom/google/protobuf/d$b;)V

    .line 109
    invoke-interface {v0, v1}, Lcom/google/protobuf/f0;->makeImmutable(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/protobuf/UninitializedMessageException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 110
    :catch_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->j()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_1
    move-exception v0

    move-object p0, v0

    .line 111
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/protobuf/InvalidProtocolBufferException;

    if-eqz p1, :cond_0

    .line 112
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p0

    .line 113
    :cond_0
    new-instance p1, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 114
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    throw p1

    :catch_2
    move-exception v0

    move-object p0, v0

    .line 116
    new-instance p1, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    .line 117
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 118
    throw p1

    :catch_3
    move-exception v0

    move-object p0, v0

    .line 119
    iget-boolean p1, p0, Lcom/google/protobuf/InvalidProtocolBufferException;->c:Z

    if-eqz p1, :cond_1

    .line 120
    new-instance p1, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 121
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, p1

    .line 122
    :cond_1
    throw p0
.end method

.method public static registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/o<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/o;->markImmutable()V

    sget-object v0, Lcom/google/protobuf/o;->defaultInstanceMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public buildMessageInfo()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/protobuf/o$f;->BUILD_MESSAGE_INFO:Lcom/google/protobuf/o$f;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/o;->dynamicMethod(Lcom/google/protobuf/o$f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public clearMemoizedHashCode()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/a;->memoizedHashCode:I

    return-void
.end method

.method public clearMemoizedSerializedSize()V
    .locals 1

    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lcom/google/protobuf/o;->setMemoizedSerializedSize(I)V

    return-void
.end method

.method public computeHashCode()I
    .locals 2

    sget-object v0, Lrs6;->c:Lrs6;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrs6;->a(Ljava/lang/Class;)Lcom/google/protobuf/f0;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/protobuf/f0;->d(Lcom/google/protobuf/o;)I

    move-result p0

    return p0
.end method

.method public final createBuilder()Lcom/google/protobuf/o$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/google/protobuf/o<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lcom/google/protobuf/o$a<",
            "TMessageType;TBuilderType;>;>()TBuilderType;"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/o$f;->NEW_BUILDER:Lcom/google/protobuf/o$f;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/o;->dynamicMethod(Lcom/google/protobuf/o$f;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/o$a;

    return-object p0
.end method

.method public final createBuilder(Lcom/google/protobuf/o;)Lcom/google/protobuf/o$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/google/protobuf/o<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lcom/google/protobuf/o$a<",
            "TMessageType;TBuilderType;>;>(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/o;->createBuilder()Lcom/google/protobuf/o$a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/o$a;->mergeFrom(Lcom/google/protobuf/o;)Lcom/google/protobuf/o$a;

    move-result-object p0

    return-object p0
.end method

.method public dynamicMethod(Lcom/google/protobuf/o$f;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p1, v0, v0}, Lcom/google/protobuf/o;->dynamicMethod(Lcom/google/protobuf/o$f;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public dynamicMethod(Lcom/google/protobuf/o$f;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protobuf/o;->dynamicMethod(Lcom/google/protobuf/o$f;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public abstract dynamicMethod(Lcom/google/protobuf/o$f;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_2
    sget-object v0, Lrs6;->c:Lrs6;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrs6;->a(Ljava/lang/Class;)Lcom/google/protobuf/f0;

    move-result-object v0

    check-cast p1, Lcom/google/protobuf/o;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/f0;->f(Lcom/google/protobuf/o;Lcom/google/protobuf/o;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/a0;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/o;->getDefaultInstanceForType()Lcom/google/protobuf/o;

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/o$f;->GET_DEFAULT_INSTANCE:Lcom/google/protobuf/o$f;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/o;->dynamicMethod(Lcom/google/protobuf/o$f;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/o;

    return-object p0
.end method

.method public getMemoizedHashCode()I
    .locals 0

    iget p0, p0, Lcom/google/protobuf/a;->memoizedHashCode:I

    return p0
.end method

.method public getMemoizedSerializedSize()I
    .locals 1

    iget p0, p0, Lcom/google/protobuf/o;->memoizedSerializedSize:I

    const v0, 0x7fffffff

    and-int/2addr p0, v0

    return p0
.end method

.method public final getParserForType()Lx36;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx36<",
            "TMessageType;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/o$f;->GET_PARSER:Lcom/google/protobuf/o$f;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/o;->dynamicMethod(Lcom/google/protobuf/o$f;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lx36;

    return-object p0
.end method

.method public getSerializedSize()I
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-virtual {p0, v0}, Lcom/google/protobuf/o;->getSerializedSize(Lcom/google/protobuf/f0;)I

    move-result p0

    return p0
.end method

.method public getSerializedSize(Lcom/google/protobuf/f0;)I
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/o;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/google/protobuf/o;->computeSerializedSize(Lcom/google/protobuf/f0;)I

    move-result p0

    if-ltz p0, :cond_0

    return p0

    :cond_0
    const-string p1, "serialized size must be non-negative, was "

    invoke-static {p0, p1}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/o;->getMemoizedSerializedSize()I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/google/protobuf/o;->getMemoizedSerializedSize()I

    move-result p0

    return p0

    :cond_2
    invoke-direct {p0, p1}, Lcom/google/protobuf/o;->computeSerializedSize(Lcom/google/protobuf/f0;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/o;->setMemoizedSerializedSize(I)V

    return p1
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/o;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/o;->computeHashCode()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/o;->hashCodeIsNotMemoized()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/protobuf/o;->computeHashCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/o;->setMemoizedHashCode(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/o;->getMemoizedHashCode()I

    move-result p0

    return p0
.end method

.method public hashCodeIsNotMemoized()Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/protobuf/o;->getMemoizedHashCode()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    .line 50
    invoke-static {p0, v0}, Lcom/google/protobuf/o;->isInitialized(Lcom/google/protobuf/o;Z)Z

    move-result p0

    return p0
.end method

.method public isMutable()Z
    .locals 1

    iget p0, p0, Lcom/google/protobuf/o;->memoizedSerializedSize:I

    const/high16 v0, -0x80000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public makeImmutable()V
    .locals 2

    sget-object v0, Lrs6;->c:Lrs6;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrs6;->a(Ljava/lang/Class;)Lcom/google/protobuf/f0;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/protobuf/f0;->makeImmutable(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/o;->markImmutable()V

    return-void
.end method

.method public markImmutable()V
    .locals 2

    iget v0, p0, Lcom/google/protobuf/o;->memoizedSerializedSize:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/o;->memoizedSerializedSize:I

    return-void
.end method

.method public mergeLengthDelimitedField(ILfx0;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/o;->ensureUnknownFieldsInitialized()V

    iget-object p0, p0, Lcom/google/protobuf/o;->unknownFields:Lcom/google/protobuf/k0;

    invoke-virtual {p0}, Lcom/google/protobuf/k0;->a()V

    if-eqz p1, :cond_0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/k0;->f(ILjava/lang/Object;)V

    return-void

    :cond_0
    const-string p0, "Zero is not a valid field number."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/k0;)V
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/o;->unknownFields:Lcom/google/protobuf/k0;

    invoke-static {v0, p1}, Lcom/google/protobuf/k0;->e(Lcom/google/protobuf/k0;Lcom/google/protobuf/k0;)Lcom/google/protobuf/k0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/o;->unknownFields:Lcom/google/protobuf/k0;

    return-void
.end method

.method public mergeVarintField(II)V
    .locals 2

    invoke-direct {p0}, Lcom/google/protobuf/o;->ensureUnknownFieldsInitialized()V

    iget-object p0, p0, Lcom/google/protobuf/o;->unknownFields:Lcom/google/protobuf/k0;

    invoke-virtual {p0}, Lcom/google/protobuf/k0;->a()V

    if-eqz p1, :cond_0

    shl-int/lit8 p1, p1, 0x3

    int-to-long v0, p2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/k0;->f(ILjava/lang/Object;)V

    return-void

    :cond_0
    const-string p0, "Zero is not a valid field number."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/a0$a;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/o;->newBuilderForType()Lcom/google/protobuf/o$a;

    move-result-object p0

    return-object p0
.end method

.method public final newBuilderForType()Lcom/google/protobuf/o$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/o$f;->NEW_BUILDER:Lcom/google/protobuf/o$f;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/o;->dynamicMethod(Lcom/google/protobuf/o$f;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/o$a;

    return-object p0
.end method

.method public newMutableInstance()Lcom/google/protobuf/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/o$f;->NEW_MUTABLE_INSTANCE:Lcom/google/protobuf/o$f;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/o;->dynamicMethod(Lcom/google/protobuf/o$f;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/o;

    return-object p0
.end method

.method public parseUnknownField(ILcom/google/protobuf/f;)Z
    .locals 2

    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/o;->ensureUnknownFieldsInitialized()V

    iget-object p0, p0, Lcom/google/protobuf/o;->unknownFields:Lcom/google/protobuf/k0;

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/k0;->d(ILcom/google/protobuf/f;)Z

    move-result p0

    return p0
.end method

.method public setMemoizedHashCode(I)V
    .locals 0

    iput p1, p0, Lcom/google/protobuf/a;->memoizedHashCode:I

    return-void
.end method

.method public setMemoizedSerializedSize(I)V
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/protobuf/o;->memoizedSerializedSize:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    const v1, 0x7fffffff

    and-int/2addr p1, v1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/protobuf/o;->memoizedSerializedSize:I

    return-void

    :cond_0
    const-string p0, "serialized size must be non-negative, was "

    invoke-static {p1, p0}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/a0$a;
    .locals 0

    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/o;->toBuilder()Lcom/google/protobuf/o$a;

    move-result-object p0

    return-object p0
.end method

.method public final toBuilder()Lcom/google/protobuf/o$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/o$f;->NEW_BUILDER:Lcom/google/protobuf/o$f;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/o;->dynamicMethod(Lcom/google/protobuf/o$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/o$a;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/o$a;->mergeFrom(Lcom/google/protobuf/o;)Lcom/google/protobuf/o$a;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/b0;->a:[C

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/protobuf/b0;->c(Lcom/google/protobuf/o;Ljava/lang/StringBuilder;I)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2

    sget-object v0, Lrs6;->c:Lrs6;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrs6;->a(Ljava/lang/Class;)Lcom/google/protobuf/f0;

    move-result-object v0

    iget-object v1, p1, Lcom/google/protobuf/CodedOutputStream;->o:Lcom/google/protobuf/h;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/protobuf/h;

    invoke-direct {v1, p1}, Lcom/google/protobuf/h;-><init>(Lcom/google/protobuf/CodedOutputStream;)V

    :goto_0
    invoke-interface {v0, p0, v1}, Lcom/google/protobuf/f0;->a(Ljava/lang/Object;Lcom/google/protobuf/n0;)V

    return-void
.end method
