.class public final Lcom/google/firebase/perf/v1/CpuMetricReading;
.super Lcom/google/protobuf/o;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/perf/v1/CpuMetricReadingOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/perf/v1/CpuMetricReading$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/o<",
        "Lcom/google/firebase/perf/v1/CpuMetricReading;",
        "Lcom/google/firebase/perf/v1/CpuMetricReading$Builder;",
        ">;",
        "Lcom/google/firebase/perf/v1/CpuMetricReadingOrBuilder;"
    }
.end annotation


# static fields
.field public static final CLIENT_TIME_US_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/CpuMetricReading;

.field private static volatile PARSER:Lx36; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx36<",
            "Lcom/google/firebase/perf/v1/CpuMetricReading;",
            ">;"
        }
    .end annotation
.end field

.field public static final SYSTEM_TIME_US_FIELD_NUMBER:I = 0x3

.field public static final USER_TIME_US_FIELD_NUMBER:I = 0x2


# instance fields
.field private bitField0_:I

.field private clientTimeUs_:J

.field private systemTimeUs_:J

.field private userTimeUs_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/perf/v1/CpuMetricReading;

    invoke-direct {v0}, Lcom/google/firebase/perf/v1/CpuMetricReading;-><init>()V

    sput-object v0, Lcom/google/firebase/perf/v1/CpuMetricReading;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/CpuMetricReading;

    const-class v1, Lcom/google/firebase/perf/v1/CpuMetricReading;

    invoke-static {v1, v0}, Lcom/google/protobuf/o;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/o;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/o;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/google/firebase/perf/v1/CpuMetricReading;
    .locals 1

    sget-object v0, Lcom/google/firebase/perf/v1/CpuMetricReading;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/CpuMetricReading;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/google/firebase/perf/v1/CpuMetricReading;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/v1/CpuMetricReading;->setClientTimeUs(J)V

    return-void
.end method

