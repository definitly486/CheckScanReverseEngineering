.class public final Lcom/warefly/checkscan/products/presentation/main/view/MainProductsFragment$$PresentersBinder$a;
.super Lpf6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/products/presentation/main/view/MainProductsFragment$$PresentersBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpf6<",
        "Lcom/warefly/checkscan/products/presentation/main/view/MainProductsFragment;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Ljava/lang/Object;Lih5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/products/presentation/main/view/MainProductsFragment;

    check-cast p2, Lcom/warefly/checkscan/products/presentation/main/presenter/MainProductsPresenter;

    iput-object p2, p1, Lcom/warefly/checkscan/products/presentation/main/view/MainProductsFragment;->presenter:Lcom/warefly/checkscan/products/presentation/main/presenter/MainProductsPresenter;

    return-void
.end method

.method public final b(Ljava/lang/Object;)Lih5;
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/products/presentation/main/view/MainProductsFragment;

    invoke-virtual {p1}, Lcom/warefly/checkscan/products/presentation/main/view/MainProductsFragment;->providePresenter()Lcom/warefly/checkscan/products/presentation/main/presenter/MainProductsPresenter;

    move-result-object p0

    return-object p0
.end method
