.class public final Lhn5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls26$m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls26$m<",
        "Lui6;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter$b;

.field public final b:Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter$c;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter$b;Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhn5;->a:Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter$b;

    iput-object p2, p0, Lhn5;->b:Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter$c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lhn5;->b:Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter$c;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter$c;->invoke()Ljava/lang/Object;

    iget-object p0, p0, Lhn5;->a:Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter$b;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter$b;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsView;->allProductInChequeLoaded()V

    :cond_0
    return-void
.end method

.method public final c(Z)V
    .locals 0

    return-void
.end method

.method public final d(Ljava/util/List;Z)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lhn5;->a:Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter$b;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter$b;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsView;

    if-eqz p2, :cond_0

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsView;->showProducts(Ljava/util/List;)V

    return-void

    :cond_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsView;->hideProducts()V

    :cond_1
    return-void
.end method

.method public final e(Z)V
    .locals 0

    return-void
.end method

.method public final f(Z)V
    .locals 0

    return-void
.end method

.method public final g(Z)V
    .locals 0

    return-void
.end method

.method public final h(Z)V
    .locals 0

    return-void
.end method
