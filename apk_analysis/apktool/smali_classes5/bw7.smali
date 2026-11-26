.class public final Lbw7;
.super Lvd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvd9<",
        "Lyu7;",
        "Lcom/warefly/checkscan/databinding/ItemRvShopTopItemHotBinding;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lyr0;


# direct methods
.method public constructor <init>(Lyr0;)V
    .locals 1

    sget-object v0, Law7;->c:Law7;

    invoke-direct {p0, v0}, Lvd9;-><init>(Ldm3;)V

    iput-object p1, p0, Lbw7;->b:Lyr0;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lyu7;

    return p0
.end method

.method public final i(Landroidx/viewbinding/ViewBinding;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/warefly/checkscan/databinding/ItemRvShopTopItemHotBinding;

    check-cast p2, Lyu7;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemRvShopTopItemHotBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x8

    invoke-static {v1, v0}, Lle9;->c(ILandroid/view/View;)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/ItemRvShopTopItemHotBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Llb7;

    new-instance v2, Lr4;

    invoke-direct {v2, p0, p2}, Lr4;-><init>(Lbw7;Lyu7;)V

    invoke-direct {v1, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvShopTopItemHotBinding;->ivTopMarket:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-static {p0}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object p0

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/ItemRvShopTopItemHotBinding;->ivTopMarket:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p0, v0}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/ItemRvShopTopItemHotBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
