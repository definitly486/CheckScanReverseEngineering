.class public final Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"

# interfaces
.implements Lu89;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter$a;,
        Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/createCard/view/CreateCardView;",
        ">;",
        "Lu89;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter$a;

.field private static final SCREEN_ANALYTICS_TAG:Ljava/lang/String; = "CobrandCreate"


# instance fields
.field private final bankInteractor:Lca0;

.field private final flowRouter:Luf3;

.field private final fromType:Ld62;

.field private final preferencesRepository:Ljf6;

.field private final validator:Li3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->Companion:Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter$a;

    return-void
.end method

.method public constructor <init>(Luf3;Ljf6;Li3;Lca0;Ld62;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->flowRouter:Luf3;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->preferencesRepository:Ljf6;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->validator:Li3;

    iput-object p4, p0, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->bankInteractor:Lca0;

    iput-object p5, p0, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->fromType:Ld62;

    return-void
.end method

.method public static final synthetic access$eventUpgradeFormOpened(Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->eventUpgradeFormOpened()V

    return-void
.end method

.method public static final synthetic access$getFlowRouter$p(Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;)Luf3;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->flowRouter:Luf3;

    return-object p0
.end method

.method public static final synthetic access$getLinkForUprid(Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->getLinkForUprid()V

    return-void
.end method

.method public static final synthetic access$getPreferencesRepository$p(Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;)Ljf6;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->preferencesRepository:Ljf6;

    return-object p0
.end method

.method public static final synthetic access$getValidator$p(Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;)Li3;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->validator:Li3;

    return-object p0
.end method

.method public static final synthetic access$requestVerificationPhone(Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->requestVerificationPhone(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$showUpridWebDialogFromStart(Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->showUpridWebDialogFromStart()V

    return-void
.end method

.method public static final synthetic access$showUpridWebDialogWhenEvent(Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->showUpridWebDialogWhenEvent()V

    return-void
.end method

.method private final checkNumber()V
    .locals 7

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->preferencesRepository:Ljf6;

    invoke-interface {v0}, Ljf6;->G0()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lkd$j$c$e;->e:Lkd$j$c$e;

    invoke-virtual {v0}, Lkd;->a()V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardView;

    if-eqz p0, :cond_4

    invoke-interface {p0, v2, v2, v1}, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardView;->isHaveNumber(ZZLjava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->preferencesRepository:Ljf6;

    invoke-interface {v0}, Ljf6;->U0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v0, Lkd$j$c$e;->e:Lkd$j$c$e;

    invoke-virtual {v0}, Lkd;->a()V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardView;

    if-eqz p0, :cond_4

    invoke-interface {p0, v2, v2, v1}, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardView;->isHaveNumber(ZZLjava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->validator:Li3;

    invoke-virtual {v1, v0}, Li3;->d(Ljava/lang/String;)Z

    move-result v1

    iget-object v3, p0, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->validator:Li3;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Li3;->b(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    sget-object v1, Lkd$j$c$d;->e:Lkd$j$c$d;

    invoke-virtual {v1}, Lkd;->a()V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v1

    check-cast v1, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardView;

    if-eqz v1, :cond_4

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->validator:Li3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Li3;->c:Lg17;

    iget-object p0, p0, Li3;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Lg17;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1, v4, v4, p0}, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardView;->isHaveNumber(ZZLjava/lang/String;)V

    return-void

    :cond_2
    sget-object v1, Lkd$j$c$c;->e:Lkd$j$c$c;

    invoke-virtual {v1}, Lkd;->a()V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v1

    check-cast v1, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardView;

    if-eqz v1, :cond_4

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->validator:Li3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    const-string v3, " *** *** ** "

    const/16 v5, 0x9

    if-lt p0, v5, :cond_3

    new-instance p0, Ly74;

    const/4 v6, 0x2

    invoke-direct {p0, v6, v5, v4}, Lw74;-><init>(III)V

    iget p0, p0, Lw74;->c:I

    add-int/2addr p0, v4

    invoke-static {v0, v6, p0, v3}, Lta8;->V(Ljava/lang/String;IILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_3
    invoke-interface {v1, v4, v2, v3}, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardView;->isHaveNumber(ZZLjava/lang/String;)V

    :cond_4
    return-void
.end method

.method public static synthetic e(Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter$i;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->onIssueClick$lambda$1(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method private final eventAttemptRegister()V
    .locals 3

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->bankInteractor:Lca0;

    iget-object v0, v0, Lca0;->a:Lpb0;

    invoke-interface {v0}, Lpb0;->d()Lqp1;

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

.method private final eventUpgradeFormOpened()V
    .locals 3

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->bankInteractor:Lca0;

    iget-object v0, v0, Lca0;->a:Lpb0;

    invoke-interface {v0}, Lpb0;->c()Lqp1;

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

.method public static synthetic f(Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter$o;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->showUpridWebDialogFromStart$lambda$6(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic g(Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;)V
    .locals 0

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->requestVerificationPhone$lambda$4(Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;)V

    return-void
.end method

.method private final getLinkForUprid()V
    .locals 3

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->bankInteractor:Lca0;

    iget-object v0, v0, Lca0;->a:Lpb0;

    invoke-interface {v0}, Lpb0;->i()Le08;

    move-result-object v0

    sget-object v1, Lne7;->c:Lhe7;

    invoke-virtual {v0, v1}, Lmz7;->i(Lhe7;)Le18;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter$c;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter$c;-><init>(Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;)V

    new-instance v2, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter$d;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter$d;-><init>(Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;)V

    invoke-static {v0, v1, v2}, Lyb8;->d(Lmz7;Lnl3;Lnl3;)Lrx1;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic h(Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;)V
    .locals 0

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->showUpridWebDialogFromStart$lambda$7(Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;)V

    return-void
.end method

.method public static synthetic i(Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;)V
    .locals 0

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->onIssueClick$lambda$2(Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;)V

    return-void
.end method

.method public static synthetic j(Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter$l;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->requestVerificationPhone$lambda$3(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic k(Lbm3;Ljava/lang/Object;Ljava/lang/Object;)Lb36;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->onIssueClick$lambda$0(Lbm3;Ljava/lang/Object;Ljava/lang/Object;)Lb36;

    move-result-object p0

    return-object p0
.end method

.method private static final onIssueClick$lambda$0(Lbm3;Ljava/lang/Object;Ljava/lang/Object;)Lb36;
    .locals 0

    invoke-interface {p0, p1, p2}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb36;

    return-object p0
.end method

.method private static final onIssueClick$lambda$1(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final onIssueClick$lambda$2(Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;)V
    .locals 1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardView;->showLoading(Z)V

    :cond_0
    return-void
.end method

.method private final openBalanceScreen()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Lo87;->c()V

    return-void
.end method

.method private final requestVerificationPhone(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->bankInteractor:Lca0;

    sget-object v1, Lcw1;->SMS:Lcw1;

    invoke-virtual {v0, p1, v1}, Lca0;->b(Ljava/lang/String;Lcw1;)Le08;

    move-result-object v0

    sget-object v1, Lne7;->c:Lhe7;

    invoke-virtual {v0, v1}, Lmz7;->i(Lhe7;)Le18;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter$l;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter$l;-><init>(Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;)V

    new-instance v2, Lg90;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lg90;-><init>(Lgh4;I)V

    new-instance v1, Lxz7;

    invoke-direct {v1, v0, v2}, Lxz7;-><init>(Lmz7;Lqx1;)V

    new-instance v0, Lg62;

    invoke-direct {v0, p0}, Lg62;-><init>(Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;)V

    new-instance v2, Luz7;

    invoke-direct {v2, v1, v0}, Luz7;-><init>(Lmz7;Lh6;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter$m;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter$m;-><init>(Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;)V

    new-instance v1, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter$n;

    invoke-direct {v1, p0, p1}, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter$n;-><init>(Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;Ljava/lang/String;)V

    invoke-static {v2, v0, v1}, Lyb8;->d(Lmz7;Lnl3;Lnl3;)Lrx1;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v3, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private static final requestVerificationPhone$lambda$3(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final requestVerificationPhone$lambda$4(Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;)V
    .locals 1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardView;->showLoading(Z)V

    :cond_0
    return-void
.end method

.method private final showUpridWebDialogFromStart()V
    .locals 3

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->bankInteractor:Lca0;

    iget-object v0, v0, Lca0;->a:Lpb0;

    invoke-interface {v0}, Lpb0;->i()Le08;

    move-result-object v0

    sget-object v1, Lne7;->c:Lhe7;

    invoke-virtual {v0, v1}, Lmz7;->i(Lhe7;)Le18;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter$o;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter$o;-><init>(Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;)V

    new-instance v2, Le62;

    invoke-direct {v2, v1}, Le62;-><init>(Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter$o;)V

    new-instance v1, Lxz7;

    invoke-direct {v1, v0, v2}, Lxz7;-><init>(Lmz7;Lqx1;)V

    new-instance v0, Lf62;

    invoke-direct {v0, p0}, Lf62;-><init>(Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;)V

    new-instance v2, Luz7;

    invoke-direct {v2, v1, v0}, Luz7;-><init>(Lmz7;Lh6;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter$p;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter$p;-><init>(Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;)V

    new-instance v1, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter$q;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter$q;-><init>(Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;)V

    invoke-static {v2, v0, v1}, Lyb8;->d(Lmz7;Lnl3;Lnl3;)Lrx1;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private static final showUpridWebDialogFromStart$lambda$6(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final showUpridWebDialogFromStart$lambda$7(Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;)V
    .locals 1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardView;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardView;->enableIssueButton(Z)V

    :cond_0
    return-void
.end method

.method private final showUpridWebDialogWhenEvent()V
    .locals 4

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->bankInteractor:Lca0;

    iget-object v0, v0, Lca0;->d:Lct6;

    sget-object v1, Lne7;->c:Lhe7;

    invoke-virtual {v0, v1}, Ltq5;->g(Lhe7;)Lxr5;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltq5;->e(Lhe7;)Lqr5;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter$r;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter$r;-><init>(Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;)V

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lyb8;->h(Lqr5;Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter$d;Lnl3;I)Lhh4;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v3, v1, v3}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final editNumberClick()V
    .locals 1

    sget-object v0, Lkd$j$c$b;->e:Lkd$j$c$b;

    invoke-virtual {v0}, Lkd;->a()V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luf3;->c:Lo87;

    sget-object v0, Lvf7;->a:Lvf7;

    invoke-virtual {p0, v0}, Lo87;->d(Ldf7;)V

    return-void
.end method

.method public final onBackClick()V
    .locals 2

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->fromType:Ld62;

    sget-object v1, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter$b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->flowRouter:Luf3;

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Luf3;->i()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lo87;->c()V

    return-void

    :cond_1
    new-instance v0, Lfh7;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfh7;-><init>(Z)V

    invoke-virtual {p0, v0}, Lo87;->a(Ldf7;)V

    return-void
.end method

.method public onClosePlasticReject(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->bankInteractor:Lca0;

    invoke-virtual {v0, p1}, Lca0;->c(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->openBalanceScreen()V

    return-void
.end method

.method public onClosePlasticWait(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->bankInteractor:Lca0;

    invoke-virtual {v0, p1}, Lca0;->c(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->openBalanceScreen()V

    return-void
.end method

.method public onCloseReject(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkd$j$b$e;->e:Lkd$j$b$e;

    invoke-virtual {v0}, Lkd;->a()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->bankInteractor:Lca0;

    invoke-virtual {v0, p1}, Lca0;->c(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->openBalanceScreen()V

    return-void
.end method

.method public onCloseStartDownloadingAlfa(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->bankInteractor:Lca0;

    invoke-virtual {v0, p1}, Lca0;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardView;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardView;->dismissUpridDialog()V

    :cond_0
    iget-object p1, p0, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->flowRouter:Luf3;

    new-instance v0, Lcom/warefly/checkscan/presentation/f;

    new-instance v1, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Balance;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Balance;-><init>(Z)V

    invoke-direct {v0, v1}, Lcom/warefly/checkscan/presentation/f;-><init>(Lcom/warefly/checkscan/presentation/Deeplink$Desktop;)V

    invoke-virtual {p1, v0}, Lo87;->g(Ldf7;)V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardView;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->bankInteractor:Lca0;

    iget-object p0, p0, Lca0;->c:Ls47;

    const v0, 0x7f140078

    invoke-interface {p0, v0}, Ls47;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;->openUrl(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onCloseSuccess(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkd$j$b$h;->e:Lkd$j$b$h;

    invoke-virtual {v0}, Lkd;->a()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->bankInteractor:Lca0;

    invoke-virtual {v0, p1}, Lca0;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardView;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardView;->dismissUpridDialog()V

    :cond_0
    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->openBalanceScreen()V

    return-void
.end method

.method public onCloseUpridWeb()V
    .locals 1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardView;->dismissUpridDialog()V

    :cond_0
    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->openBalanceScreen()V

    return-void
.end method

.method public onCloseUserExist(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkd$j$b$f;->e:Lkd$j$b$f;

    invoke-virtual {v0}, Lkd;->a()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->bankInteractor:Lca0;

    invoke-virtual {v0, p1}, Lca0;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardView;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardView;->dismissUpridDialog()V

    :cond_0
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->flowRouter:Luf3;

    new-instance p1, Lcom/warefly/checkscan/presentation/f;

    new-instance v0, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Balance;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Balance;-><init>(Z)V

    invoke-direct {p1, v0}, Lcom/warefly/checkscan/presentation/f;-><init>(Lcom/warefly/checkscan/presentation/Deeplink$Desktop;)V

    invoke-virtual {p0, p1}, Lo87;->g(Ldf7;)V

    return-void
.end method

.method public onFirstViewAttach()V
    .locals 4

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    new-instance v0, Lkd$n0$a;

    const-string v1, "CobrandCreate"

    const-string v2, "Appeared"

    invoke-static {v2, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "Screen"

    invoke-direct {v0, v2, v1}, Lkd;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0}, Lkd;->a()V

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->eventAttemptRegister()V

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->checkNumber()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->fromType:Ld62;

    sget-object v1, Ld62;->RegisterToCreate:Ld62;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->showUpridWebDialogFromStart()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->bankInteractor:Lca0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ly90;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ly90;-><init>(Lca0;Le02;)V

    new-instance v0, Ltb7;

    invoke-direct {v0, v1}, Ltb7;-><init>(Lbm3;)V

    new-instance v1, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter$e;

    invoke-direct {v1, p0, v2}, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter$e;-><init>(Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;Le02;)V

    new-instance v3, Lce3;

    invoke-direct {v3, v0, v1}, Lce3;-><init>(Lhd3;Lbm3;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter$f;

    invoke-direct {v0, p0, v2}, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter$f;-><init>(Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;Le02;)V

    new-instance v1, Ldf3;

    invoke-direct {v1, v3, v0}, Ldf3;-><init>(Lhd3;Lbm3;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter$g;

    invoke-direct {v0, p0, v2}, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter$g;-><init>(Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;Le02;)V

    new-instance v2, Lde3;

    invoke-direct {v2, v1, v0}, Lde3;-><init>(Lhd3;Ldm3;)V

    invoke-virtual {p0, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method public final onIssueClick(Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkd$j$c$a;->e:Lkd$j$c$a;

    invoke-virtual {v0}, Lkd;->a()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->preferencesRepository:Ljf6;

    invoke-interface {v0}, Ljf6;->G0()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->bankInteractor:Lca0;

    iget-object v0, v0, Lca0;->a:Lpb0;

    invoke-interface {v0}, Lpb0;->b()Lmz7;

    move-result-object v0

    sget-object v2, Lba0;->g:Lba0;

    new-instance v3, Lx90;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lx90;-><init>(Lnl3;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lp08;

    invoke-direct {v2, v0, v3}, Lp08;-><init>(Lmz7;Lxl3;)V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->bankInteractor:Lca0;

    invoke-virtual {v0}, Lca0;->a()Lp08;

    move-result-object v0

    new-instance v3, Lhl0;

    const/4 v5, 0x2

    sget-object v6, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter$h;->f:Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter$h;

    invoke-direct {v3, v6, v5}, Lhl0;-><init>(Ljava/lang/Object;I)V

    invoke-static {v2, v0, v3}, Lmz7;->j(Lmz7;Lmz7;Lli0;)Lmz7;

    move-result-object v0

    sget-object v2, Lne7;->c:Lhe7;

    invoke-virtual {v0, v2}, Lmz7;->i(Lhe7;)Le18;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object v0

    new-instance v2, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter$i;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter$i;-><init>(Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;)V

    new-instance v3, Lh62;

    invoke-direct {v3, v2, v4}, Lh62;-><init>(Lgh4;I)V

    new-instance v2, Lxz7;

    invoke-direct {v2, v0, v3}, Lxz7;-><init>(Lmz7;Lqx1;)V

    new-instance v0, Lwd1;

    const/4 v3, 0x1

    invoke-direct {v0, p0, v3}, Lwd1;-><init>(Ljava/lang/Object;I)V

    new-instance v4, Luz7;

    invoke-direct {v4, v2, v0}, Luz7;-><init>(Lmz7;Lh6;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter$j;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter$j;-><init>(Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;)V

    new-instance v2, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter$k;

    invoke-direct {v2, p0, p1}, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter$k;-><init>(Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;Ljava/lang/String;)V

    invoke-static {v4, v0, v2}, Lyb8;->d(Lmz7;Lnl3;Lnl3;)Lrx1;

    move-result-object p1

    invoke-static {p0, p1, v1, v3, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->flowRouter:Luf3;

    new-instance p1, Lix;

    new-instance v0, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;

    const/4 v2, 0x7

    invoke-direct {v0, v1, v1, v2}, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p1, v0}, Lix;-><init>(Lcom/warefly/checkscan/auth/presentation/flow/AuthReason;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luf3;->c:Lo87;

    invoke-virtual {p0, p1}, Lo87;->d(Ldf7;)V

    return-void
.end method

.method public final onNumberChanged(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->validator:Li3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Li3;->b(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->validator:Li3;

    invoke-virtual {v1, p1}, Li3;->d(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v1

    check-cast v1, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardView;

    if-eqz v1, :cond_0

    xor-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2}, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardView;->showIncorrectPhoneMessage(Z)V

    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardView;

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardView;->enableIssueButton(Z)V

    :cond_2
    return-void
.end method
