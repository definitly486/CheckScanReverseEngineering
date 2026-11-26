.class public final Lbj6;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/products/presentation/products/view/ProductsFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/products/presentation/products/view/ProductsFragment;)V
    .locals 0

    iput-object p1, p0, Lbj6;->f:Lcom/warefly/checkscan/products/presentation/products/view/ProductsFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lbj6;->f:Lcom/warefly/checkscan/products/presentation/products/view/ProductsFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/products/view/ProductsFragment;->o()Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;->loadNextPage()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
