.class public final Lcom/warefly/checkscan/presentation/flows/favorite/presenter/FavoriteFlowPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/flows/favorite/presenter/FavoriteFlowView;",
        ">;"
    }
.end annotation


# instance fields
.field private final isFavorite:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-boolean p1, p0, Lcom/warefly/checkscan/presentation/flows/favorite/presenter/FavoriteFlowPresenter;->isFavorite:Z

    return-void
.end method


# virtual methods
.method public final isFavorite()Z
    .locals 0

    iget-boolean p0, p0, Lcom/warefly/checkscan/presentation/flows/favorite/presenter/FavoriteFlowPresenter;->isFavorite:Z

    return p0
.end method

.method public onFirstViewAttach()V
    .locals 3

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/flows/favorite/presenter/FavoriteFlowView;

    if-eqz v0, :cond_0

    new-instance v1, Lng7;

    iget-boolean p0, p0, Lcom/warefly/checkscan/presentation/flows/favorite/presenter/FavoriteFlowPresenter;->isFavorite:Z

    invoke-direct {v1, p0}, Lng7;-><init>(Z)V

    const/4 p0, 0x1

    new-array p0, p0, [Llk3;

    const/4 v2, 0x0

    aput-object v1, p0, v2

    invoke-interface {v0, p0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    :cond_0
    return-void
.end method
