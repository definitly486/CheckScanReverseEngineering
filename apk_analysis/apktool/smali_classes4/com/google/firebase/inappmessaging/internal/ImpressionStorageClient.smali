.class public Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EMPTY_IMPRESSIONS:Lj21;


# instance fields
.field private cachedImpressionsMaybe:La75;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La75<",
            "Lj21;",
            ">;"
        }
    .end annotation
.end field

.field private final storageClient:Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lj21;->d()Lj21;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->EMPTY_IMPRESSIONS:Lj21;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;)V
    .locals 1
    .param p1    # Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;
        .annotation runtime Lcom/google/firebase/inappmessaging/internal/injection/qualifiers/ImpressionStore;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lg75;->b:Lg75;

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->cachedImpressionsMaybe:La75;

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->storageClient:Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;

    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;Lj21;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->initInMemCache(Lj21;)V

    return-void
.end method

.method private static appendImpression(Lj21;Li21;)Lj21;
    .locals 0

    invoke-static {p0}, Lj21;->f(Lj21;)Lj21$b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lj21$b;->b(Li21;)V

    invoke-virtual {p0}, Lcom/google/protobuf/o$a;->build()Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lj21;

    return-object p0
.end method

.method public static synthetic b(Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;Ljava/util/HashSet;Lj21;)Lqq1;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->lambda$clearImpressions$4(Ljava/util/HashSet;Lj21;)Lqq1;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->lambda$getAllImpressions$2(Ljava/lang/Throwable;)V

    return-void
.end method

.method private clearInMemCache()V
    .locals 1

    sget-object v0, Lg75;->b:Lg75;

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->cachedImpressionsMaybe:La75;

    return-void
.end method

.method public static synthetic d(Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;Li21;Lj21;)Lqq1;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->lambda$storeImpression$1(Li21;Lj21;)Lqq1;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;Lj21;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->lambda$storeImpression$0(Lj21;)V

    return-void
.end method

