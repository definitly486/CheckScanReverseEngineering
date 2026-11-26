.class public final Lyads/c24;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/d9;


# direct methods
.method public constructor <init>(Lyads/d9;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/c24;->a:Lyads/d9;

    return-void
.end method


# virtual methods
.method public final a(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lyads/b05;Lyads/j24;Ly22;)Lyads/wf5;
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lyads/xt2;->e:Lyads/xt2;

    invoke-static {v0, v2}, Lyads/yt2;->a(Landroid/content/Context;Lyads/xt2;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lyads/c24;->a:Lyads/d9;

    new-instance v0, Lyads/be3;

    invoke-direct {v0, v1, p2, p0, p4}, Lyads/be3;-><init>(Landroid/widget/ImageView;Lyads/b05;Lyads/d9;Ly22;)V

    new-instance p0, Lyads/wf5;

    invoke-direct {p0, p1, v0, p3}, Lyads/wf5;-><init>(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lyads/be3;Lyads/j24;)V

    return-object p0
.end method
