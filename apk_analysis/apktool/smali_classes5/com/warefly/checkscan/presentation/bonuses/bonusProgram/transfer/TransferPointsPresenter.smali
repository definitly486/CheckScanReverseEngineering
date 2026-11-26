.class public final Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsView;",
        ">;"
    }
.end annotation


# instance fields
.field private final bonusesInteractor:Lio0;

.field private programId:Ljava/lang/Long;

.field private timerDisposable:Lcp2;


# direct methods
.method public constructor <init>(Lio0;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsPresenter;->bonusesInteractor:Lio0;

    return-void
.end method

.method public static final synthetic access$showCodeExpireTime(Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsPresenter;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsPresenter;->showCodeExpireTime(J)V

    return-void
.end method

.method public static final synthetic access$triggerTimer(Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsPresenter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsPresenter;->triggerTimer(I)V

    return-void
.end method

.method public static synthetic e(Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsPresenter$a;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsPresenter;->loadCode$lambda$3(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic f(Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsPresenter$b;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsPresenter;->loadCode$lambda$4(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic g(Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsPresenter$d;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsPresenter;->triggerTimer$lambda$6(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic h(Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsPresenter;)V
    .locals 0

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsPresenter;->loadCode$lambda$2(Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsPresenter;)V

    return-void
.end method

.method public static synthetic i(Lnl3;Ljava/lang/Object;)Lwr5;
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsPresenter;->triggerTimer$lambda$5(Lnl3;Ljava/lang/Object;)Lwr5;

    move-result-object p0

    return-object p0
.end method

.method private final loadCode(J)V
    .locals 4

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsView;->setLoadCodeEnabled(Z)V

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsView;->showLoading(Z)V

    :cond_0
    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsPresenter;->bonusesInteractor:Lio0;

    iget-object v0, v0, Lio0;->a:Llo0;

    invoke-interface {v0, p1, p2}, Llo0;->b(J)Lmz7;

    move-result-object p1

    sget-object p2, Lne7;->c:Lhe7;

    invoke-virtual {p1, p2}, Lmz7;->i(Lhe7;)Le18;

    move-result-object p1

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object p1

    new-instance p2, La09;

    invoke-direct {p2, p0}, La09;-><init>(Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsPresenter;)V

    new-instance v0, Luz7;

    invoke-direct {v0, p1, p2}, Luz7;-><init>(Lmz7;Lh6;)V

    new-instance p1, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsPresenter$a;

    invoke-direct {p1, p0}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsPresenter$a;-><init>(Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsPresenter;)V

    new-instance p2, Lgl0;

    invoke-direct {p2, p1, v1}, Lgl0;-><init>(Lgh4;I)V

    new-instance p1, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsPresenter$b;

    invoke-direct {p1, p0}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsPresenter$b;-><init>(Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsPresenter;)V

    new-instance v2, Lg90;

    const/4 v3, 0x2

    invoke-direct {v2, p1, v3}, Lg90;-><init>(Lgh4;I)V

    invoke-virtual {v0, p2, v2}, Lmz7;->g(Lqx1;Lqx1;)Lrx1;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2, v1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private static final loadCode$lambda$2(Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsPresenter;)V
    .locals 1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsView;->showLoading(Z)V

    :cond_0
    return-void
.end method

.method private static final loadCode$lambda$3(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final loadCode$lambda$4(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final showCodeExpireTime(J)V
    .locals 4

    const-wide/16 v0, 0x3c

    div-long v0, p1, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    sub-long/2addr p1, v2

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsView;

    if-eqz p0, :cond_0

    invoke-interface {p0, v0, v1, p1, p2}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsView;->showCodeExpiringTime(JJ)V

    :cond_0
    return-void
.end method

.method private final triggerTimer(I)V
    .locals 11

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsPresenter;->timerDisposable:Lcp2;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcp2;->dispose()V

    :cond_0
    sget-object v6, Lne7;->b:Lhe7;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v1, "unit is null"

    invoke-static {v0, v1}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scheduler is null"

    invoke-static {v6, v0}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lnr5;

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x1

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-direct/range {v1 .. v6}, Lnr5;-><init>(JJLhe7;)V

    int-to-long v2, p1

    sub-long/2addr v2, v9

    cmp-long v0, v2, v7

    if-ltz v0, :cond_1

    new-instance v0, Lbs5;

    invoke-direct {v0, v1, v2, v3}, Lbs5;-><init>(Lnr5;J)V

    new-instance v1, Lzi4;

    const/4 v2, 0x3

    sget-object v3, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsPresenter$c;->f:Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsPresenter$c;

    invoke-direct {v1, v3, v2}, Lzi4;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Ltq5;->d(Lxl3;)Ltq5;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltq5;->e(Lhe7;)Lqr5;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsPresenter$d;

    invoke-direct {v1, p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsPresenter$d;-><init>(Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsPresenter;I)V

    new-instance p1, Lzo2;

    const/4 v2, 0x1

    invoke-direct {p1, v1, v2}, Lzo2;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lhh4;

    sget-object v3, Lrm3;->e:Lrm3$l;

    sget-object v4, Lrm3;->c:Lrm3$d;

    invoke-direct {v1, p1, v3, v4}, Lhh4;-><init>(Lqx1;Lqx1;Lh6;)V

    invoke-virtual {v0, v1}, Ltq5;->a(Lls5;)V

    const/4 p1, 0x0

    invoke-static {p0, v1, p1, v2, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsPresenter;->timerDisposable:Lcp2;

    return-void

    :cond_1
    const-string p0, "count >= 0 required but it was "

    invoke-static {v2, v3, p0}, Lr01;->c(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void
.end method

.method private static final triggerTimer$lambda$5(Lnl3;Ljava/lang/Object;)Lwr5;
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lwr5;

    return-object p0
.end method

.method private static final triggerTimer$lambda$6(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onLoadCodeClicked()V
    .locals 2

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsPresenter;->programId:Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsPresenter;->loadCode(J)V

    :cond_0
    return-void
.end method

.method public final onOpened(J)V
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsPresenter;->programId:Ljava/lang/Long;

    invoke-direct {p0, p1, p2}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsPresenter;->loadCode(J)V

    return-void
.end method
