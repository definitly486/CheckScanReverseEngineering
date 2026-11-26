.class public final Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"

# interfaces
.implements Lbv7;
.implements Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a$a;
.implements Ly44;
.implements Lt44$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter$a;,
        Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsView;",
        ">;",
        "Lbv7;",
        "Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a$a<",
        "Lcs0;",
        "Ljava/lang/Integer;",
        ">;",
        "Ly44;",
        "Lt44$b;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter$a;

.field private static final SPECIAL_INTERVAL:J = 0x1388L


# instance fields
.field private catSelectedId:I

.field private final controller:Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a<",
            "Lcs0;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final enableCarousel:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final flowRouter:Luf3;

.field private final interactor:Lbm0;

.field private final pos:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final reason:Luv7;

.field private final resourceProvider:Ls47;

.field private final selectedFrom:Lkd$o0;

.field private final shopsId:I

.field private specialAutoScrollInit:Z

.field private final toolbar:Ljava/lang/String;

.field private updatedByFilterShopId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->Companion:Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter$a;

    return-void
.end method

.method public constructor <init>(Luf3;ILbm0;Lkd$o0;Luv7;Ljava/lang/String;Ls47;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->flowRouter:Luf3;

    iput p2, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->shopsId:I

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->interactor:Lbm0;

    iput-object p4, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->selectedFrom:Lkd$o0;

    iput-object p5, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->reason:Luv7;

    iput-object p6, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->toolbar:Ljava/lang/String;

    iput-object p7, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->resourceProvider:Ls47;

    iput p2, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->catSelectedId:I

    iput p2, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->updatedByFilterShopId:I

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->enableCarousel:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->pos:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p1, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a;

    new-instance v0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter$c;

    const-string v5, "invalidateAndSubscribe()V"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;

    const-string v4, "invalidateAndSubscribe"

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p1, v0, v2}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a;-><init>(Lll3;Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a$a;)V

    iput-object p1, v2, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->controller:Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a;

    return-void
.end method

.method public static final synthetic access$getCatSelectedId$p(Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;)I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->catSelectedId:I

    return p0
.end method

