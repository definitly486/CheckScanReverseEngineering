.class public final Lcom/warefly/checkscan/products/presentation/product/view/ProductFragment$$PresentersBinder$a;
.super Lpf6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/products/presentation/product/view/ProductFragment$$PresentersBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpf6<",
        "Lcom/warefly/checkscan/products/presentation/product/view/ProductFragment;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Ljava/lang/Object;Lih5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/products/presentation/product/view/ProductFragment;

    check-cast p2, Lcom/warefly/checkscan/products/presentation/product/presenter/ProductPresenter;

    iput-object p2, p1, Lcom/warefly/checkscan/products/presentation/product/view/ProductFragment;->presenter:Lcom/warefly/checkscan/products/presentation/product/presenter/ProductPresenter;

    return-void
.end method

.method public final b(Ljava/lang/Object;)Lih5;
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/products/presentation/product/view/ProductFragment;

    invoke-virtual {p1}, Lcom/warefly/checkscan/products/presentation/product/view/ProductFragment;->providePresenter()Lcom/warefly/checkscan/products/presentation/product/presenter/ProductPresenter;

    move-result-object p0

    return-object p0
.end method
