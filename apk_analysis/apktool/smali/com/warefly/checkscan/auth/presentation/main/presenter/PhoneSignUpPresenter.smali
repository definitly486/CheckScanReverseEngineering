.class public final Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"

# interfaces
.implements Lob$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpView;",
        ">;",
        "Lob$a;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter$a;

.field private static final PHONE_PREFIX:Ljava/lang/String; = "+7"


# instance fields
.field private final authRouter:Lfx;

.field private final authState:Lxg5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxg5<",
            "Lz76;",
            ">;"
        }
    .end annotation
.end field

.field private final fetchUserAgreementsUseCase:Ls83;

.field private final fetchUserPolicyUseCase:Lt83;

.field private final flowRouter:Luf3;

.field private final inviteCode:Ljava/lang/String;

.field private final isAuthShowSkipButtonUseCase:Lka4;

.field private final phoneValidator:Lq76;

.field private final setAuthSkipButtonUseCase:Lhr7;

.field private final signInUseCase:Lix7;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;->Companion:Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter$a;

    return-void
.end method

.method public constructor <init>(Luf3;Lfx;Ljava/lang/String;Lq76;Lt83;Ls83;Lix7;Lka4;Lhr7;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;->flowRouter:Luf3;

    iput-object p2, p0, Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;->authRouter:Lfx;

    iput-object p3, p0, Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;->inviteCode:Ljava/lang/String;

    iput-object p4, p0, Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;->phoneValidator:Lq76;

    iput-object p5, p0, Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;->fetchUserPolicyUseCase:Lt83;

    iput-object p6, p0, Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;->fetchUserAgreementsUseCase:Ls83;

    iput-object p7, p0, Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;->signInUseCase:Lix7;

    iput-object p8, p0, Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;->isAuthShowSkipButtonUseCase:Lka4;

    iput-object p9, p0, Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;->setAuthSkipButtonUseCase:Lhr7;

    sget-object p1, Lz76;->d:Lz76;

    invoke-static {p1}, Lpx;->a(Ljava/lang/Object;)Lz68;

    move-result-object p1

    iput-object p1, p0, Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;->authState:Lxg5;

    return-void
.end method

.method public static final synthetic access$getAuthState$p(Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;)Lxg5;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;->authState:Lxg5;

    return-object p0
.end method

.method public static final synthetic access$getFetchUserAgreementsUseCase$p(Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;)Ls83;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;->fetchUserAgreementsUseCase:Ls83;

    return-object p0
.end method

.method public static final synthetic access$getFetchUserPolicyUseCase$p(Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;)Lt83;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;->fetchUserPolicyUseCase:Lt83;

    return-object p0
.end method

.method public static final synthetic access$proceedWithAuthInfo(Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;Lz76;Lev;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;->proceedWithAuthInfo(Lz76;Lev;)V

    return-void
.end method

.method private final proceedWithAuthInfo(Lz76;Lev;)V
    .locals 6

    sget-object v0, Lev$a;->a:Lev$a;

    invoke-static {p2, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpView;

    if-eqz p0, :cond_5

    invoke-interface {p0, v1}, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpView;->showInviteCodeFieldError(Z)V

    return-void

    :cond_0
    sget-object v0, Lev$f;->a:Lev$f;

    invoke-static {p2, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpView;

    if-eqz p0, :cond_5

    invoke-interface {p0}, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpView;->showUnknownError()V

    return-void

    :cond_1
    instance-of v0, p2, Lev$b;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;->flowRouter:Luf3;

    new-instance p1, Lkx;

    check-cast p2, Lev$b;

    iget-object p2, p2, Lev$b;->a:Ljava/lang/String;

    sget-object v0, Ljw2;->SignIn:Ljw2;

    invoke-direct {p1, p2, v0}, Lkx;-><init>(Ljava/lang/String;Ljw2;)V

    new-array p2, v1, [Llk3;

    aput-object p1, p2, v2

    invoke-virtual {p0, p2}, Luf3;->j([Llk3;)V

    return-void

    :cond_2
    instance-of v0, p2, Lev$c;

    const-string v3, ""

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;->flowRouter:Luf3;

    new-instance v4, Lnx;

    check-cast p2, Lev$c;

    iget-object v5, p2, Lev$c;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;->phoneValidator:Lq76;

    iget-object p1, p1, Lz76;->a:Ljava/lang/String;

    iget-object p0, p0, Lq76;->a:Lg17;

    invoke-virtual {p0, v3, p1}, Lg17;->g(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    iget-object p1, p2, Lev$c;->b:Ljava/lang/String;

    invoke-direct {v4, v5, p0, p1}, Lnx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-array p0, v1, [Llk3;

    aput-object v4, p0, v2

    invoke-virtual {v0, p0}, Luf3;->j([Llk3;)V

    return-void

    :cond_3
    instance-of v0, p2, Lev$d;

    if-eqz v0, :cond_4

    iget-object p2, p0, Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;->flowRouter:Luf3;

    new-instance v0, Ljx;

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;->phoneValidator:Lq76;

    iget-object p1, p1, Lz76;->a:Ljava/lang/String;

    iget-object p0, p0, Lq76;->a:Lg17;

    invoke-virtual {p0, v3, p1}, Lg17;->g(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljx;-><init>(Ljava/lang/String;)V

    new-array p0, v1, [Llk3;

    aput-object v0, p0, v2

    invoke-virtual {p2, p0}, Luf3;->j([Llk3;)V

    return-void

    :cond_4
    instance-of p2, p2, Lev$e;

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;->flowRouter:Luf3;

    new-instance v0, Lmx;

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;->phoneValidator:Lq76;

    iget-object p1, p1, Lz76;->a:Ljava/lang/String;

    iget-object p0, p0, Lq76;->a:Lg17;

    invoke-virtual {p0, v3, p1}, Lg17;->g(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lmx;-><init>(Ljava/lang/String;)V

    new-array p0, v1, [Llk3;

    aput-object v0, p0, v2

    invoke-virtual {p2, p0}, Luf3;->j([Llk3;)V

    :cond_5
    return-void
.end method

.method private final setAgreement(Lub$a;)V
    .locals 7

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;->authState:Lxg5;

    :cond_0
    invoke-interface {p0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lz76;

    iget-object v2, v1, Lz76;->c:Ljava/util/Map;

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lub;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v4, v2, Lub;->c:Z

    xor-int/lit8 v4, v4, 0x1

    iget-object v5, v2, Lub;->a:Lub$a;

    iget-object v2, v2, Lub;->b:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lub;

    invoke-direct {v6, v5, v2, v4}, Lub;-><init>(Lub$a;Ljava/lang/String;Z)V

    invoke-interface {v3, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lj59;->a:Lj59;

    const/4 v2, 0x3

    const/4 v4, 0x0

    invoke-static {v1, v4, v4, v3, v2}, Lz76;->a(Lz76;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)Lz76;

    move-result-object v1

    :goto_0
    invoke-interface {p0, v0, v1}, Lxg5;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method


# virtual methods
.method public onAgreementClicked(Lub$a;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;->setAgreement(Lub$a;)V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpView;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;->authState:Lxg5;

    invoke-interface {p0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lz76;

    iget-object p0, p0, Lz76;->c:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpView;->showAgreements(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final onBackClicked()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Lo87;->c()V

    return-void
.end method

.method public onFirstViewAttach()V
    .locals 4

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    iget-object v0, p0, Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;->inviteCode:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpView;->showInviteCodeField()V

    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;->inviteCode:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpView;->setInviteCodeFiled(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->getPresenterScope()Ly22;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter$b;-><init>(Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;Le02;)V

    const/4 v3, 0x3

    invoke-static {v0, v2, v2, v1, v3}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->getPresenterScope()Ly22;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter$c;

    invoke-direct {v1, p0, v2}, Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter$c;-><init>(Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;Le02;)V

    invoke-static {v0, v2, v2, v1, v3}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    iget-object v0, p0, Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;->isAuthShowSkipButtonUseCase:Lka4;

    iget-object v0, v0, Lka4;->a:Lmw5;

    invoke-interface {v0}, Lmw5;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;->setAuthSkipButtonUseCase:Lhr7;

    const/4 v1, 0x0

    iget-object v0, v0, Lhr7;->a:Lmw5;

    invoke-interface {v0, v1}, Lmw5;->e(Z)V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpView;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpView;->showSkipButton()V

    :cond_2
    return-void
.end method

.method public final onInviteCodeChanged(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;->authState:Lxg5;

    :cond_0
    invoke-interface {v0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lz76;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-static {v2, v4, p1, v4, v3}, Lz76;->a(Lz76;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)Lz76;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lxg5;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpView;

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpView;->showInviteCodeFieldError(Z)V

    :cond_1
    return-void
.end method

.method public final onNextClicked()V
    .locals 13

    iget-object v0, p0, Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;->authState:Lxg5;

    invoke-interface {v0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz76;

    iget-object v1, p0, Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;->phoneValidator:Lq76;

    iget-object v2, v0, Lz76;->a:Ljava/lang/String;

    iget-object v3, v0, Lz76;->c:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v1, Lq76;->a:Lg17;

    const-string v5, ""

    invoke-virtual {v4, v5, v2}, Lg17;->g(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lq76;->b:Lg17;

    invoke-virtual {v1, v2}, Lg17;->e(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpView;

    if-eqz p0, :cond_3

    invoke-interface {p0, v2}, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpView;->showPhoneFieldError(Z)V

    return-void

    :cond_0
    sget-object v1, Lub$a;->USER:Lub$a;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lub;

    if-eqz v1, :cond_2

    iget-boolean v1, v1, Lub;->c:Z

    if-ne v1, v2, :cond_2

    iget-object v7, p0, Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;->signInUseCase:Lix7;

    iget-object v1, p0, Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;->phoneValidator:Lq76;

    iget-object v4, v0, Lz76;->a:Ljava/lang/String;

    iget-object v1, v1, Lq76;->a:Lg17;

    invoke-virtual {v1, v5, v4}, Lg17;->g(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    sget-object v1, Lub$a;->SMS:Lub$a;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lub;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-boolean v1, v1, Lub;->c:Z

    if-ne v1, v2, :cond_1

    move v10, v2

    goto :goto_0

    :cond_1
    move v10, v3

    :goto_0
    sget-object v11, Ldw1;->SMS:Ldw1;

    iget-object v9, v0, Lz76;->b:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lhx7;

    const/4 v12, 0x0

    invoke-direct/range {v6 .. v12}, Lhx7;-><init>(Lix7;Ljava/lang/String;Ljava/lang/String;ZLdw1;Le02;)V

    new-instance v1, Ltb7;

    invoke-direct {v1, v6}, Ltb7;-><init>(Lbm3;)V

    invoke-static {v1}, Ls57;->a(Lhd3;)Lde3;

    move-result-object v1

    new-instance v2, Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter$d;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter$d;-><init>(Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;Lz76;Le02;)V

    new-instance v0, Ldf3;

    invoke-direct {v0, v1, v2}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void

    :cond_2
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpView;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpView;->flashAgreementsError()V

    :cond_3
    return-void
.end method

.method public final onOpenLinkWebViewClicked(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpView;->showAgreementBottomSheet(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onPhoneChanged(Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;->authState:Lxg5;

    :cond_0
    invoke-interface {v0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lz76;

    const-string v3, "+7"

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v5, v4}, Lz76;->a(Lz76;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)Lz76;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lxg5;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpView;

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpView;->showPhoneFieldError(Z)V

    :cond_1
    return-void
.end method

.method public final onShowInviteCodeClicked()V
    .locals 0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpView;->showInviteCodeField()V

    :cond_0
    return-void
.end method

.method public final onSkipRegistrationClicked()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;->authRouter:Lfx;

    invoke-interface {p0}, Lfx;->b()V

    return-void
.end method

.method public final onSupportClicked()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;->authRouter:Lfx;

    invoke-interface {p0}, Lfx;->c()V

    return-void
.end method
