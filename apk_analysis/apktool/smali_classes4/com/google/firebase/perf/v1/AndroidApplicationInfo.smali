.class public final Lcom/google/firebase/perf/v1/AndroidApplicationInfo;
.super Lcom/google/protobuf/o;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/perf/v1/AndroidApplicationInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/perf/v1/AndroidApplicationInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/o<",
        "Lcom/google/firebase/perf/v1/AndroidApplicationInfo;",
        "Lcom/google/firebase/perf/v1/AndroidApplicationInfo$Builder;",
        ">;",
        "Lcom/google/firebase/perf/v1/AndroidApplicationInfoOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

.field public static final PACKAGE_NAME_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lx36; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx36<",
            "Lcom/google/firebase/perf/v1/AndroidApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final SDK_VERSION_FIELD_NUMBER:I = 0x2

.field public static final VERSION_NAME_FIELD_NUMBER:I = 0x3


# instance fields
.field private bitField0_:I

.field private packageName_:Ljava/lang/String;

.field private sdkVersion_:Ljava/lang/String;

.field private versionName_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    invoke-direct {v0}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;-><init>()V

    sput-object v0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    const-class v1, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    invoke-static {v1, v0}, Lcom/google/protobuf/o;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/o;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/o;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->packageName_:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->sdkVersion_:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->versionName_:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000()Lcom/google/firebase/perf/v1/AndroidApplicationInfo;
    .locals 1

    sget-object v0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/google/firebase/perf/v1/AndroidApplicationInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->setPackageName(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/google/firebase/perf/v1/AndroidApplicationInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->clearPackageName()V

    return-void
.end method

.method public static synthetic access$300(Lcom/google/firebase/perf/v1/AndroidApplicationInfo;Lfx0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->setPackageNameBytes(Lfx0;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/google/firebase/perf/v1/AndroidApplicationInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->setSdkVersion(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/google/firebase/perf/v1/AndroidApplicationInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->clearSdkVersion()V

    return-void
.end method

.method public static synthetic access$600(Lcom/google/firebase/perf/v1/AndroidApplicationInfo;Lfx0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->setSdkVersionBytes(Lfx0;)V

    return-void
.end method

.method public static synthetic access$700(Lcom/google/firebase/perf/v1/AndroidApplicationInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->setVersionName(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$800(Lcom/google/firebase/perf/v1/AndroidApplicationInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->clearVersionName()V

    return-void
.end method

.method public static synthetic access$900(Lcom/google/firebase/perf/v1/AndroidApplicationInfo;Lfx0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->setVersionNameBytes(Lfx0;)V

    return-void
.end method

.method private clearPackageName()V
    .locals 1

    iget v0, p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->bitField0_:I

    invoke-static {}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->getDefaultInstance()Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->packageName_:Ljava/lang/String;

    return-void
.end method

.method private clearSdkVersion()V
    .locals 1

    iget v0, p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->bitField0_:I

    invoke-static {}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->getDefaultInstance()Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->sdkVersion_:Ljava/lang/String;

    return-void
.end method

.method private clearVersionName()V
    .locals 1

    iget v0, p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->bitField0_:I

    invoke-static {}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->getDefaultInstance()Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->getVersionName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->versionName_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firebase/perf/v1/AndroidApplicationInfo;
    .locals 1

    sget-object v0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firebase/perf/v1/AndroidApplicationInfo$Builder;
    .locals 1

    sget-object v0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    invoke-virtual {v0}, Lcom/google/protobuf/o;->createBuilder()Lcom/google/protobuf/o$a;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firebase/perf/v1/AndroidApplicationInfo;)Lcom/google/firebase/perf/v1/AndroidApplicationInfo$Builder;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/o;->createBuilder(Lcom/google/protobuf/o;)Lcom/google/protobuf/o$a;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firebase/perf/v1/AndroidApplicationInfo;
    .locals 1

    sget-object v0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseDelimitedFrom(Lcom/google/protobuf/o;Ljava/io/InputStream;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/j;)Lcom/google/firebase/perf/v1/AndroidApplicationInfo;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseDelimitedFrom(Lcom/google/protobuf/o;Ljava/io/InputStream;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/f;)Lcom/google/firebase/perf/v1/AndroidApplicationInfo;
    .locals 1

    .line 16
    sget-object v0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Lcom/google/protobuf/f;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/f;Lcom/google/protobuf/j;)Lcom/google/firebase/perf/v1/AndroidApplicationInfo;
    .locals 1

    .line 17
    sget-object v0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Lcom/google/protobuf/f;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    return-object p0
.end method

.method public static parseFrom(Lfx0;)Lcom/google/firebase/perf/v1/AndroidApplicationInfo;
    .locals 1

    .line 10
    sget-object v0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Lfx0;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    return-object p0
.end method

.method public static parseFrom(Lfx0;Lcom/google/protobuf/j;)Lcom/google/firebase/perf/v1/AndroidApplicationInfo;
    .locals 1

    .line 11
    sget-object v0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Lfx0;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firebase/perf/v1/AndroidApplicationInfo;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Ljava/io/InputStream;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/j;)Lcom/google/firebase/perf/v1/AndroidApplicationInfo;
    .locals 1

    .line 15
    sget-object v0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Ljava/io/InputStream;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firebase/perf/v1/AndroidApplicationInfo;
    .locals 1

    sget-object v0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/j;)Lcom/google/firebase/perf/v1/AndroidApplicationInfo;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Ljava/nio/ByteBuffer;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/firebase/perf/v1/AndroidApplicationInfo;
    .locals 1

    .line 12
    sget-object v0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;[B)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/j;)Lcom/google/firebase/perf/v1/AndroidApplicationInfo;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;[BLcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    return-object p0
.end method

.method public static parser()Lx36;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx36<",
            "Lcom/google/firebase/perf/v1/AndroidApplicationInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    invoke-virtual {v0}, Lcom/google/protobuf/o;->getParserForType()Lx36;

    move-result-object v0

    return-object v0
.end method

.method private setPackageName(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->bitField0_:I

    iput-object p1, p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->packageName_:Ljava/lang/String;

    return-void
.end method

.method private setPackageNameBytes(Lfx0;)V
    .locals 0

    invoke-virtual {p1}, Lfx0;->p()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->packageName_:Ljava/lang/String;

    iget p1, p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->bitField0_:I

    return-void
.end method

.method private setSdkVersion(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->bitField0_:I

    iput-object p1, p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->sdkVersion_:Ljava/lang/String;

    return-void
.end method

.method private setSdkVersionBytes(Lfx0;)V
    .locals 0

    invoke-virtual {p1}, Lfx0;->p()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->sdkVersion_:Ljava/lang/String;

    iget p1, p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->bitField0_:I

    return-void
.end method

.method private setVersionName(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->bitField0_:I

    iput-object p1, p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->versionName_:Ljava/lang/String;

    return-void
.end method

.method private setVersionNameBytes(Lfx0;)V
    .locals 0

    invoke-virtual {p1}, Lfx0;->p()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->versionName_:Ljava/lang/String;

    iget p1, p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->bitField0_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/o$f;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lud;->d()V

    :pswitch_0
    return-object p1

    :pswitch_1
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->PARSER:Lx36;

    if-nez p0, :cond_1

    const-class p1, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->PARSER:Lx36;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/o$b;

    sget-object p2, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    invoke-direct {p0, p2}, Lcom/google/protobuf/o$b;-><init>(Lcom/google/protobuf/o;)V

    sput-object p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->PARSER:Lx36;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    return-object p0

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-object p0

    :pswitch_3
    sget-object p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    return-object p0

    :pswitch_4
    const-string p0, "bitField0_"

    const-string p1, "packageName_"

    const-string p2, "sdkVersion_"

    const-string p3, "versionName_"

    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1008\u0002"

    sget-object p2, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/o;->newMessageInfo(Lcom/google/protobuf/a0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo$Builder;

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo$Builder;-><init>(Lcom/google/firebase/perf/v1/AndroidApplicationInfo$1;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    invoke-direct {p0}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;-><init>()V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->packageName_:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageNameBytes()Lfx0;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->packageName_:Ljava/lang/String;

    invoke-static {p0}, Lfx0;->f(Ljava/lang/String;)Lfx0$h;

    move-result-object p0

    return-object p0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->sdkVersion_:Ljava/lang/String;

    return-object p0
.end method

.method public getSdkVersionBytes()Lfx0;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->sdkVersion_:Ljava/lang/String;

    invoke-static {p0}, Lfx0;->f(Ljava/lang/String;)Lfx0$h;

    move-result-object p0

    return-object p0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->versionName_:Ljava/lang/String;

    return-object p0
.end method

.method public getVersionNameBytes()Lfx0;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->versionName_:Ljava/lang/String;

    invoke-static {p0}, Lfx0;->f(Ljava/lang/String;)Lfx0$h;

    move-result-object p0

    return-object p0
.end method

.method public hasPackageName()Z
    .locals 1

    iget p0, p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasSdkVersion()Z
    .locals 0

    iget p0, p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->bitField0_:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasVersionName()Z
    .locals 0

    iget p0, p0, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->bitField0_:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
