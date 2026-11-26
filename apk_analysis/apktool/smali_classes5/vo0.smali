.class public final synthetic Lvo0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxl3;
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;
.implements Landroidx/camera/core/RotationProvider$Listener;


# instance fields
.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lvo0;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lvo0;->b:Ljava/lang/Object;

    check-cast p0, Lep0;

    invoke-virtual {p0, p1}, Lep0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc18;

    return-object p0
.end method

.method public onRefresh()V
    .locals 1

    iget-object p0, p0, Lvo0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/warefly/checkscan/products/presentation/products/view/ProductsFragment;

    sget-object v0, Lcom/warefly/checkscan/products/presentation/products/view/ProductsFragment;->i:Lcom/warefly/checkscan/products/presentation/products/view/ProductsFragment$a;

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/products/view/ProductsFragment;->o()Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;->refreshContent()V

    return-void
.end method

.method public onRotationChanged(I)V
    .locals 0

    iget-object p0, p0, Lvo0;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/camera/core/UseCase;

    invoke-virtual {p0, p1}, Landroidx/camera/core/UseCase;->onProviderRotationChanged(I)V

    return-void
.end method
