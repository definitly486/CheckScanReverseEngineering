.class public final Lcom/warefly/checkscan/presentation/flows/firstopen/presenter/FirstOpenPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/flows/account/presenter/FirstOpenView;",
        ">;"
    }
.end annotation


# instance fields
.field private final preferences:Ljf6;


# direct methods
.method public constructor <init>(Ljf6;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/flows/firstopen/presenter/FirstOpenPresenter;->preferences:Ljf6;

    return-void
.end method


# virtual methods
.method public onFirstViewAttach()V
    .locals 3

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/flows/firstopen/presenter/FirstOpenPresenter;->preferences:Ljf6;

    invoke-interface {v0}, Ljf6;->F0()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/flows/firstopen/presenter/FirstOpenPresenter;->preferences:Ljf6;

    invoke-interface {v0}, Ljf6;->B()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/flows/firstopen/presenter/FirstOpenPresenter;->preferences:Ljf6;

    invoke-interface {v0}, Ljf6;->B0()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/flows/account/presenter/FirstOpenView;

    if-eqz p0, :cond_2

    new-array v0, v2, [Llk3;

    sget-object v2, Llh7;->a:Llh7;

    aput-object v2, v0, v1

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/warefly/checkscan/presentation/flows/firstopen/presenter/FirstOpenPresenter;->preferences:Ljf6;

    invoke-interface {v0}, Ljf6;->I0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/flows/account/presenter/FirstOpenView;

    if-eqz p0, :cond_2

    new-array v0, v2, [Llk3;

    sget-object v2, Lcom/warefly/checkscan/presentation/e;->a:Lcom/warefly/checkscan/presentation/e;

    aput-object v2, v0, v1

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/flows/account/presenter/FirstOpenView;

    if-eqz p0, :cond_2

    new-array v0, v2, [Llk3;

    sget-object v2, Ldg7;->a:Ldg7;

    aput-object v2, v0, v1

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    :cond_2
    return-void
.end method
