.class public final Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr26$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr26$a<",
        "Lpz3;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter$a;->a:Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter$a;->a:Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;

    invoke-static {p0}, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;->access$getPlaceholderState$p(Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;)Lr86;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lr86;->a(Z)V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/products/presentation/products/view/ProductsView;

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Lcom/warefly/checkscan/products/presentation/products/view/ProductsView;->showLoading(Z)V

    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/products/presentation/products/view/ProductsView;

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/products/presentation/products/view/ProductsView;->showError(Z)V

    :cond_1
    return-void
.end method

.method public final showData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lpz3;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter$a;->a:Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/products/presentation/products/view/ProductsView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/products/presentation/products/view/ProductsView;->showLoading(Z)V

    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/products/presentation/products/view/ProductsView;

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/products/presentation/products/view/ProductsView;->showError(Z)V

    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/products/presentation/products/view/ProductsView;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/products/presentation/products/view/ProductsView;->showContent(Ljava/util/List;)V

    :cond_2
    return-void
.end method
