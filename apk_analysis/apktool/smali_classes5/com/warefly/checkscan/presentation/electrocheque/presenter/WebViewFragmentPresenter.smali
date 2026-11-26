.class public final Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentView;",
        ">;"
    }
.end annotation


# instance fields
.field private final accountInteractor:Lc4;

.field private final electrochequeInteractor:Luv2;

.field private final flowRouter:Luf3;

.field private final preferencesRepository:Ljf6;


# direct methods
.method public constructor <init>(Luf3;Luv2;Lc4;Ljf6;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter;->flowRouter:Luf3;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter;->electrochequeInteractor:Luv2;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter;->accountInteractor:Lc4;

    iput-object p4, p0, Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter;->preferencesRepository:Ljf6;

    return-void
.end method

.method public static final synthetic access$bindUser(Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter;->bindUser(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getAccountInteractor$p(Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter;)Lc4;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter;->accountInteractor:Lc4;

    return-object p0
.end method

.method private final bindUser(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter;->electrochequeInteractor:Luv2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Luv2;->a:Lxv2;

    invoke-interface {v0, p1}, Lxv2;->e(Ljava/lang/String;)Lp08;

    move-result-object p1

    sget-object v0, Lne7;->c:Lhe7;

    invoke-virtual {p1, v0}, Lmz7;->i(Lhe7;)Le18;

    move-result-object p1

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object p1

    new-instance v0, Lz89;

    sget-object v1, Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter$a;->f:Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter$a;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lz89;-><init>(Lnl3;I)V

    new-instance v1, Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter$b;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter$b;-><init>(Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter;)V

    new-instance v3, Lrg9;

    invoke-direct {v3, v1}, Lrg9;-><init>(Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter$b;)V

    invoke-virtual {p1, v0, v3}, Lmz7;->g(Lqx1;Lqx1;)Lrx1;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v2, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private static final bindUser$lambda$2(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final bindUser$lambda$3(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic e(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter;->bindUser$lambda$2(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic f(Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter$d;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter;->getUrl$lambda$1(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic g(Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter$c;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter;->getUrl$lambda$0(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method private static final getUrl$lambda$0(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final getUrl$lambda$1(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic h(Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter$b;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter;->bindUser$lambda$3(Lnl3;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attachView(Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentView;)V
    .locals 0

    invoke-super {p0, p1}, Lih5;->attachView(Ljh5;)V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter;->preferencesRepository:Ljf6;

    invoke-interface {p0}, Ljf6;->b()V

    return-void
.end method

.method public bridge synthetic attachView(Ljh5;)V
    .locals 0

    .line 9
    check-cast p1, Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter;->attachView(Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentView;)V

    return-void
.end method

.method public final getUrl()V
    .locals 6

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter;->electrochequeInteractor:Luv2;

    iget-object v0, v0, Luv2;->a:Lxv2;

    invoke-interface {v0}, Lxv2;->getUrl()Lmz7;

    move-result-object v0

    sget-object v1, Lne7;->c:Lhe7;

    invoke-virtual {v0, v1}, Lmz7;->i(Lhe7;)Le18;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter$c;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter$c;-><init>(Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter;)V

    new-instance v2, Lmj1;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lmj1;-><init>(Lgh4;I)V

    new-instance v1, Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter$d;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter$d;-><init>(Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter;)V

    new-instance v4, Lnj1;

    const/4 v5, 0x2

    invoke-direct {v4, v1, v5}, Lnj1;-><init>(Lgh4;I)V

    invoke-virtual {v0, v2, v4}, Lmz7;->g(Lqx1;Lqx1;)Lrx1;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v3, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final loadReceipts(Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter;->electrochequeInteractor:Luv2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, -0x1

    const/4 v5, 0x1

    invoke-virtual {v1, v5, v4}, Ljava/util/Calendar;->add(II)V

    const/4 v4, 0x2

    const/4 v6, -0x6

    invoke-virtual {v1, v4, v6}, Ljava/util/Calendar;->add(II)V

    new-instance v4, Ljava/text/SimpleDateFormat;

    invoke-direct {v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Luv2;->a:Lxv2;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "Bearer "

    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v2, v4}, Lxv2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmz7;

    move-result-object v1

    sget-object v2, Lne7;->c:Lhe7;

    invoke-virtual {v1, v2}, Lmz7;->i(Lhe7;)Le18;

    move-result-object v1

    new-instance v2, Lsv2;

    invoke-direct {v2, v0, p1}, Lsv2;-><init>(Luv2;Ljava/lang/String;)V

    new-instance p1, Lpv2;

    invoke-direct {p1, v2}, Lpv2;-><init>(Lsv2;)V

    new-instance v0, Lsk1;

    sget-object v2, Ltv2;->f:Ltv2;

    invoke-direct {v0, v2, v5}, Lsk1;-><init>(Lnl3;I)V

    invoke-virtual {v1, p1, v0}, Lmz7;->g(Lqx1;Lqx1;)Lrx1;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v5, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnTermination$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final onBackPressed()V
    .locals 1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter;->flowRouter:Luf3;

    sget-object v0, Lum6;->a:Lum6;

    invoke-virtual {p0, v0}, Lo87;->a(Ldf7;)V

    return-void
.end method

.method public final openBonuses()V
    .locals 3

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter;->preferencesRepository:Ljf6;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljf6;->j0(Z)V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter;->flowRouter:Luf3;

    new-array v0, v1, [Ldf7;

    sget-object v1, Lcom/warefly/checkscan/presentation/e;->a:Lcom/warefly/checkscan/presentation/e;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lo87;->f([Ldf7;)V

    return-void
.end method

.method public final sendIsElectroUser(Z)V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter;->electrochequeInteractor:Luv2;

    iget-object p0, p0, Luv2;->b:Lqe;

    invoke-interface {p0, p1}, Lqe;->b(Z)V

    return-void
.end method

.method public final setUserRegistered(Z)V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter;->preferencesRepository:Ljf6;

    invoke-interface {p0, p1}, Ljf6;->j0(Z)V

    return-void
.end method
