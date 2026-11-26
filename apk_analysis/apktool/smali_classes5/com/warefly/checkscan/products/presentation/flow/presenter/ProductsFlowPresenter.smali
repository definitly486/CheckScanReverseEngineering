.class public final Lcom/warefly/checkscan/products/presentation/flow/presenter/ProductsFlowPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/products/presentation/flow/view/ProductsFlowView;",
        ">;"
    }
.end annotation


# instance fields
.field private final reason:Lcom/warefly/checkscan/products/presentation/flow/ProductsReason;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/products/presentation/flow/ProductsReason;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/products/presentation/flow/presenter/ProductsFlowPresenter;->reason:Lcom/warefly/checkscan/products/presentation/flow/ProductsReason;

    return-void
.end method


# virtual methods
.method public onFirstViewAttach()V
    .locals 3

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/products/presentation/flow/view/ProductsFlowView;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/warefly/checkscan/products/presentation/flow/presenter/ProductsFlowPresenter;->reason:Lcom/warefly/checkscan/products/presentation/flow/ProductsReason;

    sget-object v2, Lcom/warefly/checkscan/products/presentation/flow/ProductsReason$Main;->b:Lcom/warefly/checkscan/products/presentation/flow/ProductsReason$Main;

    invoke-static {v1, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object p0, Lek6;->a:Lek6;

    goto :goto_1

    :cond_0
    instance-of v2, v1, Lcom/warefly/checkscan/products/presentation/flow/ProductsReason$Product;

    if-eqz v2, :cond_1

    new-instance v1, Lfk6;

    iget-object p0, p0, Lcom/warefly/checkscan/products/presentation/flow/presenter/ProductsFlowPresenter;->reason:Lcom/warefly/checkscan/products/presentation/flow/ProductsReason;

    check-cast p0, Lcom/warefly/checkscan/products/presentation/flow/ProductsReason$Product;

    iget p0, p0, Lcom/warefly/checkscan/products/presentation/flow/ProductsReason$Product;->b:I

    invoke-direct {v1, p0}, Lfk6;-><init>(I)V

    :goto_0
    move-object p0, v1

    goto :goto_1

    :cond_1
    instance-of v1, v1, Lcom/warefly/checkscan/products/presentation/flow/ProductsReason$Shop;

    if-eqz v1, :cond_2

    new-instance v1, Lhk6;

    iget-object p0, p0, Lcom/warefly/checkscan/products/presentation/flow/presenter/ProductsFlowPresenter;->reason:Lcom/warefly/checkscan/products/presentation/flow/ProductsReason;

    move-object v2, p0

    check-cast v2, Lcom/warefly/checkscan/products/presentation/flow/ProductsReason$Shop;

    iget v2, v2, Lcom/warefly/checkscan/products/presentation/flow/ProductsReason$Shop;->b:I

    check-cast p0, Lcom/warefly/checkscan/products/presentation/flow/ProductsReason$Shop;

    iget-boolean p0, p0, Lcom/warefly/checkscan/products/presentation/flow/ProductsReason$Shop;->c:Z

    invoke-direct {v1, v2, p0}, Lhk6;-><init>(IZ)V

    goto :goto_0

    :goto_1
    const/4 v1, 0x1

    new-array v1, v1, [Llk3;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    return-void

    :cond_2
    invoke-static {}, Lme0;->e()V

    :cond_3
    return-void
.end method
