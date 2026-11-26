.class public final Lcom/warefly/checkscan/support/presentation/flow/presenter/SupportFlowPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/support/presentation/flow/view/SupportFlowView;",
        ">;"
    }
.end annotation


# instance fields
.field private final reason:Lcom/warefly/checkscan/support/presentation/flow/SupportReason;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/support/presentation/flow/SupportReason;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/support/presentation/flow/presenter/SupportFlowPresenter;->reason:Lcom/warefly/checkscan/support/presentation/flow/SupportReason;

    return-void
.end method


# virtual methods
.method public onFirstViewAttach()V
    .locals 4

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    iget-object v0, p0, Lcom/warefly/checkscan/support/presentation/flow/presenter/SupportFlowPresenter;->reason:Lcom/warefly/checkscan/support/presentation/flow/SupportReason;

    sget-object v1, Lcom/warefly/checkscan/support/presentation/flow/SupportReason$Sections;->b:Lcom/warefly/checkscan/support/presentation/flow/SupportReason$Sections;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/support/presentation/flow/view/SupportFlowView;

    if-eqz p0, :cond_1

    new-array v0, v3, [Llk3;

    sget-object v1, Lvf8;->a:Lvf8;

    aput-object v1, v0, v2

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    return-void

    :cond_0
    sget-object v1, Lcom/warefly/checkscan/support/presentation/flow/SupportReason$Form;->b:Lcom/warefly/checkscan/support/presentation/flow/SupportReason$Form;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/support/presentation/flow/view/SupportFlowView;

    if-eqz p0, :cond_1

    new-array v0, v3, [Llk3;

    sget-object v1, Luf8;->a:Luf8;

    aput-object v1, v0, v2

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    :cond_1
    return-void
.end method
