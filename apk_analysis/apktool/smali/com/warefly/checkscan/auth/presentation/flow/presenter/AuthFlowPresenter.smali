.class public final Lcom/warefly/checkscan/auth/presentation/flow/presenter/AuthFlowPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/auth/presentation/flow/view/AuthFlowView;",
        ">;"
    }
.end annotation


# instance fields
.field private final accountState:Lg6;

.field private isAuthorized:Z

.field private final postVerificationEvent:Lje6;

.field private final reason:Lcom/warefly/checkscan/auth/presentation/flow/AuthReason;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/auth/presentation/flow/AuthReason;Lg6;Lje6;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/auth/presentation/flow/presenter/AuthFlowPresenter;->reason:Lcom/warefly/checkscan/auth/presentation/flow/AuthReason;

    iput-object p2, p0, Lcom/warefly/checkscan/auth/presentation/flow/presenter/AuthFlowPresenter;->accountState:Lg6;

    iput-object p3, p0, Lcom/warefly/checkscan/auth/presentation/flow/presenter/AuthFlowPresenter;->postVerificationEvent:Lje6;

    return-void
.end method

.method public static final synthetic access$setAuthorized$p(Lcom/warefly/checkscan/auth/presentation/flow/presenter/AuthFlowPresenter;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/warefly/checkscan/auth/presentation/flow/presenter/AuthFlowPresenter;->isAuthorized:Z

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/warefly/checkscan/auth/presentation/flow/presenter/AuthFlowPresenter;->reason:Lcom/warefly/checkscan/auth/presentation/flow/AuthReason;

    instance-of v1, v0, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;->d:Ljava/lang/String;

    :cond_1
    iget-boolean v0, p0, Lcom/warefly/checkscan/auth/presentation/flow/presenter/AuthFlowPresenter;->isAuthorized:Z

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    invoke-static {v2}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/warefly/checkscan/auth/presentation/flow/presenter/AuthFlowPresenter;->postVerificationEvent:Lje6;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lje6;->a:Lmu0;

    invoke-interface {v0, v2}, Lno7;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    invoke-super {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->onDestroy()V

    return-void
.end method

.method public onFirstViewAttach()V
    .locals 4

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/auth/presentation/flow/view/AuthFlowView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/warefly/checkscan/auth/presentation/flow/presenter/AuthFlowPresenter;->reason:Lcom/warefly/checkscan/auth/presentation/flow/AuthReason;

    instance-of v2, v1, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;

    if-eqz v2, :cond_0

    new-instance v2, Llx;

    check-cast v1, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;

    iget-object v1, v1, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;->b:Ljava/lang/String;

    invoke-direct {v2, v1}, Llx;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$AddEmail;->b:Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$AddEmail;

    invoke-static {v1, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v2, Lhx;->a:Lhx;

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Llk3;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lme0;->e()V

    return-void

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/warefly/checkscan/auth/presentation/flow/presenter/AuthFlowPresenter;->accountState:Lg6;

    iget-object v0, v0, Lg6;->b:Lfy6;

    new-instance v1, Lcom/warefly/checkscan/auth/presentation/flow/presenter/AuthFlowPresenter$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/warefly/checkscan/auth/presentation/flow/presenter/AuthFlowPresenter$a;-><init>(Lcom/warefly/checkscan/auth/presentation/flow/presenter/AuthFlowPresenter;Le02;)V

    new-instance v2, Ldf3;

    invoke-direct {v2, v0, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method
