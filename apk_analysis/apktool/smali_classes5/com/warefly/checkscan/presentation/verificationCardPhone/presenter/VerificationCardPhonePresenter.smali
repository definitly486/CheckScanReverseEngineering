.class public final Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter$a;,
        Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneView;",
        ">;"
    }
.end annotation


# static fields
.field private static final CODE_LENGTH:I = 0x4

.field public static final Companion:Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter$a;

.field private static final DAY:I = 0x1

.field private static final HALF_YEAR:I = 0xb4

.field private static final MAX_COUNT:I = 0x3

.field private static final MONTH:I = 0x1e

.field private static final ONE:I = 0x1

.field private static final WEEK:I = 0x7

.field private static final ZERO:I


# instance fields
.field private final analyticsRepository:Lqe;

.field private final bankInteractor:Lca0;

.field private currentTypeScreen:Lhf7;

.field private final fromType:Lgl3;

.field private final lengthCode:I

.field private final phone:Ljava/lang/String;

.field private final preferencesRepository:Ljf6;

.field private final router:Luf3;

.field private sendCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->Companion:Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lgl3;Luf3;Lca0;Ljf6;ILqe;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->phone:Ljava/lang/String;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->fromType:Lgl3;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->router:Luf3;

    iput-object p4, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->bankInteractor:Lca0;

    iput-object p5, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->preferencesRepository:Ljf6;

    iput p6, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->lengthCode:I

    iput-object p7, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->analyticsRepository:Lqe;

    sget-object p1, Lhf7;->SmsScreen:Lhf7;

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->currentTypeScreen:Lhf7;

    return-void
.end method

.method public static final synthetic access$getBankInteractor$p(Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;)Lca0;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->bankInteractor:Lca0;

    return-object p0
.end method

.method public static final synthetic access$getFromType$p(Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;)Lgl3;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->fromType:Lgl3;

    return-object p0
.end method

