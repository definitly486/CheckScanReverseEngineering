.class public final Lcom/warefly/checkscan/products/presentation/flow/view/ProductsFlowFragment$$PresentersBinder$a;
.super Lpf6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/products/presentation/flow/view/ProductsFlowFragment$$PresentersBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpf6<",
        "Lcom/warefly/checkscan/products/presentation/flow/view/ProductsFlowFragment;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Ljava/lang/Object;Lih5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/products/presentation/flow/view/ProductsFlowFragment;

    check-cast p2, Lcom/warefly/checkscan/products/presentation/flow/presenter/ProductsFlowPresenter;

    iput-object p2, p1, Lcom/warefly/checkscan/products/presentation/flow/view/ProductsFlowFragment;->presenter:Lcom/warefly/checkscan/products/presentation/flow/presenter/ProductsFlowPresenter;

    return-void
.end method

.method public final b(Ljava/lang/Object;)Lih5;
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/products/presentation/flow/view/ProductsFlowFragment;

    invoke-virtual {p1}, Lcom/warefly/checkscan/products/presentation/flow/view/ProductsFlowFragment;->providePresenter()Lcom/warefly/checkscan/products/presentation/flow/presenter/ProductsFlowPresenter;

    move-result-object p0

    return-object p0
.end method
