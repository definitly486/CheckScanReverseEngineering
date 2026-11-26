.class public final Lrd5;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lpd5;",
        "Lcom/warefly/checkscan/products/databinding/ItemMoreProductsButtonBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;)V
    .locals 1

    sget-object v0, Lqd5;->c:Lqd5;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Lrd5;->b:Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lpd5;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/warefly/checkscan/products/databinding/ItemMoreProductsButtonBinding;

    check-cast p2, Lpd5;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/warefly/checkscan/products/databinding/ItemMoreProductsButtonBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Li60;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p2, v2}, Li60;-><init>(Lvd9;Lpz3;I)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
