.class public final Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/presenter/ProfilePromocodeEnterPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/view/ProfilePromocodeEnterView;",
        ">;"
    }
.end annotation


# instance fields
.field private final activateAccountPromocodeUseCase:Lk6;

.field private promocodeEntered:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lk6;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/presenter/ProfilePromocodeEnterPresenter;->activateAccountPromocodeUseCase:Lk6;

    const-string p1, ""

    iput-object p1, p0, Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/presenter/ProfilePromocodeEnterPresenter;->promocodeEntered:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$handlePromocodeActivationResult(Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/presenter/ProfilePromocodeEnterPresenter;Lo6;)Lj59;
    .locals 0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/presenter/ProfilePromocodeEnterPresenter;->handlePromocodeActivationResult(Lo6;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private final handlePromocodeActivationResult(Lo6;)Lj59;
    .locals 2

    instance-of v0, p1, Lq6;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/view/ProfilePromocodeEnterView;

    if-eqz v0, :cond_0

    check-cast p1, Lq6;

    invoke-interface {v0, p1}, Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/view/ProfilePromocodeEnterView;->showPromocodeSuccessBottomSheet(Lq6;)V

    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/view/ProfilePromocodeEnterView;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/view/ProfilePromocodeEnterView;->dismissSheet()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_1
    return-object v1

    :cond_2
    instance-of v0, p1, Lm6;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/view/ProfilePromocodeEnterView;

    if-eqz p0, :cond_3

    check-cast p1, Lm6;

    iget-object p1, p1, Lm6;->b:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {p0, v0, p1}, Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/view/ProfilePromocodeEnterView;->showPromocodeError(ZLjava/lang/String;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_3
    return-object v1

    :cond_4
    invoke-static {}, Lme0;->e()V

    return-object v1
.end method


# virtual methods
.method public final onPromocodeButtonActivate()V
    .locals 5

    new-instance v0, Lkd$a$f$a;

    iget-object v1, p0, Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/presenter/ProfilePromocodeEnterPresenter;->promocodeEntered:Ljava/lang/String;

    invoke-direct {v0, v1}, Lkd$a$f$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lkd;->a()V

    iget-object v0, p0, Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/presenter/ProfilePromocodeEnterPresenter;->activateAccountPromocodeUseCase:Lk6;

    iget-object v1, p0, Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/presenter/ProfilePromocodeEnterPresenter;->promocodeEntered:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lj6;

    const-string v3, "PROFILE"

    const/4 v4, 0x0

    invoke-direct {v2, v0, v1, v3, v4}, Lj6;-><init>(Lk6;Ljava/lang/String;Ljava/lang/String;Le02;)V

    new-instance v0, Ltb7;

    invoke-direct {v0, v2}, Ltb7;-><init>(Lbm3;)V

    invoke-static {v0}, Ls57;->a(Lhd3;)Lde3;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/presenter/ProfilePromocodeEnterPresenter$a;

    invoke-direct {v1, p0, v4}, Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/presenter/ProfilePromocodeEnterPresenter$a;-><init>(Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/presenter/ProfilePromocodeEnterPresenter;Le02;)V

    new-instance v2, Ldf3;

    invoke-direct {v2, v0, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method public final onPromocodeTextChanged(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkd$a$f$c;->e:Lkd$a$f$c;

    invoke-virtual {v0}, Lkd;->a()V

    iput-object p1, p0, Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/presenter/ProfilePromocodeEnterPresenter;->promocodeEntered:Ljava/lang/String;

    return-void
.end method
