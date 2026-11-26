.class public final Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"

# interfaces
.implements Lt44$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$a;,
        Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;",
        ">;",
        "Lt44$b;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$a;

.field private static final SPECIAL_INTERVAL:J = 0x1388L


# instance fields
.field private final bonusBlockInteractor:Lbm0;

.field private cheque:Lhd1;

.field private final chequeId:I

.field private final chequeInteractor:Lxd1;

.field private final chequeString:Ljava/lang/String;

.field private final enableCarousel:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final flowRouter:Luf3;

.field private operationsDates:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field private final operationsInteractor:Lkz5;

.field private final pos:Ljava/util/concurrent/atomic/AtomicInteger;

.field private previewCards:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lzf6;",
            ">;"
        }
    .end annotation
.end field

.field private specialAutoScrollInit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->Companion:Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$a;

    return-void
.end method

.method public constructor <init>(Luf3;Lxd1;Lkz5;ILjava/lang/String;Lbm0;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->flowRouter:Luf3;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->chequeInteractor:Lxd1;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->operationsInteractor:Lkz5;

    iput p4, p0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->chequeId:I

    iput-object p5, p0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->chequeString:Ljava/lang/String;

    iput-object p6, p0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->bonusBlockInteractor:Lbm0;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->enableCarousel:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->pos:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->previewCards:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->operationsDates:Ljava/util/HashSet;

    return-void
.end method

.method public static final synthetic access$determineHighestElement(Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;Ljava/util/List;)Ljava/lang/Double;
    .locals 0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->determineHighestElement(Ljava/util/List;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getEnableCarousel$p(Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->enableCarousel:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic access$getPos$p(Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->pos:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static final synthetic access$getTitledChequeItemsWithOffersPlaceholders(Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;Lhd1;Ljava/util/Map;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->getTitledChequeItemsWithOffersPlaceholders(Lhd1;Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$handleCoupons(Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->handleCoupons(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$prepareAutoScroll(Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->prepareAutoScroll(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$setCheque$p(Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;Lhd1;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->cheque:Lhd1;

    return-void
.end method

.method public static final synthetic access$showCheque(Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;Lhd1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->showCheque(Lhd1;)V

    return-void
.end method

.method public static final synthetic access$showReasonCashbackReject(Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->showReasonCashbackReject(Ljava/util/List;)V

    return-void
.end method

.method private final determineHighestElement(Ljava/util/List;)Ljava/lang/Double;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lao1;",
            ">;)",
            "Ljava/lang/Double;"
        }
    .end annotation

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p1

    check-cast v1, Lao1;

    iget-object v1, v1, Lao1;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lao1;

    iget-object v3, v3, Lao1;->e:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    move-object p1, v2

    move v1, v3

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    :goto_0
    check-cast p1, Lao1;

    if-eqz p1, :cond_4

    iget-object p0, p1, Lao1;->e:Ljava/lang/String;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    int-to-double p0, p0

    const-wide v0, 0x401ca3d70a3d70a4L    # 7.16

    mul-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v0
.end method

.method public static synthetic e(Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;)V
    .locals 0

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->refreshChequeOperations$lambda$19(Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;)V

    return-void
.end method

.method public static synthetic f(Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;)V
    .locals 0

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->showCheque$lambda$11$lambda$8(Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;)V

    return-void
.end method

.method public static synthetic g(Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$i;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->onReportProduct$lambda$5(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method private final getTitledChequeItemsWithOffersPlaceholders(Lhd1;Ljava/util/Map;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhd1;",
            "Ljava/util/Map<",
            "Lc81;",
            "+",
            "Ljava/util/List<",
            "Lvg6;",
            ">;>;)",
            "Ljava/util/List<",
            "Lra4;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lhd1;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc81;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v3, Lk81;

    invoke-direct {v3, v2}, Lk81;-><init>(Lc81;)V

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    check-cast v0, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v0, v4}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvg6;

    invoke-virtual {v2}, Lc81;->a()Lp71;

    move-result-object v5

    invoke-virtual {v5}, Lp71;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lvg6;->i(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvg6;

    new-instance v3, Luh6;

    invoke-direct {v3, v2}, Luh6;-><init>(Lvg6;)V

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v1}, Lhd1;->j(Ljava/util/ArrayList;)V

    :cond_3
    return-object p0
.end method

.method public static synthetic h(Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;)V
    .locals 0

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->refreshCoupons$lambda$21(Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;)V

    return-void
.end method

.method private final handleCoupons(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lzf6;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzf6;

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->previewCards:Ljava/util/HashMap;

    iget-wide v3, v1, Lzf6;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static synthetic i(Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$t;Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->showCheque$lambda$11$lambda$7(Lnl3;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$u;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->showCheque$lambda$11$lambda$9(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic k(Lnl3;Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->refreshCoupons$lambda$20(Lnl3;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$j;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->prepareAutoScroll$lambda$26(Lnl3;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final loadBanners()V
    .locals 4

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->bonusBlockInteractor:Lbm0;

    sget-object v1, Lfc0;->CHECK:Lfc0;

    iget-object v2, v0, Lbm0;->a:Lrp0;

    iget v0, v0, Lbm0;->e:I

    const/4 v3, 0x0

    invoke-interface {v2, v1, v0, v3}, Lrp0;->b(Lfc0;ILjava/lang/Integer;)Lmz7;

    move-result-object v0

    new-instance v1, Lbm0$h;

    sget-object v2, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$c;->f:Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$c;

    invoke-direct {v1, v2}, Lbm0$h;-><init>(Lnl3;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lp08;

    invoke-direct {v2, v0, v1}, Lp08;-><init>(Lmz7;Lxl3;)V

    sget-object v0, Lne7;->c:Lhe7;

    invoke-virtual {v2, v0}, Lmz7;->i(Lhe7;)Le18;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$d;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$d;-><init>(Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;)V

    const/4 v2, 0x1

    invoke-static {v0, v3, v1, v2}, Lyb8;->f(Lmz7;Lnl3;Lnl3;I)Lrx1;

    move-result-object v0

    const-string v1, "showChequeBanner"

    invoke-virtual {p0, v0, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy(Lcp2;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic m(Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$h;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->onReportProduct$lambda$4(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic n(Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$v;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->showCheque$lambda$11$lambda$10(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic o(Lnl3;Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->refreshChequeOperations$lambda$18(Lnl3;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final onRefresh$lambda$1(Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;)V
    .locals 2

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;->showLoadingCheque(Z)V

    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;

    if-eqz p0, :cond_1

    invoke-interface {p0, v1}, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;->showLoadingContent(Z)V

    :cond_1
    return-void
.end method

.method private static final onReportProduct$lambda$4(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final onReportProduct$lambda$5(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic p(Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;)V
    .locals 0

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->onRefresh$lambda$1(Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;)V

    return-void
.end method

.method private final prepareAutoScroll(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lhc0$b;",
            ">;)V"
        }
    .end annotation

    iget-boolean p1, p0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->specialAutoScrollInit:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->specialAutoScrollInit:Z

    sget v0, Lgg3;->b:I

    sget-object v6, Lne7;->b:Lhe7;

    const-string v0, "unit is null"

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v0}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scheduler is null"

    invoke-static {v6, v0}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lch3;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1388

    move-wide v7, v2

    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-direct/range {v1 .. v6}, Lch3;-><init>(JJLhe7;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$j;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$j;-><init>(Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;)V

    new-instance v2, Lc21;

    invoke-direct {v2, v0, p1}, Lc21;-><init>(Ljava/lang/Object;I)V

    new-instance p1, Lth3;

    invoke-direct {p1, v1, v2}, Lth3;-><init>(Lgg3;Lze6;)V

    new-instance v0, Llh3;

    invoke-direct {v0, p1}, Llh3;-><init>(Lgg3;)V

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object p1

    invoke-virtual {v0, p1}, Lgg3;->c(Lhe7;)Leh3;

    move-result-object p1

    new-instance v0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$k;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$k;-><init>(Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;)V

    const/4 v1, 0x3

    invoke-static {p1, v0, v1}, Lyb8;->i(Lgg3;Lnl3;I)Lih4;

    move-result-object p1

    const-string v0, "carouselFlow"

    invoke-virtual {p0, p1, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy(Lcp2;Ljava/lang/String;)V

    return-void
.end method

.method private static final prepareAutoScroll$lambda$26(Lnl3;Ljava/lang/Object;)Z
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private final refreshChequeOperations()V
    .locals 4

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->operationsDates:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->operationsInteractor:Lkz5;

    iget v1, p0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->chequeId:I

    iget-object v2, v0, Lkz5;->a:Loz5;

    invoke-interface {v2, v1}, Loz5;->b(I)Lmz7;

    move-result-object v1

    new-instance v2, Llz5;

    invoke-direct {v2, v0}, Llz5;-><init>(Lkz5;)V

    new-instance v0, Lf90;

    const/4 v3, 0x5

    invoke-direct {v0, v2, v3}, Lf90;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lp08;

    invoke-direct {v2, v1, v0}, Lp08;-><init>(Lmz7;Lxl3;)V

    new-instance v0, Lve1;

    sget-object v1, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$l;->f:Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$l;

    invoke-direct {v0, v1}, Lve1;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lp08;

    invoke-direct {v1, v2, v0}, Lp08;-><init>(Lmz7;Lxl3;)V

    sget-object v0, Lne7;->c:Lhe7;

    invoke-virtual {v1, v0}, Lmz7;->i(Lhe7;)Le18;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object v0

    new-instance v1, Lwe1;

    invoke-direct {v1, p0}, Lwe1;-><init>(Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;)V

    new-instance v2, Luz7;

    invoke-direct {v2, v0, v1}, Luz7;-><init>(Lmz7;Lh6;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$m;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$m;-><init>(Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;)V

    new-instance v1, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$n;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$n;-><init>(Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;)V

    invoke-static {v2, v0, v1}, Lyb8;->d(Lmz7;Lnl3;Lnl3;)Lrx1;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private static final refreshChequeOperations$lambda$18(Lnl3;Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static final refreshChequeOperations$lambda$19(Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;)V
    .locals 2

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;->showLoadingCheque(Z)V

    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;

    if-eqz p0, :cond_1

    invoke-interface {p0, v1}, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;->showLoadingContent(Z)V

    :cond_1
    return-void
.end method

.method private final refreshCoupons()V
    .locals 4

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->chequeInteractor:Lxd1;

    iget v1, p0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->chequeId:I

    iget-object v2, v0, Lxd1;->a:Lcf1;

    iget-object v0, v0, Lxd1;->b:Ljf6;

    invoke-interface {v0}, Ljf6;->O0()I

    move-result v0

    invoke-interface {v2, v1, v0}, Lcf1;->t(II)Lp08;

    move-result-object v0

    new-instance v1, Lda;

    const/4 v2, 0x2

    sget-object v3, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$o;->f:Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$o;

    invoke-direct {v1, v3, v2}, Lda;-><init>(Lnl3;I)V

    new-instance v2, Lp08;

    invoke-direct {v2, v0, v1}, Lp08;-><init>(Lmz7;Lxl3;)V

    sget-object v0, Lne7;->c:Lhe7;

    invoke-virtual {v2, v0}, Lmz7;->i(Lhe7;)Le18;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object v0

    new-instance v1, Lqe1;

    invoke-direct {v1, p0}, Lqe1;-><init>(Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;)V

    new-instance v2, Luz7;

    invoke-direct {v2, v0, v1}, Luz7;-><init>(Lmz7;Lh6;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$p;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$p;-><init>(Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;)V

    new-instance v1, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$q;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$q;-><init>(Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;)V

    invoke-static {v2, v0, v1}, Lyb8;->d(Lmz7;Lnl3;Lnl3;)Lrx1;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private static final refreshCoupons$lambda$20(Lnl3;Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static final refreshCoupons$lambda$21(Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;)V
    .locals 1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;->showLoadingCheque(Z)V

    :cond_0
    return-void
.end method

.method private final sendBannerClicked(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance p0, Lkd$e0$b;

    const-string v0, "Check_"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "Ord"

    invoke-direct {p0, v0, p1}, Lkd;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0}, Lkd;->a()V

    :cond_0
    return-void
.end method

.method private final showCheque(Lhd1;)V
    .locals 7

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->refreshChequeOperations()V

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->refreshCoupons()V

    iget-boolean v0, p1, Lhd1;->g:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->chequeInteractor:Lxd1;

    invoke-virtual {p1}, Lhd1;->a()I

    move-result v3

    iget-object v0, v0, Lxd1;->a:Lcf1;

    invoke-interface {v0, v3}, Lcf1;->r(I)Li08;

    move-result-object v0

    sget-object v3, Lne7;->c:Lhe7;

    const-string v4, "scheduler is null"

    invoke-static {v3, v4}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ly75;

    invoke-direct {v4, v0, v3}, Ly75;-><init>(La75;Lhe7;)V

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v0

    new-instance v3, Ls75;

    invoke-direct {v3, v4, v0}, Ls75;-><init>(La75;Lhe7;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$r;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$r;-><init>(Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;)V

    new-instance v4, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$s;

    invoke-direct {v4, p0}, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$s;-><init>(Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;)V

    invoke-static {v3, v0, v4, v1}, Lyb8;->j(Ls75;Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$r;Lnl3;I)Lb75;

    move-result-object v0

    invoke-static {p0, v0, v2, v1, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;->showChequeInfo(Lhd1;)V

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;->showLoadingProducts(Z)V

    :cond_1
    iget-object v0, p0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->chequeInteractor:Lxd1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lhd1;->c()Ljava/util/List;

    move-result-object v3

    iget-object v0, v0, Lxd1;->a:Lcf1;

    invoke-static {}, Lxd1;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcf1;->e(Ljava/lang/String;)Lp08;

    move-result-object v0

    new-instance v4, Lll0;

    sget-object v5, Lfe1;->f:Lfe1;

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6}, Lll0;-><init>(Ljava/lang/Object;I)V

    new-instance v5, Lp08;

    invoke-direct {v5, v0, v4}, Lp08;-><init>(Lmz7;Lxl3;)V

    new-instance v0, Lde1;

    invoke-direct {v0, v3}, Lde1;-><init>(Ljava/util/List;)V

    new-instance v3, Lkl0;

    invoke-direct {v3, v0, v6}, Lkl0;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Le08;

    invoke-direct {v0, v5, v3}, Le08;-><init>(Lmz7;Lxl3;)V

    new-instance v3, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$t;

    invoke-direct {v3, p0, p1}, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$t;-><init>(Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;Lhd1;)V

    new-instance v4, Lx3;

    invoke-direct {v4, v3, v1}, Lx3;-><init>(Ljava/lang/Object;I)V

    new-instance v3, Lp08;

    invoke-direct {v3, v0, v4}, Lp08;-><init>(Lmz7;Lxl3;)V

    sget-object v0, Lne7;->c:Lhe7;

    invoke-virtual {v3, v0}, Lmz7;->i(Lhe7;)Le18;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v3

    invoke-virtual {v0, v3}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object v0

    new-instance v3, Lse1;

    invoke-direct {v3, p0}, Lse1;-><init>(Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;)V

    new-instance v4, Luz7;

    invoke-direct {v4, v0, v3}, Luz7;-><init>(Lmz7;Lh6;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$u;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$u;-><init>(Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;)V

    new-instance v3, Lte1;

    invoke-direct {v3, v0}, Lte1;-><init>(Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$u;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$v;

    invoke-direct {v0, p0, p1}, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$v;-><init>(Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;Lhd1;)V

    new-instance p1, Lue1;

    const/4 v5, 0x0

    invoke-direct {p1, v0, v5}, Lue1;-><init>(Lgh4;I)V

    invoke-virtual {v4, v3, p1}, Lmz7;->g(Lqx1;Lqx1;)Lrx1;

    move-result-object p1

    invoke-static {p0, p1, v2, v1, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->chequeInteractor:Lxd1;

    iget-object p1, p1, Lxd1;->b:Ljf6;

    invoke-interface {p1}, Ljf6;->x()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;->showCategoryTutorial()V

    :cond_2
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->chequeInteractor:Lxd1;

    iget-object p0, p0, Lxd1;->b:Ljf6;

    invoke-interface {p0}, Ljf6;->O()V

    :cond_3
    return-void
.end method

.method private static final showCheque$lambda$11$lambda$10(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final showCheque$lambda$11$lambda$7(Lnl3;Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static final showCheque$lambda$11$lambda$8(Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;)V
    .locals 1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;->showLoadingProducts(Z)V

    :cond_0
    return-void
.end method

.method private static final showCheque$lambda$11$lambda$9(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final showReasonCashbackReject(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbf1;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;

    if-eqz p0, :cond_1

    invoke-static {p1}, Lqn1;->T(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbf1;

    invoke-virtual {p1}, Lbf1;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;->showReasonRejectCashback(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final addDecoratorsAfterProducts(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lra4;",
            ">;)",
            "Ljava/util/List<",
            "Lra4;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lra4;

    instance-of v1, v0, Luh6;

    if-eqz v1, :cond_0

    new-instance v1, Lqa4;

    invoke-direct {v1}, Lqa4;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Lra4;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_0
    invoke-static {v0}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_1
    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0, p0}, Lnn1;->s(Ljava/lang/Iterable;Ljava/util/Collection;)V

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public final changePosSpecialByUser(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->pos:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_0
    return-void
.end method

.method public final onBackPressed()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Lo87;->c()V

    return-void
.end method

.method public final onChequeInfoFormSuccess()V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->onRefresh()V

    return-void
.end method

.method public onFirstViewAttach()V
    .locals 8

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->loadBanners()V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->onRefresh()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->chequeInteractor:Lxd1;

    iget v1, p0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->chequeId:I

    iget-object v0, v0, Lxd1;->a:Lcf1;

    invoke-interface {v0, v1}, Lcf1;->b(I)Lmz7;

    move-result-object v0

    new-instance v1, La9;

    const/4 v2, 0x3

    sget-object v3, Lyd1;->f:Lyd1;

    invoke-direct {v1, v3, v2}, La9;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lp08;

    invoke-direct {v2, v0, v1}, Lp08;-><init>(Lmz7;Lxl3;)V

    sget-object v0, Lne7;->c:Lhe7;

    invoke-virtual {v2, v0}, Lmz7;->i(Lhe7;)Le18;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$e;

    const-string v6, "showReasonCashbackReject(Ljava/util/List;)V"

    const/4 v7, 0x0

    const/4 v2, 0x1

    const-class v4, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;

    const-string v5, "showReasonCashbackReject"

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 p0, 0x0

    invoke-static {v0, p0, v1, v2}, Lyb8;->f(Lmz7;Lnl3;Lnl3;I)Lrx1;

    move-result-object v0

    invoke-static {v3, v0, p0, v2, p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final onPreviewCardClicked(J)V
    .locals 4

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->previewCards:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->previewCards:Ljava/util/HashMap;

    if-eqz v0, :cond_5

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzf6;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lzf6;->b:Ltf6;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;->showUpdateToAccessMessage()V

    :cond_2
    return-void

    :cond_3
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->flowRouter:Luf3;

    new-instance v0, Lgg7;

    invoke-direct {v0, p1, p2}, Lgg7;-><init>(J)V

    new-array p1, v2, [Llk3;

    aput-object v0, p1, v1

    invoke-virtual {p0, p1}, Luf3;->j([Llk3;)V

    return-void

    :cond_4
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->flowRouter:Luf3;

    new-instance v0, Llf7;

    invoke-direct {v0, p1, p2}, Llf7;-><init>(J)V

    new-array p1, v2, [Llk3;

    aput-object v0, p1, v1

    invoke-virtual {p0, p1}, Luf3;->j([Llk3;)V

    return-void

    :cond_5
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No such previewId {"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "}. Keys are: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onRefresh()V
    .locals 4

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->chequeString:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;->showCouldntLoadCheque(Z)V

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;->showLoadingCheque(Z)V

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;->showLoadingContent(Z)V

    :cond_0
    iget-object v0, p0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->chequeInteractor:Lxd1;

    iget v2, p0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->chequeId:I

    iget-object v0, v0, Lxd1;->a:Lcf1;

    invoke-interface {v0, v2}, Lcf1;->k(I)Lp08;

    move-result-object v0

    sget-object v2, Lne7;->c:Lhe7;

    invoke-virtual {v0, v2}, Lmz7;->i(Lhe7;)Le18;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object v0

    new-instance v2, Lxe1;

    invoke-direct {v2, p0}, Lxe1;-><init>(Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;)V

    new-instance v3, Luz7;

    invoke-direct {v3, v0, v2}, Luz7;-><init>(Lmz7;Lh6;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$f;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$f;-><init>(Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;)V

    new-instance v2, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$g;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$g;-><init>(Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;)V

    invoke-static {v3, v0, v2}, Lyb8;->d(Lmz7;Lnl3;Lnl3;)Lrx1;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {}, Lht3;->c()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lx39;

    const-class v3, Lhd1;

    invoke-direct {v2, v3}, Lx39;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->f(Ljava/lang/String;Lx39;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhd1;

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->cheque:Lhd1;

    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->showCheque(Lhd1;)V

    :cond_2
    return-void
.end method

.method public final onReportProduct(Lvg6;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->chequeInteractor:Lxd1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lxd1;->a:Lcf1;

    invoke-interface {v0, p1}, Lcf1;->m(Lvg6;)Lmz7;

    move-result-object p1

    new-instance v0, Lil0;

    sget-object v1, Lge1;->f:Lge1;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lil0;-><init>(Lnl3;I)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Le08;

    invoke-direct {v1, p1, v0}, Le08;-><init>(Lmz7;Lxl3;)V

    sget-object p1, Lne7;->c:Lhe7;

    invoke-virtual {v1, p1}, Lmz7;->i(Lhe7;)Le18;

    move-result-object p1

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object p1

    new-instance v0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$h;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$h;-><init>(Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;)V

    new-instance v1, Lt3;

    invoke-direct {v1, v0, v2}, Lt3;-><init>(Lgh4;I)V

    new-instance v0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$i;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$i;-><init>(Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;)V

    new-instance v3, Lre1;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lre1;-><init>(Lgh4;I)V

    invoke-virtual {p1, v1, v3}, Lmz7;->g(Lqx1;Lqx1;)Lrx1;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v2, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final onShareClicked()V
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->cheque:Lhd1;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;

    if-eqz p0, :cond_0

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;->showShareCheque(Lhd1;)V

    :cond_0
    return-void
.end method

.method public onSpecialItemClick(Lhc0$b;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lhc0$b;->c:Lb06;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lb06;->c:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->sendBannerClicked(Ljava/lang/String;)V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;

    if-eqz p0, :cond_1

    iget-object p1, p1, Lhc0$b;->b:Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;->openUrl(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final setScrollState(Z)V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->enableCarousel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public showSpecialAdInfoDialog(Lb06;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;->showAdInfoDialog(Lb06;)V

    :cond_0
    iget-object p0, p1, Lb06;->c:Ljava/lang/String;

    if-eqz p0, :cond_1

    new-instance p1, Lkd$e0$c;

    const-string v0, "Check_"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "description"

    invoke-static {p0, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "Ord"

    invoke-direct {p1, v0, p0}, Lkd;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p1}, Lkd;->a()V

    :cond_1
    return-void
.end method
