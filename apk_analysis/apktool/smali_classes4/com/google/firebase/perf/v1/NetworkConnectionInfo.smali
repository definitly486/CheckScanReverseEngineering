.class public final Lcom/google/firebase/perf/v1/NetworkConnectionInfo;
.super Lcom/google/protobuf/o;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/perf/v1/NetworkConnectionInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;,
        Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;,
        Lcom/google/firebase/perf/v1/NetworkConnectionInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/o<",
        "Lcom/google/firebase/perf/v1/NetworkConnectionInfo;",
        "Lcom/google/firebase/perf/v1/NetworkConnectionInfo$Builder;",
        ">;",
        "Lcom/google/firebase/perf/v1/NetworkConnectionInfoOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/NetworkConnectionInfo;

.field public static final MOBILE_SUBTYPE_FIELD_NUMBER:I = 0x2

.field public static final NETWORK_TYPE_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lx36;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx36<",
            "Lcom/google/firebase/perf/v1/NetworkConnectionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private mobileSubtype_:I

.field private networkType_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;

    invoke-direct {v0}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;-><init>()V

    sput-object v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/NetworkConnectionInfo;

    const-class v1, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;

    invoke-static {v1, v0}, Lcom/google/protobuf/o;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/o;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/o;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;->networkType_:I

    return-void
.end method

.method public static synthetic access$000()Lcom/google/firebase/perf/v1/NetworkConnectionInfo;
    .locals 1

    sget-object v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/NetworkConnectionInfo;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/google/firebase/perf/v1/NetworkConnectionInfo;Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;->setNetworkType(Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/google/firebase/perf/v1/NetworkConnectionInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;->clearNetworkType()V

    return-void
.end method

.method public static synthetic access$300(Lcom/google/firebase/perf/v1/NetworkConnectionInfo;Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;->setMobileSubtype(Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/google/firebase/perf/v1/NetworkConnectionInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;->clearMobileSubtype()V

    return-void
.end method

.method private clearMobileSubtype()V
    .locals 1

    iget v0, p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;->mobileSubtype_:I

    return-void
.end method

.method private clearNetworkType()V
    .locals 1

    iget v0, p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;->bitField0_:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;->networkType_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firebase/perf/v1/NetworkConnectionInfo;
    .locals 1

    sget-object v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/NetworkConnectionInfo;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firebase/perf/v1/NetworkConnectionInfo$Builder;
    .locals 1

    sget-object v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/NetworkConnectionInfo;

    invoke-virtual {v0}, Lcom/google/protobuf/o;->createBuilder()Lcom/google/protobuf/o$a;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firebase/perf/v1/NetworkConnectionInfo;)Lcom/google/firebase/perf/v1/NetworkConnectionInfo$Builder;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/NetworkConnectionInfo;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/o;->createBuilder(Lcom/google/protobuf/o;)Lcom/google/protobuf/o$a;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firebase/perf/v1/NetworkConnectionInfo;
    .locals 1

    sget-object v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/NetworkConnectionInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseDelimitedFrom(Lcom/google/protobuf/o;Ljava/io/InputStream;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/j;)Lcom/google/firebase/perf/v1/NetworkConnectionInfo;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/NetworkConnectionInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseDelimitedFrom(Lcom/google/protobuf/o;Ljava/io/InputStream;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/f;)Lcom/google/firebase/perf/v1/NetworkConnectionInfo;
    .locals 1

    .line 16
    sget-object v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/NetworkConnectionInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Lcom/google/protobuf/f;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/f;Lcom/google/protobuf/j;)Lcom/google/firebase/perf/v1/NetworkConnectionInfo;
    .locals 1

    .line 17
    sget-object v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/NetworkConnectionInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Lcom/google/protobuf/f;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;

    return-object p0
.end method

.method public static parseFrom(Lfx0;)Lcom/google/firebase/perf/v1/NetworkConnectionInfo;
    .locals 1

    .line 10
    sget-object v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/NetworkConnectionInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Lfx0;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;

    return-object p0
.end method

.method public static parseFrom(Lfx0;Lcom/google/protobuf/j;)Lcom/google/firebase/perf/v1/NetworkConnectionInfo;
    .locals 1

    .line 11
    sget-object v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/NetworkConnectionInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Lfx0;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firebase/perf/v1/NetworkConnectionInfo;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/NetworkConnectionInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Ljava/io/InputStream;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/j;)Lcom/google/firebase/perf/v1/NetworkConnectionInfo;
    .locals 1

    .line 15
    sget-object v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/NetworkConnectionInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Ljava/io/InputStream;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firebase/perf/v1/NetworkConnectionInfo;
    .locals 1

    sget-object v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/NetworkConnectionInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/j;)Lcom/google/firebase/perf/v1/NetworkConnectionInfo;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/NetworkConnectionInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Ljava/nio/ByteBuffer;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/firebase/perf/v1/NetworkConnectionInfo;
    .locals 1

    .line 12
    sget-object v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/NetworkConnectionInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;[B)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/j;)Lcom/google/firebase/perf/v1/NetworkConnectionInfo;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/NetworkConnectionInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;[BLcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;

    return-object p0
.end method

.method public static parser()Lx36;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx36<",
            "Lcom/google/firebase/perf/v1/NetworkConnectionInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/NetworkConnectionInfo;

    invoke-virtual {v0}, Lcom/google/protobuf/o;->getParserForType()Lx36;

    move-result-object v0

    return-object v0
.end method

.method private setMobileSubtype(Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;->mobileSubtype_:I

    iget p1, p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;->bitField0_:I

    return-void
.end method

.method private setNetworkType(Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;->networkType_:I

    iget p1, p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;->bitField0_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/o$f;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;->PARSER:Lx36;

    if-nez p0, :cond_1

    const-class p1, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;->PARSER:Lx36;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/o$b;

    sget-object p2, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/NetworkConnectionInfo;

    invoke-direct {p0, p2}, Lcom/google/protobuf/o$b;-><init>(Lcom/google/protobuf/o;)V

    sput-object p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;->PARSER:Lx36;

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
    sget-object p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/NetworkConnectionInfo;

    return-object p0

    :pswitch_4
    const-string p0, "bitField0_"

    const-string p1, "networkType_"

    invoke-static {}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;->internalGetVerifier()Lcom/google/protobuf/q$e;

    move-result-object p2

    const-string p3, "mobileSubtype_"

    invoke-static {}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->internalGetVerifier()Lcom/google/protobuf/q$e;

    move-result-object v0

    filled-new-array {p0, p1, p2, p3, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u180c\u0000\u0002\u180c\u0001"

    sget-object p2, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/NetworkConnectionInfo;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/o;->newMessageInfo(Lcom/google/protobuf/a0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$Builder;

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$Builder;-><init>(Lcom/google/firebase/perf/v1/NetworkConnectionInfo$1;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;

    invoke-direct {p0}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;-><init>()V

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

.method public getMobileSubtype()Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;
    .locals 0

    iget p0, p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;->mobileSubtype_:I

    invoke-static {p0}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->forNumber(I)Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;->UNKNOWN_MOBILE_SUBTYPE:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$MobileSubtype;

    :cond_0
    return-object p0
.end method

.method public getNetworkType()Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;
    .locals 0

    iget p0, p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;->networkType_:I

    invoke-static {p0}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;->forNumber(I)Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;->NONE:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

    :cond_0
    return-object p0
.end method

.method public hasMobileSubtype()Z
    .locals 0

    iget p0, p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;->bitField0_:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasNetworkType()Z
    .locals 1

    iget p0, p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