.method public static synthetic f(Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;Lj21;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->lambda$clearImpressions$3(Lj21;)V

    return-void
.end method

.method private initInMemCache(Lj21;)V
    .locals 0

    invoke-static {p1}, La75;->b(Ljava/lang/Object;)Lq75;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->cachedImpressionsMaybe:La75;

    return-void
.end method

.method private synthetic lambda$clearImpressions$3(Lj21;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->initInMemCache(Lj21;)V

    return-void
.end method

.method private synthetic lambda$clearImpressions$4(Ljava/util/HashSet;Lj21;)Lqq1;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Existing impressions: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/protobuf/o;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logd(Ljava/lang/String;)V

    invoke-static {}, Lj21;->e()Lj21$b;

    move-result-object v0

    invoke-virtual {p2}, Lj21;->c()Lcom/google/protobuf/q$j;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li21;

    invoke-virtual {v1}, Li21;->getCampaignId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Lj21$b;->b(Li21;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/o$a;->build()Lcom/google/protobuf/o;

    move-result-object p1

    check-cast p1, Lj21;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "New cleared impression list: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/protobuf/o;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/firebase/inappmessaging/internal/Logging;->logd(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->storageClient:Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;

    invoke-virtual {p2, p1}, Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;->write(Lcom/google/protobuf/a;)Lqp1;

    move-result-object p2

    new-instance v0, Lb34;

    invoke-direct {v0, p0, p1}, Lb34;-><init>(Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;Lj21;)V

    invoke-virtual {p2, v0}, Lqp1;->e(Lh6;)Loq1;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getAllImpressions$2(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->clearInMemCache()V

    return-void
.end method

.method private synthetic lambda$storeImpression$0(Lj21;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->initInMemCache(Lj21;)V

    return-void
.end method

.method private synthetic lambda$storeImpression$1(Li21;Lj21;)Lqq1;
    .locals 1

    invoke-static {p2, p1}, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->appendImpression(Lj21;Li21;)Lj21;

    move-result-object p1

    iget-object p2, p0, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->storageClient:Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;

    invoke-virtual {p2, p1}, Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;->write(Lcom/google/protobuf/a;)Lqp1;

    move-result-object p2

    new-instance v0, Le34;

    invoke-direct {v0, p0, p1}, Le34;-><init>(Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;Lj21;)V

    invoke-virtual {p2, v0}, Lqp1;->e(Lh6;)Loq1;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clearImpressions(Lf73;)Lqp1;
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1}, Lf73;->d()Lcom/google/protobuf/q$j;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm21;

    invoke-virtual {v1}, Lm21;->e()Lm21$c;

    move-result-object v2

    sget-object v3, Lm21$c;->VANILLA_PAYLOAD:Lm21$c;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lm21;->h()Ln21;

    move-result-object v1

    invoke-virtual {v1}, Ln21;->getCampaignId()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lm21;->c()Ll21;

    move-result-object v1

    invoke-virtual {v1}, Ll21;->getCampaignId()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Potential impressions to clear: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/internal/Logging;->logd(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->getAllImpressions()La75;

    move-result-object p1

    sget-object v1, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->EMPTY_IMPRESSIONS:Lj21;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "defaultItem is null"

    invoke-static {v1, v2}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, La75;->b(Ljava/lang/Object;)Lq75;

    move-result-object v1

    new-instance v2, Lz75;

    invoke-direct {v2, p1, v1}, Lz75;-><init>(La75;La75;)V

    new-instance p1, Ld34;

    invoke-direct {p1, p0, v0}, Ld34;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p0, Lj75;

    invoke-direct {p0, v2, p1}, Lj75;-><init>(La75;Lxl3;)V

    return-object p0
.end method

.method public getAllImpressions()La75;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La75<",
            "Lj21;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->cachedImpressionsMaybe:La75;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->storageClient:Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;

    invoke-static {}, Lj21;->parser()Lx36;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;->read(Lx36;)La75;

    move-result-object v1

    new-instance v2, Lc34;

    invoke-direct {v2, p0}, Lc34;-><init>(Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lw75;

    sget-object v4, Lrm3;->d:Lrm3$e;

    invoke-direct {v3, v1, v2, v4}, Lw75;-><init>(La75;Lqx1;Lqx1;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lz75;

    invoke-direct {v1, v0, v3}, Lz75;-><init>(La75;La75;)V

    new-instance v0, Lyd0;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lyd0;-><init>(Ljava/lang/Object;I)V

    new-instance p0, Lw75;

    invoke-direct {p0, v1, v4, v0}, Lw75;-><init>(La75;Lqx1;Lqx1;)V

    return-object p0
.end method

.method public isImpressed(Lm21;)Lmz7;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm21;",
            ")",
            "Lmz7<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lm21;->e()Lm21$c;

    move-result-object v0

    sget-object v1, Lm21$c;->VANILLA_PAYLOAD:Lm21$c;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lm21;->h()Ln21;

    move-result-object p1

    invoke-virtual {p1}, Ln21;->getCampaignId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lm21;->c()Ll21;

    move-result-object p1

    invoke-virtual {p1}, Ll21;->getCampaignId()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->getAllImpressions()La75;

    move-result-object p0

    new-instance v0, Lkv2;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkv2;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lr75;

    invoke-direct {v1, p0, v0}, Lr75;-><init>(La75;Lxl3;)V

    new-instance p0, Lki0;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lki0;-><init>(I)V

    new-instance v2, Lk75;

    invoke-direct {v2, v1, p0}, Lk75;-><init>(Lr75;Lki0;)V

    new-instance p0, Lni0;

    invoke-direct {p0, v0}, Lni0;-><init>(I)V

    new-instance v0, Lpr5;

    invoke-direct {v0, v2, p0}, Lpr5;-><init>(Ltq5;Lxl3;)V

    const-string p0, "element is null"

    invoke-static {p1, p0}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lrm3$g;

    invoke-direct {p0, p1}, Lrm3$g;-><init>(Ljava/lang/String;)V

    new-instance p1, Lvq5;

    invoke-direct {p1, v0, p0}, Lvq5;-><init>(Lpr5;Lrm3$g;)V

    return-object p1
.end method

.method public storeImpression(Li21;)Lqp1;
    .locals 3

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->getAllImpressions()La75;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->EMPTY_IMPRESSIONS:Lj21;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "defaultItem is null"

    invoke-static {v1, v2}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, La75;->b(Ljava/lang/Object;)Lq75;

    move-result-object v1

    new-instance v2, Lz75;

    invoke-direct {v2, v0, v1}, Lz75;-><init>(La75;La75;)V

    new-instance v0, Lqe2;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lqe2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance p0, Lj75;

    invoke-direct {p0, v2, v0}, Lj75;-><init>(La75;Lxl3;)V

    return-object p0
.end method
