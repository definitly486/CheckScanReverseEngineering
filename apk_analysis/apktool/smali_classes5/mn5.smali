.class public final Lmn5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls26$m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls26$m<",
        "Loa4;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter$e;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter$e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmn5;->a:Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter$e;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c(Z)V
    .locals 0

    return-void
.end method

.method public final d(Ljava/util/List;Z)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lmn5;->a:Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter$e;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter$e;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsView;->showShopInCheques(Ljava/util/List;)V

    :cond_0
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
