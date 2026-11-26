.class public final Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter$j;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;->refreshPromocodes()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lb36<",
        "+",
        "Ljava/lang/Integer;",
        "+",
        "Ljava/util/List<",
        "+",
        "Ler6;",
        ">;>;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter$j;->f:Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lb36;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter$j;->f:Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoriteView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;->access$formPromocodes(Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;Lb36;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoriteView;->showPromocodes(Ljava/util/List;)V

    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoriteView;

    if-eqz v0, :cond_2

    iget-object p1, p1, Lb36;->c:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;->getAreShopsEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-interface {v0, p0}, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoriteView;->showNoShops(Z)V

    :cond_2
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
