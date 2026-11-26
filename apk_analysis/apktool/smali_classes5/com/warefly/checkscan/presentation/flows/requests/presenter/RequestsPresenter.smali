.class public final Lcom/warefly/checkscan/presentation/flows/requests/presenter/RequestsPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/flows/requests/presenter/RequestsView;",
        ">;"
    }
.end annotation


# instance fields
.field private final fromWeb:Lvg7;

.field private final preferencesRepository:Ljf6;


# direct methods
.method public constructor <init>(Ljf6;Lvg7;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/flows/requests/presenter/RequestsPresenter;->preferencesRepository:Ljf6;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/flows/requests/presenter/RequestsPresenter;->fromWeb:Lvg7;

    return-void
.end method

.method public static synthetic onOpened$default(Lcom/warefly/checkscan/presentation/flows/requests/presenter/RequestsPresenter;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/flows/requests/presenter/RequestsPresenter;->onOpened(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onOpened(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/flows/requests/presenter/RequestsView;

    if-eqz p0, :cond_0

    new-instance v0, Lvh7;

    invoke-direct {v0, p1}, Lvh7;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    new-array p1, p1, [Llk3;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    :cond_0
    return-void
.end method

.method public final onScan(JLjava/lang/String;)V
    .locals 4

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/flows/requests/presenter/RequestsPresenter;->preferencesRepository:Ljf6;

    invoke-interface {v0}, Ljf6;->y0()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/flows/requests/presenter/RequestsView;

    if-eqz v0, :cond_1

    new-instance v3, Lyh7;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/requests/presenter/RequestsPresenter;->fromWeb:Lvg7;

    invoke-direct {v3, p0, p1, p2, p3}, Lyh7;-><init>(Lvg7;JLjava/lang/String;)V

    new-array p0, v2, [Llk3;

    aput-object v3, p0, v1

    invoke-interface {v0, p0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/flows/requests/presenter/RequestsView;

    if-eqz p0, :cond_1

    new-instance p1, Lai7;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    new-array p2, v2, [Llk3;

    aput-object p1, p2, v1

    invoke-interface {p0, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    :cond_1
    return-void
.end method