.method public static final synthetic access$getPhone$p(Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->phone:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getRouter$p(Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;)Luf3;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->router:Luf3;

    return-object p0
.end method

.method public static final synthetic access$invalidCode(Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->invalidCode()V

    return-void
.end method

.method public static final synthetic access$showFields(Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->showFields(I)V

    return-void
.end method

.method public static final synthetic access$successCode(Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;Ljava/lang/String;Lcw1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->successCode(Ljava/lang/String;Lcw1;)V

    return-void
.end method

.method private final balanceScreen()V
    .locals 2

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->router:Luf3;

    new-instance v0, Lcom/warefly/checkscan/presentation/c;

    sget-object v1, Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$CashbackProfile;->c:Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow$CashbackProfile;

    invoke-direct {v0, v1}, Lcom/warefly/checkscan/presentation/c;-><init>(Lcom/warefly/checkscan/presentation/Deeplink$CashBackFlow;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luf3;->c:Lo87;

    invoke-virtual {p0, v0}, Lo87;->g(Ldf7;)V

    return-void
.end method

.method private final checkIntentEnable()V
    .locals 4

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->bankInteractor:Lca0;

    invoke-virtual {v0}, Lca0;->a()Lp08;

    move-result-object v0

    sget-object v1, Lne7;->c:Lhe7;

    invoke-virtual {v0, v1}, Lmz7;->i(Lhe7;)Le18;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter$c;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter$c;-><init>(Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;)V

    new-instance v2, Lop;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lop;-><init>(Lgh4;I)V

    new-instance v1, Lxz7;

    invoke-direct {v1, v0, v2}, Lxz7;-><init>(Lmz7;Lqx1;)V

    new-instance v0, Llc9;

    invoke-direct {v0, p0}, Llc9;-><init>(Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;)V

    new-instance v2, Luz7;

    invoke-direct {v2, v1, v0}, Luz7;-><init>(Lmz7;Lh6;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter$d;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter$d;-><init>(Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;)V

    new-instance v1, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter$e;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter$e;-><init>(Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;)V

    invoke-static {v2, v0, v1}, Lyb8;->d(Lmz7;Lnl3;Lnl3;)Lrx1;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v3, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private static final checkIntentEnable$lambda$5(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final checkIntentEnable$lambda$6(Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;)V
    .locals 1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneView;->showLoading(Z)V

    :cond_0
    return-void
.end method

.method private final confirmCode(Ljava/lang/String;Lcw1;)V
    .locals 7

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->bankInteractor:Lca0;

    sget-object v1, Lqc9;->ACCOUNT:Lqc9;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lca0;->a:Lpb0;

    new-instance v2, Lxm1;

    invoke-direct {v2, p1, p2, v1}, Lxm1;-><init>(Ljava/lang/String;Lcw1;Lqc9;)V

    invoke-interface {v0, v2}, Lpb0;->j(Lxm1;)Lqp1;

    move-result-object p1

    sget-object v0, Lne7;->c:Lhe7;

    invoke-virtual {p1, v0}, Lqp1;->i(Lhe7;)Lrq1;

    move-result-object p1

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v0

    invoke-virtual {p1, v0}, Lqp1;->f(Lhe7;)Llq1;

    move-result-object v2

    new-instance p1, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter$f;

    invoke-direct {p1, p0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter$f;-><init>(Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;)V

    new-instance v3, Lmc9;

    invoke-direct {v3, p1}, Lmc9;-><init>(Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter$f;)V

    new-instance v1, Loq1;

    sget-object v4, Lrm3;->d:Lrm3$e;

    sget-object v5, Lrm3;->c:Lrm3$d;

    move-object v6, v5

    invoke-direct/range {v1 .. v6}, Loq1;-><init>(Lqp1;Lqx1;Lqx1;Lh6;Lh6;)V

    new-instance p1, Lnc9;

    invoke-direct {p1, p0}, Lnc9;-><init>(Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;)V

    new-instance v0, Lzp1;

    invoke-direct {v0, v1, p1}, Lzp1;-><init>(Lqp1;Lh6;)V

    new-instance p1, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter$g;

    invoke-direct {p1, p0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter$g;-><init>(Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;)V

    new-instance v1, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter$h;

    invoke-direct {v1, p0, p2}, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter$h;-><init>(Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;Lcw1;)V

    invoke-static {v0, v1, p1}, Lyb8;->e(Lqp1;Lll3;Lnl3;)Lcp2;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private static final confirmCode$lambda$0(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final confirmCode$lambda$1(Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;)V
    .locals 1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneView;->showLoading(Z)V

    :cond_0
    return-void
.end method

.method public static synthetic e(Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;)V
    .locals 0

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->checkIntentEnable$lambda$6(Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;)V

    return-void
.end method

.method public static synthetic f(Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter$f;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->confirmCode$lambda$0(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic g(Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter$c;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->checkIntentEnable$lambda$5(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic h(Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;)V
    .locals 0

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->confirmCode$lambda$1(Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;)V

    return-void
.end method

.method public static synthetic i(Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter$j;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->requestCodeOld$lambda$3(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method private final invalidCode()V
    .locals 4

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneView;->showErrorCode()V

    :cond_0
    iget v0, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->sendCount:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->bankInteractor:Lca0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lne7;->b:Lhe7;

    const-string v1, "unit is null"

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v1}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "scheduler is null"

    invoke-static {v0, v1}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ltq1;

    invoke-direct {v1, v0}, Ltq1;-><init>(Lhe7;)V

    sget-object v0, Lne7;->c:Lhe7;

    invoke-virtual {v1, v0}, Lqp1;->i(Lhe7;)Lrq1;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lqp1;->f(Lhe7;)Llq1;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter$i;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter$i;-><init>(Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3}, Lyb8;->g(Llq1;Lnl3;Lll3;I)Lcp2;

    move-result-object v0

    invoke-static {p0, v0, v2, v3, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static synthetic j(Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;)V
    .locals 0

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->requestCodeOld$lambda$4(Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;)V

    return-void
.end method

.method private final requestCodeOld()V
    .locals 4

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->bankInteractor:Lca0;

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->phone:Ljava/lang/String;

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->currentTypeScreen:Lhf7;

    sget-object v3, Lhf7;->SmsScreen:Lhf7;

    if-ne v2, v3, :cond_0

    sget-object v2, Lcw1;->SMS:Lcw1;

    goto :goto_0

    :cond_0
    sget-object v2, Lcw1;->CALL:Lcw1;

    :goto_0
    invoke-virtual {v0, v1, v2}, Lca0;->b(Ljava/lang/String;Lcw1;)Le08;

    move-result-object v0

    sget-object v1, Lne7;->c:Lhe7;

    invoke-virtual {v0, v1}, Lmz7;->i(Lhe7;)Le18;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter$j;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter$j;-><init>(Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;)V

    new-instance v2, Ll76;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Ll76;-><init>(Lgh4;I)V

    new-instance v1, Lxz7;

    invoke-direct {v1, v0, v2}, Lxz7;-><init>(Lmz7;Lqx1;)V

    new-instance v0, Lm76;

    invoke-direct {v0, p0, v3}, Lm76;-><init>(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;I)V

    new-instance v2, Luz7;

    invoke-direct {v2, v1, v0}, Luz7;-><init>(Lmz7;Lh6;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter$k;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter$k;-><init>(Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;)V

    new-instance v1, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter$l;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter$l;-><init>(Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;)V

    invoke-static {v2, v0, v1}, Lyb8;->d(Lmz7;Lnl3;Lnl3;)Lrx1;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v3, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private static final requestCodeOld$lambda$3(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final requestCodeOld$lambda$4(Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;)V
    .locals 1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneView;->showLoading(Z)V

    :cond_0
    return-void
.end method

.method private final requestSmsCode()V
    .locals 2

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->phone:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneView;->showSendSmsCode(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->fromType:Lgl3;

    sget-object v1, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter$b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->requestCodeOld()V

    return-void

    :cond_1
    iget v0, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->lengthCode:I

    invoke-direct {p0, v0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->showFields(I)V

    return-void
.end method

.method private final sendEvent(Lcw1;)V
    .locals 1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->fromType:Lgl3;

    sget-object v0, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter$b;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 p1, 0x2

    if-eq p0, p1, :cond_0

    return-void

    :cond_0
    sget-object p0, Lkd$f0$a$a;->e:Lkd$f0$a$a;

    invoke-virtual {p0}, Lkd;->a()V

    return-void

    :cond_1
    sget-object p0, Lcw1;->SMS:Lcw1;

    if-ne p1, p0, :cond_2

    sget-object p0, Lkd$j$b$b;->e:Lkd$j$b$b;

    invoke-virtual {p0}, Lkd;->a()V

    return-void

    :cond_2
    sget-object p0, Lkd$j$b$a;->e:Lkd$j$b$a;

    invoke-virtual {p0}, Lkd;->a()V

    return-void
.end method

.method private final sendUserRegisteredEvent()V
    .locals 1

    sget-object v0, Lkd$a$k$a;->e:Lkd$a$k$a;

    invoke-virtual {v0}, Lkd;->a()V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->analyticsRepository:Lqe;

    invoke-interface {p0}, Lqe;->f()V

    return-void
.end method

.method private final showFields(I)V
    .locals 1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneView;->updateTextField()V

    :cond_0
    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneView;

    invoke-interface {p1}, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneView;->showLongCode()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneView;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneView;->showMiddleCode()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneView;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneView;->showShortCode()V

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneView;

    if-eqz p0, :cond_5

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneView;->showTimeForRepeatCode()V

    :cond_5
    return-void
.end method

.method private final successCode(Ljava/lang/String;Lcw1;)V
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->preferencesRepository:Ljf6;

    invoke-interface {v0, p1}, Ljf6;->n(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->fromType:Lgl3;

    sget-object v0, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->router:Luf3;

    invoke-virtual {p1}, Luf3;->i()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->sendUserRegisteredEvent()V

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->checkIntentEnable()V

    :goto_0
    invoke-direct {p0, p2}, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->sendEvent(Lcw1;)V

    return-void
.end method


# virtual methods
.method public final closeError()V
    .locals 2

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->fromType:Lgl3;

    sget-object v1, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter$b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->router:Luf3;

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Luf3;->i()V

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luf3;->c:Lo87;

    sget-object v0, Lcom/warefly/checkscan/presentation/e;->a:Lcom/warefly/checkscan/presentation/e;

    invoke-virtual {p0, v0}, Lo87;->g(Ldf7;)V

    return-void
.end method

.method public final formatTime(J)Ljava/lang/String;
    .locals 4

    const-wide/16 v0, 0xa

    div-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const-string p0, "0"

    invoke-static {p1, p2, p0}, Lr01;->c(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final onBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->fromType:Lgl3;

    sget-object v1, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter$b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->router:Luf3;

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luf3;->c:Lo87;

    sget-object v0, Lcom/warefly/checkscan/presentation/e;->a:Lcom/warefly/checkscan/presentation/e;

    invoke-virtual {p0, v0}, Lo87;->g(Ldf7;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Luf3;->i()V

    return-void

    :cond_1
    new-instance v0, Lfh7;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfh7;-><init>(Z)V

    invoke-virtual {p0, v0}, Lo87;->a(Ldf7;)V

    return-void
.end method

.method public final onCancelClick()V
    .locals 3

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->preferencesRepository:Ljf6;

    invoke-interface {v0}, Ljf6;->r()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    const/4 v2, 0x7

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1e

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->preferencesRepository:Ljf6;

    const/16 v1, 0xb4

    invoke-interface {v0, v1}, Ljf6;->H0(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->preferencesRepository:Ljf6;

    invoke-interface {v0, v1}, Ljf6;->H0(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->preferencesRepository:Ljf6;

    invoke-interface {v0, v2}, Ljf6;->H0(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->preferencesRepository:Ljf6;

    invoke-interface {v0, v1}, Ljf6;->H0(I)V

    :goto_0
    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->balanceScreen()V

    return-void
.end method

.method public final onConfirmClick()V
    .locals 1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->router:Luf3;

    new-instance v0, Lwg7;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0}, Lo87;->h(Ldf7;)V

    return-void
.end method

.method public onFirstViewAttach()V
    .locals 0

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->requestSmsCode()V

    return-void
.end method

.method public final repeatCode()V
    .locals 0

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->requestCodeOld()V

    return-void
.end method

.method public final requestCallCode()V
    .locals 2

    sget-object v0, Lhf7;->CallScreen:Lhf7;

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->currentTypeScreen:Lhf7;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->fromType:Lgl3;

    sget-object v1, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter$b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->repeatCode()V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->phone:Ljava/lang/String;

    iget p0, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->lengthCode:I

    invoke-interface {v0, v1, p0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneView;->setCaseCall(Ljava/lang/String;I)V

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->requestCodeOld()V

    return-void
.end method

.method public final sendCode(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->sendCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->sendCount:I

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->currentTypeScreen:Lhf7;

    sget-object v1, Lhf7;->SmsScreen:Lhf7;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcw1;->SMS:Lcw1;

    goto :goto_0

    :cond_0
    sget-object v0, Lcw1;->CALL:Lcw1;

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->confirmCode(Ljava/lang/String;Lcw1;)V

    return-void
.end method

.method public final sendSmsCodeFromReceiver(Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_3

    invoke-static {p1}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    invoke-static {v0, p1}, Lua8;->l0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v0, :cond_3

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneView;

    if-eqz p0, :cond_3

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneView;->setCodeFromSms(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final showSendCodeAgain()V
    .locals 2

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->currentTypeScreen:Lhf7;

    sget-object v1, Lhf7;->SmsScreen:Lhf7;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneView;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneView;->showSendSmsAgain()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneView;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneView;->showRepeatCallAgain()V

    :cond_1
    return-void
.end method
