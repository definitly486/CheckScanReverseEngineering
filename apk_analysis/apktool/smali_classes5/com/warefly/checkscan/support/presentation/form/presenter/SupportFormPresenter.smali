.class public final Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView;",
        ">;"
    }
.end annotation


# instance fields
.field private descriptionCache:Ljava/lang/String;

.field private emailCache:Ljava/lang/String;

.field private final emailValidator:Liw2;

.field private final fetchSupportFormScreenInfoUseCase:Lj83;

.field private isEmailCorrectCheckbox:Z

.field private nameCache:Ljava/lang/String;

.field private final preferencesRepository:Ljf6;

.field private final resourceProvider:Ls47;

.field private final router:Lqf8;

.field private final sendSupportFormUseCase:Lxo7;


# direct methods
.method public constructor <init>(Liw2;Ljf6;Ls47;Lqf8;Lj83;Lxo7;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;->emailValidator:Liw2;

    iput-object p2, p0, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;->preferencesRepository:Ljf6;

    iput-object p3, p0, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;->resourceProvider:Ls47;

    iput-object p4, p0, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;->router:Lqf8;

    iput-object p5, p0, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;->fetchSupportFormScreenInfoUseCase:Lj83;

    iput-object p6, p0, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;->sendSupportFormUseCase:Lxo7;

    const-string p1, ""

    iput-object p1, p0, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;->emailCache:Ljava/lang/String;

    iput-object p1, p0, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;->descriptionCache:Ljava/lang/String;

    iput-object p1, p0, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;->nameCache:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$defaultErrorResult(Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;)Lwe8;
    .locals 0

    invoke-direct {p0}, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;->defaultErrorResult()Lwe8;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getEmailCache$p(Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;->emailCache:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getEmailValidator$p(Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;)Liw2;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;->emailValidator:Liw2;

    return-object p0
.end method

.method public static final synthetic access$getNameCache$p(Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;->nameCache:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getPreferencesRepository$p(Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;)Ljf6;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;->preferencesRepository:Ljf6;

    return-object p0
.end method

.method public static final synthetic access$setEmailCache$p(Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;->emailCache:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setNameCache$p(Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;->nameCache:Ljava/lang/String;

    return-void
.end method

.method private final defaultErrorResult()Lwe8;
    .locals 6

    new-instance v0, Lwe8;

    iget-object v1, p0, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;->resourceProvider:Ls47;

    const v2, 0x7f140634

    invoke-interface {v1, v2}, Ls47;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;->resourceProvider:Ls47;

    const v3, 0x7f140633

    invoke-interface {v1, v3}, Ls47;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;->resourceProvider:Ls47;

    const v1, 0x7f140632

    invoke-interface {p0, v1}, Ls47;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-direct/range {v0 .. v5}, Lwe8;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method public final loadForm()V
    .locals 3

    iget-object v0, p0, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;->fetchSupportFormScreenInfoUseCase:Lj83;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Li83;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Li83;-><init>(Lj83;Le02;)V

    new-instance v0, Ltb7;

    invoke-direct {v0, v1}, Ltb7;-><init>(Lbm3;)V

    invoke-static {v0}, Ls57;->a(Lhd3;)Lde3;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter$a;

    invoke-direct {v1, p0, v2}, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter$a;-><init>(Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;Le02;)V

    new-instance v2, Ldf3;

    invoke-direct {v2, v0, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method public final onBackClicked()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;->router:Lqf8;

    invoke-interface {p0}, Lqf8;->a()V

    return-void
.end method

.method public final onConfirmClicked()V
    .locals 8

    iget-object v0, p0, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;->emailValidator:Liw2;

    iget-object v1, p0, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;->emailCache:Ljava/lang/String;

    invoke-virtual {v0, v1}, Liw2;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView;

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView;->showEmailError(Z)V

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-boolean v2, p0, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;->isEmailCorrectCheckbox:Z

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView;->flashCheckboxError()V

    :cond_2
    move v0, v1

    :cond_3
    iget-object v2, p0, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;->descriptionCache:Ljava/lang/String;

    invoke-static {v2}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView;

    if-eqz v0, :cond_5

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView;->showDescriptionError(Z)V

    goto :goto_1

    :cond_4
    move v1, v0

    :cond_5
    :goto_1
    if-eqz v1, :cond_6

    return-void

    :cond_6
    iget-object v3, p0, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;->sendSupportFormUseCase:Lxo7;

    iget-object v4, p0, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;->nameCache:Ljava/lang/String;

    iget-object v5, p0, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;->emailCache:Ljava/lang/String;

    iget-object v0, p0, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;->descriptionCache:Ljava/lang/String;

    invoke-static {v0}, Lta8;->f0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lwo7;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lwo7;-><init>(Lxo7;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Le02;)V

    new-instance v0, Ltb7;

    invoke-direct {v0, v2}, Ltb7;-><init>(Lbm3;)V

    invoke-static {v0}, Ls57;->a(Lhd3;)Lde3;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter$b;-><init>(Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;Le02;)V

    new-instance v2, Ldf3;

    invoke-direct {v2, v0, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method public final onDescriptionChanged(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;->descriptionCache:Ljava/lang/String;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView;->showDescriptionError(Z)V

    :cond_0
    return-void
.end method

.method public final onEmailChanged(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;->emailCache:Ljava/lang/String;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView;->showEmailError(Z)V

    :cond_0
    return-void
.end method

.method public final onEmailCorrectClick()V
    .locals 1

    iget-boolean v0, p0, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;->isEmailCorrectCheckbox:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;->isEmailCorrectCheckbox:Z

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;->isEmailCorrectCheckbox:Z

    invoke-interface {v0, p0}, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView;->setCheckbox(Z)V

    :cond_0
    return-void
.end method

.method public onFirstViewAttach()V
    .locals 1

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    invoke-virtual {p0}, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;->loadForm()V

    iget-object v0, p0, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;->nameCache:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView;->setNameFocus()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;->emailCache:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView;->setEmailFocus()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormView;->setDescriptionFocus()V

    :cond_2
    return-void
.end method

.method public final onNameChanged(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;->nameCache:Ljava/lang/String;

    return-void
.end method