.method public static final synthetic access$getEnableCarousel$p(Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->enableCarousel:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic access$getPos$p(Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->pos:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static final synthetic access$invalidateAndSubscribe(Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->invalidateAndSubscribe()V

    return-void
.end method

.method public static final synthetic access$prepareAutoScroll(Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->prepareAutoScroll()V

    return-void
.end method

.method public static synthetic e(Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;)V
    .locals 0

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->loadAll$lambda$2(Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;)V

    return-void
.end method

.method public static synthetic f(Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter$f;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->loadAll$lambda$1(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic g(Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter$k;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->prepareAutoScroll$lambda$4(Lnl3;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic h(Ldm3;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->loadAll$lambda$0(Ldm3;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private final invalidateAndSubscribe()V
    .locals 4

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->interactor:Lbm0;

    iget-object v0, v0, Lbm0;->o:Ltq5;

    sget-object v1, Lne7;->c:Lhe7;

    invoke-virtual {v0, v1}, Ltq5;->g(Lhe7;)Lxr5;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltq5;->e(Lhe7;)Lqr5;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter$d;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter$d;-><init>(Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;)V

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lyb8;->h(Lqr5;Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter$d;Lnl3;I)Lhh4;

    move-result-object v0

    const-string v1, "invalidateAndSubscribe"

    invoke-virtual {p0, v0, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy(Lcp2;Ljava/lang/String;)V

    return-void
.end method

.method private final loadAll(I)V
    .locals 8

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->interactor:Lbm0;

    sget-object v1, Lfc0;->HEADER:Lfc0;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Lbm0;->a:Lrp0;

    iget v4, v0, Lbm0;->e:I

    invoke-interface {v3, v1, v4, v2}, Lrp0;->b(Lfc0;ILjava/lang/Integer;)Lmz7;

    move-result-object v1

    new-instance v2, Lrl0;

    sget-object v3, Lum0;->f:Lum0;

    invoke-direct {v2, v3}, Lrl0;-><init>(Lnl3;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lp08;

    invoke-direct {v3, v1, v2}, Lp08;-><init>(Lmz7;Lxl3;)V

    new-instance v1, Lvm0;

    invoke-direct {v1, v0}, Lvm0;-><init>(Lbm0;)V

    new-instance v2, Lsl0;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4}, Lsl0;-><init>(Lgh4;I)V

    new-instance v1, Lyz7;

    invoke-direct {v1, v3, v2}, Lyz7;-><init>(Lmz7;Lqx1;)V

    new-instance v2, Lwm0;

    invoke-direct {v2, v0}, Lwm0;-><init>(Lbm0;)V

    new-instance v0, Ltl0;

    invoke-direct {v0, v2}, Ltl0;-><init>(Lwm0;)V

    new-instance v2, Lwz7;

    invoke-direct {v2, v1, v0}, Lwz7;-><init>(Lmz7;Lqx1;)V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->interactor:Lbm0;

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->reason:Luv7;

    sget-object v3, Luv7;->Category:Luv7;

    const/4 v5, 0x0

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v5

    :goto_0
    iget-object v3, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->reason:Luv7;

    sget-object v6, Luv7;->Selection:Luv7;

    if-eq v3, v6, :cond_2

    sget-object v6, Luv7;->TopSelection:Luv7;

    if-ne v3, v6, :cond_1

    goto :goto_1

    :cond_1
    move-object v3, v5

    goto :goto_2

    :cond_2
    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_2
    iget-object v6, v0, Lbm0;->a:Lrp0;

    iget v7, v0, Lbm0;->e:I

    invoke-interface {v6, v3, v1, v7, v4}, Lrp0;->f(Ljava/lang/Integer;Ljava/lang/Integer;II)Lp08;

    move-result-object v1

    new-instance v3, Lgn0;

    invoke-direct {v3, v0}, Lgn0;-><init>(Lbm0;)V

    new-instance v6, Lpl0;

    invoke-direct {v6, v3, v4}, Lpl0;-><init>(Lgh4;I)V

    new-instance v3, Lyz7;

    invoke-direct {v3, v1, v6}, Lyz7;-><init>(Lmz7;Lqx1;)V

    new-instance v1, Lhn0;

    invoke-direct {v1, v0}, Lhn0;-><init>(Lbm0;)V

    new-instance v0, Lql0;

    invoke-direct {v0, v1, v4}, Lql0;-><init>(Lgh4;I)V

    new-instance v1, Lwz7;

    invoke-direct {v1, v3, v0}, Lwz7;-><init>(Lmz7;Lqx1;)V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->interactor:Lbm0;

    iget-object v3, v0, Lbm0;->a:Lrp0;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v6, v0, Lbm0;->e:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, p1, v6, v4}, Lrp0;->p(Ljava/lang/Integer;Ljava/lang/Integer;I)Lp08;

    move-result-object p1

    new-instance v3, Lv90;

    sget-object v6, Ldn0;->f:Ldn0;

    const/4 v7, 0x1

    invoke-direct {v3, v6, v7}, Lv90;-><init>(Lnl3;I)V

    new-instance v6, Lp08;

    invoke-direct {v6, p1, v3}, Lp08;-><init>(Lmz7;Lxl3;)V

    new-instance p1, Len0;

    invoke-direct {p1, v0}, Len0;-><init>(Lbm0;)V

    new-instance v3, Lnl0;

    invoke-direct {v3, p1, v4}, Lnl0;-><init>(Lnl3;I)V

    new-instance p1, Lyz7;

    invoke-direct {p1, v6, v3}, Lyz7;-><init>(Lmz7;Lqx1;)V

    new-instance v3, Lfn0;

    invoke-direct {v3, v0}, Lfn0;-><init>(Lbm0;)V

    new-instance v0, Lol0;

    invoke-direct {v0, v3}, Lol0;-><init>(Lfn0;)V

    new-instance v3, Lwz7;

    invoke-direct {v3, p1, v0}, Lwz7;-><init>(Lmz7;Lqx1;)V

    new-instance p1, Lea;

    sget-object v0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter$e;->f:Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter$e;

    invoke-direct {p1, v0}, Lea;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lrm3$b;

    invoke-direct {v0, p1}, Lrm3$b;-><init>(Lem3;)V

    const/4 p1, 0x3

    new-array p1, p1, [Lc18;

    aput-object v2, p1, v4

    aput-object v1, p1, v7

    const/4 v1, 0x2

    aput-object v3, p1, v1

    new-instance v2, Lj18;

    invoke-direct {v2, p1, v0}, Lj18;-><init>([Lc18;Lxl3;)V

    sget-object p1, Lne7;->c:Lhe7;

    invoke-virtual {v2, p1}, Lmz7;->i(Lhe7;)Le18;

    move-result-object p1

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object p1

    new-instance v0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter$f;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter$f;-><init>(Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;)V

    new-instance v2, Lre1;

    invoke-direct {v2, v0, v1}, Lre1;-><init>(Lgh4;I)V

    new-instance v0, Lxz7;

    invoke-direct {v0, p1, v2}, Lxz7;-><init>(Lmz7;Lqx1;)V

    new-instance p1, Lqy4;

    invoke-direct {p1, p0, v7}, Lqy4;-><init>(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;I)V

    new-instance v1, Luz7;

    invoke-direct {v1, v0, p1}, Luz7;-><init>(Lmz7;Lh6;)V

    sget-object p1, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter$g;->f:Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter$g;

    invoke-static {v1, v5, p1, v7}, Lyb8;->f(Lmz7;Lnl3;Lnl3;I)Lrx1;

    move-result-object p1

    const-string v0, "loadAll"

    invoke-virtual {p0, p1, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy(Lcp2;Ljava/lang/String;)V

    return-void
.end method

.method private static final loadAll$lambda$0(Ldm3;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lj59;
    .locals 0

    invoke-interface {p0, p1, p2, p3}, Ldm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj59;

    return-object p0
.end method

.method private static final loadAll$lambda$1(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final loadAll$lambda$2(Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;)V
    .locals 1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsView;->showLoading(Z)V

    :cond_0
    return-void
.end method

.method private final prepareAutoScroll()V
    .locals 9

    iget-boolean v0, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->specialAutoScrollInit:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->specialAutoScrollInit:Z

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

    new-instance v0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter$k;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter$k;-><init>(Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;)V

    new-instance v2, Ly3;

    const/4 v3, 0x3

    invoke-direct {v2, v0, v3}, Ly3;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lth3;

    invoke-direct {v0, v1, v2}, Lth3;-><init>(Lgg3;Lze6;)V

    new-instance v1, Llh3;

    invoke-direct {v1, v0}, Llh3;-><init>(Lgg3;)V

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgg3;->c(Lhe7;)Leh3;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter$l;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter$l;-><init>(Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;)V

    invoke-static {v0, v1, v3}, Lyb8;->i(Lgg3;Lnl3;I)Lih4;

    move-result-object v0

    const-string v1, "carouselFlow"

    invoke-virtual {p0, v0, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy(Lcp2;Ljava/lang/String;)V

    return-void
.end method

.method private static final prepareAutoScroll$lambda$4(Lnl3;Ljava/lang/Object;)Z
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private final sendOnSpecialsClicked(Lhc0$b;)V
    .locals 3

    iget-object v0, p1, Lhc0$b;->b:Ljava/lang/String;

    iget v1, p1, Lhc0$b;->e:I

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->resourceProvider:Ls47;

    const v2, 0x7f1401bd

    invoke-interface {p0, v2}, Ls47;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-static {v0, p0, v2}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    const-string v0, "headers"

    if-eqz p0, :cond_0

    new-instance p0, Lkd$e$d$g$e;

    invoke-static {v1, v0}, Lud;->c(ILjava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v2}, Lkd$e$d$g;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lkd;->a()V

    :cond_0
    iget-object p0, p1, Lhc0$b;->c:Lb06;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lb06;->c:Ljava/lang/String;

    if-eqz p0, :cond_1

    new-instance p1, Lkd$e0$e;

    invoke-direct {p1, p0}, Lkd$e0$e;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lkd;->a()V

    :cond_1
    new-instance p0, Lkd$e$c$c;

    invoke-static {v1, v0}, Lud;->c(ILjava/lang/String;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1}, Lkd$e$c;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lkd;->c()V

    return-void
.end method

.method private final sendSelectedFrom(I)V
    .locals 2

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->selectedFrom:Lkd$o0;

    sget-object v0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter$b;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lkd$e$a$a$f$d;

    invoke-direct {p0, p1}, Lkd$e$a$a$f$d;-><init>(I)V

    invoke-virtual {p0}, Lkd;->a()V

    new-instance p0, Lkd$e$d$g$f;

    invoke-direct {p0, p1}, Lkd$e$d$g$f;-><init>(I)V

    invoke-virtual {p0}, Lkd;->a()V

    return-void

    :cond_1
    new-instance p0, Lkd$e$d$g$c;

    const-string v0, "Category"

    invoke-static {p1, v0}, Lud;->c(ILjava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v1}, Lkd$e$d$g;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lkd;->a()V

    new-instance p0, Lkd$e$a$a$f$b;

    invoke-direct {p0, p1, v0}, Lkd$e$a$a$f;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0}, Lkd;->a()V

    return-void
.end method

.method private final sendTopFromList(I)V
    .locals 1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->reason:Luv7;

    sget-object v0, Luv7;->TopSelection:Luv7;

    if-ne p0, v0, :cond_0

    new-instance p0, Lkd$e$c$h$a;

    invoke-direct {p0, p1}, Lkd$e$c$h$a;-><init>(I)V

    invoke-virtual {p0}, Lkd;->a()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final changePosSpecialByUser(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->pos:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_0
    return-void
.end method

.method public enableScroll(Z)V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->enableCarousel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final getCurrentSpecialPos()I
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->pos:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public loadNextPage(II)Lmz7;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lmz7<",
            "Lk57<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->interactor:Lbm0;

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->reason:Luv7;

    sget-object v2, Luv7;->Category:Luv7;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->reason:Luv7;

    sget-object v2, Luv7;->Selection:Luv7;

    if-eq p0, v2, :cond_1

    sget-object v2, Luv7;->TopSelection:Luv7;

    if-ne p0, v2, :cond_2

    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_2
    iget-object p0, v0, Lbm0;->a:Lrp0;

    iget p2, v0, Lbm0;->e:I

    invoke-interface {p0, v3, v1, p2, p1}, Lrp0;->f(Ljava/lang/Integer;Ljava/lang/Integer;II)Lp08;

    move-result-object p0

    new-instance p1, Lcn0;

    invoke-direct {p1, v0}, Lcn0;-><init>(Lbm0;)V

    new-instance p2, Lz3;

    const/4 v0, 0x1

    invoke-direct {p2, p1, v0}, Lz3;-><init>(Ljava/lang/Object;I)V

    new-instance p1, Le08;

    invoke-direct {p1, p0, p2}, Le08;-><init>(Lmz7;Lxl3;)V

    return-object p1
.end method

.method public bridge synthetic loadNextPage(ILjava/lang/Object;)Lmz7;
    .locals 0

    .line 54
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->loadNextPage(II)Lmz7;

    move-result-object p0

    return-object p0
.end method

.method public final loadNextShops()V
    .locals 3

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->controller:Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a;->a()Lqp1;

    move-result-object v0

    sget-object v1, Lne7;->c:Lhe7;

    invoke-virtual {v0, v1}, Lqp1;->i(Lhe7;)Lrq1;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lqp1;->f(Lhe7;)Llq1;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v0, v2, v2, v1}, Lyb8;->g(Llq1;Lnl3;Lll3;I)Lcp2;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v2, v1, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final onBackPressed()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Lo87;->c()V

    return-void
.end method

.method public onConfirmAdultClick()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->interactor:Lbm0;

    iget-object p0, p0, Lbm0;->a:Lrp0;

    invoke-interface {p0}, Lrp0;->e()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->interactor:Lbm0;

    invoke-virtual {v0}, Lbm0;->a()V

    invoke-super {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->onDestroy()V

    return-void
.end method

.method public final onFavoritePromocode(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->interactor:Lbm0;

    invoke-virtual {v0, p1, p2}, Lbm0;->e(IZ)Lh08;

    move-result-object v0

    sget-object v1, Lne7;->c:Lhe7;

    invoke-virtual {v0, v1}, Lqp1;->i(Lhe7;)Lrq1;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lqp1;->f(Lhe7;)Llq1;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter$h;

    invoke-direct {v1, p2, p1, p0}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter$h;-><init>(ZILcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {v0, p2, v1, p1}, Lyb8;->g(Llq1;Lnl3;Lll3;I)Lcp2;

    move-result-object p1

    const-string p2, "onFavoritePromocode"

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy(Lcp2;Ljava/lang/String;)V

    return-void
.end method

.method public onFavouriteClick(IZ)V
    .locals 5

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->interactor:Lbm0;

    iget-object v1, v0, Lbm0;->a:Lrp0;

    invoke-interface {v1, p1, p2}, Lrp0;->t(IZ)Lqp1;

    move-result-object v1

    iget-object v2, v0, Lbm0;->b:Laa;

    int-to-long v3, p1

    invoke-interface {v2, v3, v4}, Laa;->j(J)Lmz7;

    move-result-object v2

    invoke-virtual {v1, v2}, Lqp1;->d(Lmz7;)Lrz7;

    move-result-object v1

    new-instance v2, Lrn0;

    invoke-direct {v2, v0, p1}, Lrn0;-><init>(Lbm0;I)V

    new-instance p1, La9;

    const/4 v0, 0x1

    invoke-direct {p1, v2, v0}, La9;-><init>(Ljava/lang/Object;I)V

    new-instance v2, Lh08;

    invoke-direct {v2, v1, p1}, Lh08;-><init>(Lmz7;Lxl3;)V

    sget-object p1, Lne7;->c:Lhe7;

    invoke-virtual {v2, p1}, Lqp1;->i(Lhe7;)Lrq1;

    move-result-object p1

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {p1, v1}, Lqp1;->f(Lhe7;)Llq1;

    move-result-object p1

    new-instance v1, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter$i;

    invoke-direct {v1, p0, p2}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter$i;-><init>(Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;Z)V

    const/4 p2, 0x0

    invoke-static {p1, p2, v1, v0}, Lyb8;->g(Llq1;Lnl3;Lll3;I)Lcp2;

    move-result-object p1

    const-string p2, "onFavouriteClick"

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy(Lcp2;Ljava/lang/String;)V

    return-void
.end method

.method public final onFiltersClicked()V
    .locals 4

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->interactor:Lbm0;

    iget-object v1, v0, Lbm0;->a:Lrp0;

    iget v0, v0, Lbm0;->e:I

    invoke-interface {v1, v0}, Lrp0;->s(I)Lp08;

    move-result-object v0

    new-instance v1, Lq9;

    const/4 v2, 0x2

    sget-object v3, Lpm0;->f:Lpm0;

    invoke-direct {v1, v3, v2}, Lq9;-><init>(Ljava/lang/Object;I)V

    new-instance v2, Lp08;

    invoke-direct {v2, v0, v1}, Lp08;-><init>(Lmz7;Lxl3;)V

    sget-object v0, Lne7;->c:Lhe7;

    invoke-virtual {v2, v0}, Lmz7;->i(Lhe7;)Le18;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter$j;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter$j;-><init>(Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lyb8;->f(Lmz7;Lnl3;Lnl3;I)Lrx1;

    move-result-object v0

    const-string v1, "onFiltersClicked"

    invoke-virtual {p0, v0, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy(Lcp2;Ljava/lang/String;)V

    return-void
.end method

.method public onFirstViewAttach()V
    .locals 3

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->reason:Luv7;

    sget-object v2, Luv7;->Category:Luv7;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsView;->showFilterButton(Z)V

    :cond_1
    iget v0, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->shopsId:I

    invoke-direct {p0, v0}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->loadAll(I)V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->controller:Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a;

    iget v1, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->shopsId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->toolbar:Ljava/lang/String;

    invoke-static {v0}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsView;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->toolbar:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsView;->setToolbarTitle(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final onMorePromocodesClicked()V
    .locals 5

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->flowRouter:Luf3;

    new-instance v1, Lth7;

    iget p0, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->shopsId:I

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v3, p0, v2, v4}, Lth7;-><init>(Ljava/lang/String;IIZ)V

    const/4 p0, 0x1

    new-array p0, p0, [Llk3;

    aput-object v1, p0, v4

    invoke-virtual {v0, p0}, Luf3;->j([Llk3;)V

    return-void
.end method

.method public onOrdClick(Lb06;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsView;->showOrdBottomSheet(Lb06;)V

    :cond_0
    return-void
.end method

.method public final onPromocodeClicked(I)V
    .locals 3

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->reason:Luv7;

    sget-object v1, Luv7;->Category:Luv7;

    if-ne v0, v1, :cond_0

    new-instance v0, Lvd;

    invoke-direct {v0, p1}, Lvd;-><init>(I)V

    invoke-virtual {v0}, Lkd;->a()V

    new-instance v0, Lpd;

    invoke-direct {v0, p1}, Lpd;-><init>(I)V

    invoke-virtual {v0}, Lkd;->a()V

    :cond_0
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->flowRouter:Luf3;

    new-instance v0, Lgg7;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lgg7;-><init>(J)V

    invoke-virtual {p0, v0}, Lo87;->d(Ldf7;)V

    return-void
.end method

.method public onShopClick(I)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->sendTopFromList(I)V

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->sendSelectedFrom(I)V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->flowRouter:Luf3;

    new-instance v0, Llf7;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Llf7;-><init>(J)V

    invoke-virtual {p0, v0}, Lo87;->d(Ldf7;)V

    return-void
.end method

.method public onSpecialItemClick(Lhc0$b;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->sendOnSpecialsClicked(Lhc0$b;)V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsView;

    if-eqz p0, :cond_0

    iget-object p1, p1, Lhc0$b;->b:Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;->openUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final setScrollState(Z)V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->enableCarousel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final showShops(ILjava/lang/String;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->interactor:Lbm0;

    invoke-virtual {v0}, Lbm0;->a()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->controller:Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsView;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsView;->setToolbarTitle(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p2

    check-cast p2, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsView;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsView;->scrollToTop()V

    :cond_1
    iput p1, p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->updatedByFilterShopId:I

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->loadAll(I)V

    return-void
.end method

.method public showSpecialAdInfoDialog(Lb06;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lb06;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lb06;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lb06;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v1, Lkd$e0$f;

    invoke-direct {v1, v0}, Lkd$e0$f;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lkd;->a()V

    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsView;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/view/OnlineShopsView;->showOrdBottomSheet(Lb06;)V

    :cond_1
    return-void
.end method