.method public static synthetic access$200(Lcom/google/firebase/perf/v1/CpuMetricReading;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/perf/v1/CpuMetricReading;->clearClientTimeUs()V

    return-void
.end method

.method public static synthetic access$300(Lcom/google/firebase/perf/v1/CpuMetricReading;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/v1/CpuMetricReading;->setUserTimeUs(J)V

    return-void
.end method

.method public static synthetic access$400(Lcom/google/firebase/perf/v1/CpuMetricReading;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/perf/v1/CpuMetricReading;->clearUserTimeUs()V

    return-void
.end method

.method public static synthetic access$500(Lcom/google/firebase/perf/v1/CpuMetricReading;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/v1/CpuMetricReading;->setSystemTimeUs(J)V

    return-void
.end method

.method public static synthetic access$600(Lcom/google/firebase/perf/v1/CpuMetricReading;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/perf/v1/CpuMetricReading;->clearSystemTimeUs()V

    return-void
.end method

.method private clearClientTimeUs()V
    .locals 2

    iget v0, p0, Lcom/google/firebase/perf/v1/CpuMetricReading;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/firebase/perf/v1/CpuMetricReading;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/firebase/perf/v1/CpuMetricReading;->clientTimeUs_:J

    return-void
.end method

.method private clearSystemTimeUs()V
    .locals 2

    iget v0, p0, Lcom/google/firebase/perf/v1/CpuMetricReading;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/firebase/perf/v1/CpuMetricReading;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/firebase/perf/v1/CpuMetricReading;->systemTimeUs_:J

    return-void
.end method

.method private clearUserTimeUs()V
    .locals 2

    iget v0, p0, Lcom/google/firebase/perf/v1/CpuMetricReading;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/firebase/perf/v1/CpuMetricReading;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/firebase/perf/v1/CpuMetricReading;->userTimeUs_:J

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firebase/perf/v1/CpuMetricReading;
    .locals 1

    sget-object v0, Lcom/google/firebase/perf/v1/CpuMetricReading;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/CpuMetricReading;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firebase/perf/v1/CpuMetricReading$Builder;
    .locals 1

    sget-object v0, Lcom/google/firebase/perf/v1/CpuMetricReading;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/CpuMetricReading;

    invoke-virtual {v0}, Lcom/google/protobuf/o;->createBuilder()Lcom/google/protobuf/o$a;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/v1/CpuMetricReading$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firebase/perf/v1/CpuMetricReading;)Lcom/google/firebase/perf/v1/CpuMetricReading$Builder;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/firebase/perf/v1/CpuMetricReading;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/CpuMetricReading;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/o;->createBuilder(Lcom/google/protobuf/o;)Lcom/google/protobuf/o$a;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/CpuMetricReading$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firebase/perf/v1/CpuMetricReading;
    .locals 1

    sget-object v0, Lcom/google/firebase/perf/v1/CpuMetricReading;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/CpuMetricReading;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseDelimitedFrom(Lcom/google/protobuf/o;Ljava/io/InputStream;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/CpuMetricReading;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/j;)Lcom/google/firebase/perf/v1/CpuMetricReading;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/firebase/perf/v1/CpuMetricReading;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/CpuMetricReading;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseDelimitedFrom(Lcom/google/protobuf/o;Ljava/io/InputStream;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/CpuMetricReading;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/f;)Lcom/google/firebase/perf/v1/CpuMetricReading;
    .locals 1

    .line 16
    sget-object v0, Lcom/google/firebase/perf/v1/CpuMetricReading;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/CpuMetricReading;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Lcom/google/protobuf/f;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/CpuMetricReading;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/f;Lcom/google/protobuf/j;)Lcom/google/firebase/perf/v1/CpuMetricReading;
    .locals 1

    .line 17
    sget-object v0, Lcom/google/firebase/perf/v1/CpuMetricReading;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/CpuMetricReading;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Lcom/google/protobuf/f;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/CpuMetricReading;

    return-object p0
.end method

.method public static parseFrom(Lfx0;)Lcom/google/firebase/perf/v1/CpuMetricReading;
    .locals 1

    .line 10
    sget-object v0, Lcom/google/firebase/perf/v1/CpuMetricReading;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/CpuMetricReading;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Lfx0;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/CpuMetricReading;

    return-object p0
.end method

.method public static parseFrom(Lfx0;Lcom/google/protobuf/j;)Lcom/google/firebase/perf/v1/CpuMetricReading;
    .locals 1

    .line 11
    sget-object v0, Lcom/google/firebase/perf/v1/CpuMetricReading;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/CpuMetricReading;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Lfx0;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/CpuMetricReading;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firebase/perf/v1/CpuMetricReading;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/firebase/perf/v1/CpuMetricReading;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/CpuMetricReading;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Ljava/io/InputStream;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/CpuMetricReading;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/j;)Lcom/google/firebase/perf/v1/CpuMetricReading;
    .locals 1

    .line 15
    sget-object v0, Lcom/google/firebase/perf/v1/CpuMetricReading;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/CpuMetricReading;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Ljava/io/InputStream;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/CpuMetricReading;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firebase/perf/v1/CpuMetricReading;
    .locals 1

    sget-object v0, Lcom/google/firebase/perf/v1/CpuMetricReading;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/CpuMetricReading;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/CpuMetricReading;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/j;)Lcom/google/firebase/perf/v1/CpuMetricReading;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/firebase/perf/v1/CpuMetricReading;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/CpuMetricReading;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Ljava/nio/ByteBuffer;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/CpuMetricReading;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/firebase/perf/v1/CpuMetricReading;
    .locals 1

    .line 12
    sget-object v0, Lcom/google/firebase/perf/v1/CpuMetricReading;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/CpuMetricReading;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;[B)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/CpuMetricReading;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/j;)Lcom/google/firebase/perf/v1/CpuMetricReading;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/firebase/perf/v1/CpuMetricReading;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/CpuMetricReading;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;[BLcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/CpuMetricReading;

    return-object p0
.end method

.method public static parser()Lx36;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx36<",
            "Lcom/google/firebase/perf/v1/CpuMetricReading;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/firebase/perf/v1/CpuMetricReading;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/CpuMetricReading;

    invoke-virtual {v0}, Lcom/google/protobuf/o;->getParserForType()Lx36;

    move-result-object v0

    return-object v0
.end method

.method private setClientTimeUs(J)V
    .locals 1

    iget v0, p0, Lcom/google/firebase/perf/v1/CpuMetricReading;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/firebase/perf/v1/CpuMetricReading;->bitField0_:I

    iput-wide p1, p0, Lcom/google/firebase/perf/v1/CpuMetricReading;->clientTimeUs_:J

    return-void
.end method

.method private setSystemTimeUs(J)V
    .locals 1

    iget v0, p0, Lcom/google/firebase/perf/v1/CpuMetricReading;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/firebase/perf/v1/CpuMetricReading;->bitField0_:I

    iput-wide p1, p0, Lcom/google/firebase/perf/v1/CpuMetricReading;->systemTimeUs_:J

    return-void
.end method

.method private setUserTimeUs(J)V
    .locals 1

    iget v0, p0, Lcom/google/firebase/perf/v1/CpuMetricReading;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/firebase/perf/v1/CpuMetricReading;->bitField0_:I

    iput-wide p1, p0, Lcom/google/firebase/perf/v1/CpuMetricReading;->userTimeUs_:J

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/o$f;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Lcom/google/firebase/perf/v1/CpuMetricReading$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object p0, Lcom/google/firebase/perf/v1/CpuMetricReading;->PARSER:Lx36;

    if-nez p0, :cond_1

    const-class p1, Lcom/google/firebase/perf/v1/CpuMetricReading;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/google/firebase/perf/v1/CpuMetricReading;->PARSER:Lx36;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/o$b;

    sget-object p2, Lcom/google/firebase/perf/v1/CpuMetricReading;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/CpuMetricReading;

    invoke-direct {p0, p2}, Lcom/google/protobuf/o$b;-><init>(Lcom/google/protobuf/o;)V

    sput-object p0, Lcom/google/firebase/perf/v1/CpuMetricReading;->PARSER:Lx36;

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
    sget-object p0, Lcom/google/firebase/perf/v1/CpuMetricReading;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/CpuMetricReading;

    return-object p0

    :pswitch_4
    const-string p0, "bitField0_"

    const-string p1, "clientTimeUs_"

    const-string p2, "userTimeUs_"

    const-string p3, "systemTimeUs_"

    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1002\u0000\u0002\u1002\u0001\u0003\u1002\u0002"

    sget-object p2, Lcom/google/firebase/perf/v1/CpuMetricReading;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/CpuMetricReading;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/o;->newMessageInfo(Lcom/google/protobuf/a0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/google/firebase/perf/v1/CpuMetricReading$Builder;

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/CpuMetricReading$Builder;-><init>(Lcom/google/firebase/perf/v1/CpuMetricReading$1;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/google/firebase/perf/v1/CpuMetricReading;

    invoke-direct {p0}, Lcom/google/firebase/perf/v1/CpuMetricReading;-><init>()V

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

.method public getClientTimeUs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/firebase/perf/v1/CpuMetricReading;->clientTimeUs_:J

    return-wide v0
.end method

.method public getSystemTimeUs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/firebase/perf/v1/CpuMetricReading;->systemTimeUs_:J

    return-wide v0
.end method

.method public getUserTimeUs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/firebase/perf/v1/CpuMetricReading;->userTimeUs_:J

    return-wide v0
.end method

.method public hasClientTimeUs()Z
    .locals 1

    iget p0, p0, Lcom/google/firebase/perf/v1/CpuMetricReading;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasSystemTimeUs()Z
    .locals 0

    iget p0, p0, Lcom/google/firebase/perf/v1/CpuMetricReading;->bitField0_:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasUserTimeUs()Z
    .locals 0

    iget p0, p0, Lcom/google/firebase/perf/v1/CpuMetricReading;->bitField0_:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
