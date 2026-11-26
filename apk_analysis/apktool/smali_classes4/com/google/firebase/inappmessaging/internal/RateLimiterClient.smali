.class public Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EMPTY_RATE_LIMITS:Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;


# instance fields
.field private cachedRateLimts:La75;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La75<",
            "Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;",
            ">;"
        }
    .end annotation
.end field

.field private final clock:Lcom/google/firebase/inappmessaging/internal/time/Clock;

.field private final storageClient:Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->getDefaultInstance()Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->EMPTY_RATE_LIMITS:Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;Lcom/google/firebase/inappmessaging/internal/time/Clock;)V
    .locals 1
    .param p1    # Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;
        .annotation runtime Lcom/google/firebase/inappmessaging/internal/injection/qualifiers/RateLimit;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lg75;->b:Lg75;

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->cachedRateLimts:La75;

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->storageClient:Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->clock:Lcom/google/firebase/inappmessaging/internal/time/Clock;

    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->initInMemCache(Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;)V

    return-void
.end method

.method public static synthetic b(Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;Lcom/google/firebase/inappmessaging/model/RateLimit;Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->lambda$isRateLimited$6(Lcom/google/firebase/inappmessaging/model/RateLimit;Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->lambda$getRateLimits$7(Ljava/lang/Throwable;)V

    return-void
.end method

.method private clearInMemCache()V
    .locals 1

    sget-object v0, Lg75;->b:Lg75;

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->cachedRateLimts:La75;

    return-void
.end method

.method public static synthetic d(Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;Lcom/google/firebase/inappmessaging/model/RateLimit;Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->lambda$increment$0(Lcom/google/firebase/inappmessaging/model/RateLimit;Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->lambda$increment$2(Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;)V

    return-void
.end method

.method public static synthetic f(Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;Lcom/google/firebase/inappmessaging/model/RateLimit;Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->lambda$increment$1(Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;Lcom/google/firebase/inappmessaging/model/RateLimit;Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;)Lqq1;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->lambda$increment$3(Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;)Lqq1;

    move-result-object p0

    return-object p0
.end method

.method private getRateLimits()La75;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La75<",
            "Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->cachedRateLimts:La75;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->storageClient:Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;

    invoke-static {}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->parser()Lx36;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;->read(Lx36;)La75;

    move-result-object v1

    new-instance v2, Lzd0;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lzd0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lw75;

    sget-object v5, Lrm3;->d:Lrm3$e;

    invoke-direct {v4, v1, v2, v5}, Lw75;-><init>(La75;Lqx1;Lqx1;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lz75;

    invoke-direct {v1, v0, v4}, Lz75;-><init>(La75;La75;)V

    new-instance v0, Lhv;

    invoke-direct {v0, p0, v3}, Lhv;-><init>(Ljava/lang/Object;I)V

    new-instance p0, Lw75;

    invoke-direct {p0, v1, v5, v0}, Lw75;-><init>(La75;Lqx1;Lqx1;)V

    return-object p0
.end method

.method public static synthetic h(Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;Lcom/google/firebase/inappmessaging/model/RateLimit;Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;)Lqq1;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->lambda$increment$4(Lcom/google/firebase/inappmessaging/model/RateLimit;Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;)Lqq1;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;Lcom/google/firebase/inappmessaging/model/RateLimit;Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->lambda$isRateLimited$5(Lcom/google/firebase/inappmessaging/model/RateLimit;Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    move-result-object p0

    return-object p0
.end method

.method private static increment(Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;
    .locals 5

    .line 34
    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;->newBuilder(Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter$Builder;->clearValue()Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;->getValue()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter$Builder;->setValue(J)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->build()Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    return-object p0
.end method

.method private initInMemCache(Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;)V
    .locals 0

    invoke-static {p1}, La75;->b(Ljava/lang/Object;)Lq75;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->cachedRateLimts:La75;

    return-void
.end method

.method private isLimitExpired(Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;Lcom/google/firebase/inappmessaging/model/RateLimit;)Z
    .locals 2

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->clock:Lcom/google/firebase/inappmessaging/internal/time/Clock;

    invoke-interface {p0}, Lcom/google/firebase/inappmessaging/internal/time/Clock;->now()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;->getStartTimeEpoch()J

    move-result-wide p0

    sub-long/2addr v0, p0

    invoke-virtual {p2}, Lcom/google/firebase/inappmessaging/model/RateLimit;->timeToLiveMillis()J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$getRateLimits$7(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->clearInMemCache()V

    return-void
.end method

.method private synthetic lambda$increment$0(Lcom/google/firebase/inappmessaging/model/RateLimit;Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;)Z
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->isLimitExpired(Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;Lcom/google/firebase/inappmessaging/model/RateLimit;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$increment$1(Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;Lcom/google/firebase/inappmessaging/model/RateLimit;Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;
    .locals 0

    invoke-static {p2}, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->increment(Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    move-result-object p2

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->newBuilder(Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit$Builder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/RateLimit;->limiterKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit$Builder;->putLimits(Ljava/lang/String;Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->build()Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    return-object p0
.end method

.method private synthetic lambda$increment$2(Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->initInMemCache(Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;)V

    return-void
.end method

.method private synthetic lambda$increment$3(Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;)Lqq1;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->storageClient:Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;->write(Lcom/google/protobuf/a;)Lqp1;

    move-result-object v0

    new-instance v1, Llx6;

    invoke-direct {v1, p0, p1}, Llx6;-><init>(Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;)V

    invoke-virtual {v0, v1}, Lqp1;->e(Lh6;)Loq1;

    move-result-object p0

    return-object p0
.end method

.method private lambda$increment$4(Lcom/google/firebase/inappmessaging/model/RateLimit;Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;)Lqq1;
    .locals 4

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/RateLimit;->limiterKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->newCounter()Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->getLimitsOrDefault(Ljava/lang/String;Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    move-result-object v0

    const-string v1, "item is null"

    invoke-static {v0, v1}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lor5;

    invoke-direct {v2, v0}, Lor5;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lmx6;

    invoke-direct {v0, p0, p1}, Lmx6;-><init>(Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;Lcom/google/firebase/inappmessaging/model/RateLimit;)V

    new-instance v3, Ler5;

    invoke-direct {v3, v2, v0}, Ler5;-><init>(Ltq5;Lze6;)V

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->newCounter()Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    move-result-object v0

    invoke-static {v0, v1}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lor5;

    invoke-direct {v1, v0}, Lor5;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lyr5;

    invoke-direct {v0, v3, v1}, Lyr5;-><init>(Ler5;Lor5;)V

    new-instance v1, Lq31;

    invoke-direct {v1, p2, p1}, Lq31;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p1, Lpr5;

    invoke-direct {p1, v0, v1}, Lpr5;-><init>(Ltq5;Lxl3;)V

    new-instance p2, Lvq;

    const/4 v0, 0x4

    invoke-direct {p2, p0, v0}, Lvq;-><init>(Ljava/lang/Object;I)V

    new-instance p0, Lhr5;

    invoke-direct {p0, p1, p2}, Lhr5;-><init>(Lpr5;Lvq;)V

    return-object p0
.end method

.method private synthetic lambda$isRateLimited$5(Lcom/google/firebase/inappmessaging/model/RateLimit;Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;
    .locals 0

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/RateLimit;->limiterKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->newCounter()Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->getLimitsOrDefault(Ljava/lang/String;Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$isRateLimited$6(Lcom/google/firebase/inappmessaging/model/RateLimit;Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;)Z
    .locals 2

    invoke-direct {p0, p2, p1}, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->isLimitExpired(Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;Lcom/google/firebase/inappmessaging/model/RateLimit;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p2}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;->getValue()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/RateLimit;->limit()J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private newCounter()Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;
    .locals 3

    invoke-static {}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;->newBuilder()Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter$Builder;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter$Builder;->setValue(J)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->clock:Lcom/google/firebase/inappmessaging/internal/time/Clock;

    invoke-interface {p0}, Lcom/google/firebase/inappmessaging/internal/time/Clock;->now()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter$Builder;->setStartTimeEpoch(J)Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->build()Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$Counter;

    return-object p0
.end method


# virtual methods
.method public increment(Lcom/google/firebase/inappmessaging/model/RateLimit;)Lqp1;
    .locals 3

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->getRateLimits()La75;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->EMPTY_RATE_LIMITS:Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "defaultItem is null"

    invoke-static {v1, v2}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, La75;->b(Ljava/lang/Object;)Lq75;

    move-result-object v1

    new-instance v2, Lz75;

    invoke-direct {v2, v0, v1}, Lz75;-><init>(La75;La75;)V

    new-instance v0, Lwe2;

    invoke-direct {v0, p0, p1}, Lwe2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p0, Lj75;

    invoke-direct {p0, v2, v0}, Lj75;-><init>(La75;Lxl3;)V

    return-object p0
.end method

.method public isRateLimited(Lcom/google/firebase/inappmessaging/model/RateLimit;)Lmz7;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inappmessaging/model/RateLimit;",
            ")",
            "Lmz7<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->getRateLimits()La75;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;->getDefaultInstance()Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    move-result-object v1

    invoke-static {v1}, La75;->b(Ljava/lang/Object;)Lq75;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lz75;

    invoke-direct {v2, v0, v1}, Lz75;-><init>(La75;La75;)V

    new-instance v0, Lnx6;

    invoke-direct {v0, p0, p1}, Lnx6;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lr75;

    invoke-direct {v1, v2, v0}, Lr75;-><init>(La75;Lxl3;)V

    new-instance v0, Lbf2;

    invoke-direct {v0, p0, p1}, Lbf2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p0, Lh75;

    invoke-direct {p0, v1, v0}, Lh75;-><init>(La75;Lze6;)V

    new-instance p1, Lp75;

    invoke-direct {p1, p0}, Lp75;-><init>(Lh75;)V

    return-object p1
.end method
