.class public final Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/auth/presentation/addEmail/view/AddEmailView;",
        ">;"
    }
.end annotation


# instance fields
.field private final addEmailUseCase:Lz8;

.field private emailCache:Ljava/lang/String;

.field private emailForWhichCodeSend:Ljava/lang/String;

.field private final emailValidator:Liw2;

.field private final flowRouter:Luf3;


# direct methods
.method public constructor <init>(Luf3;Liw2;Lz8;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter;->flowRouter:Luf3;

    iput-object p2, p0, Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter;->emailValidator:Liw2;

    iput-object p3, p0, Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter;->addEmailUseCase:Lz8;

    const-string p1, ""

    iput-object p1, p0, Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter;->emailCache:Ljava/lang/String;

    iput-object p1, p0, Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter;->emailForWhichCodeSend:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getAddEmailUseCase$p(Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter;)Lz8;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter;->addEmailUseCase:Lz8;

    return-object p0
.end method

.method public static final synthetic access$getEmailCache$p(Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter;->emailCache:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getFlowRouter$p(Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter;)Luf3;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter;->flowRouter:Luf3;

    return-object p0
.end method

.method public static final synthetic access$setEmailForWhichCodeSend$p(Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter;->emailForWhichCodeSend:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onAddEmailClicked()V
    .locals 4

    iget-object v0, p0, Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter;->emailValidator:Liw2;

    iget-object v1, p0, Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter;->emailCache:Ljava/lang/String;

    invoke-virtual {v0, v1}, Liw2;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->getPresenterScope()Ly22;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter$a;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter$a;-><init>(Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter;)V

    new-instance v2, Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter$b;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter$b;-><init>(Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter;Le02;)V

    const/4 p0, 0x2

    invoke-static {v0, v1, v3, v2, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    return-void

    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/auth/presentation/addEmail/view/AddEmailView;

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/auth/presentation/addEmail/view/AddEmailView;->showEmailFormatError(Z)V

    :cond_1
    return-void
.end method

.method public final onBackClicked()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Lo87;->c()V

    return-void
.end method

.method public final onEmailChanged(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/warefly/checkscan/auth/presentation/addEmail/presenter/AddEmailPresenter;->emailCache:Ljava/lang/String;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/auth/presentation/addEmail/view/AddEmailView;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/auth/presentation/addEmail/view/AddEmailView;->showEmailFormatError(Z)V

    :cond_0
    return-void
.end method
