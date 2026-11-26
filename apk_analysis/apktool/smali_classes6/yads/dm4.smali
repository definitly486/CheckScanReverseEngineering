.class public final Lyads/dm4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/b1;

.field public final b:Lyads/yd6;

.field public final c:Lyads/qw5;


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Lyads/b1;

    invoke-direct {v0}, Lyads/b1;-><init>()V

    new-instance v1, Lyads/yd6;

    invoke-direct {v1}, Lyads/yd6;-><init>()V

    new-instance v2, Lyads/qw5;

    invoke-direct {v2}, Lyads/qw5;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/dm4;->a:Lyads/b1;

    iput-object v1, p0, Lyads/dm4;->b:Lyads/yd6;

    iput-object v2, p0, Lyads/dm4;->c:Lyads/qw5;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lyads/td6;Lyads/tj6;Lyads/r96;I)Lyads/am4;
    .locals 9

    iget-object v0, p0, Lyads/dm4;->c:Lyads/qw5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/view/TextureView;

    invoke-direct {v0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lyads/dm4;->a:Lyads/b1;

    iget-object v3, v2, Lyads/b1;->b:Lyads/vz3;

    iget-object v3, v3, Lyads/vz3;->a:Lyads/uz3;

    invoke-virtual {p3}, Lyads/tj6;->getMuteControl()Landroid/widget/CheckBox;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    invoke-virtual {p3}, Lyads/tj6;->getVideoProgress()Landroid/widget/ProgressBar;

    move-result-object v3

    if-nez v3, :cond_0

    const-class p3, Lcom/monetization/ads/nativeads/video/view/CorePlaybackControlsContainer;

    invoke-static {p1, p3, p5, v4}, Lyads/dc5;->a(Landroid/content/Context;Ljava/lang/Class;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lyads/wz3;

    goto :goto_0

    :cond_0
    new-instance p5, Lyads/fc0;

    invoke-virtual {p3}, Lyads/tj6;->getMuteControl()Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {p3}, Lyads/tj6;->getVideoProgress()Landroid/widget/ProgressBar;

    move-result-object p3

    invoke-direct {p5, v3, p3, v4}, Lyads/fc0;-><init>(Landroid/widget/CheckBox;Landroid/widget/ProgressBar;Landroid/widget/TextView;)V

    move-object p3, p5

    :goto_0
    iget-object p5, v2, Lyads/b1;->a:Lyads/x65;

    iget-object p5, p5, Lyads/x65;->a:Lyads/z65;

    invoke-virtual {p5, p1}, Lyads/z65;->a(Landroid/content/Context;)Landroid/widget/Button;

    move-result-object p5

    const-string v3, "replay_button"

    invoke-static {v3}, Lyads/bh6;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p5, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p5, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v3, Lyads/v65;

    invoke-direct {v3, p1, p5}, Lyads/v65;-><init>(Landroid/content/Context;Landroid/widget/Button;)V

    invoke-virtual {v3, p5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p5, Lyads/sk4;

    invoke-direct {p5, p1, v3, p3}, Lyads/sk4;-><init>(Landroid/content/Context;Lyads/v65;Lyads/wz3;)V

    iget-object p3, v2, Lyads/b1;->c:Lyads/a1;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, p5, Lyads/sk4;->b:Lyads/wz3;

    iget-object v2, p5, Lyads/sk4;->a:Lyads/v65;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p3, :cond_1

    invoke-interface {p3}, Lyads/wz3;->getMuteControl()Landroid/widget/CheckBox;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v4

    :goto_1
    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    if-eqz p3, :cond_3

    invoke-interface {p3}, Lyads/wz3;->getVideoProgress()Landroid/widget/ProgressBar;

    move-result-object v2

    goto :goto_3

    :cond_3
    move-object v2, v4

    :goto_3
    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    if-eqz p3, :cond_5

    invoke-interface {p3}, Lyads/wz3;->getCountDownProgress()Landroid/widget/TextView;

    move-result-object v2

    goto :goto_5

    :cond_5
    move-object v2, v4

    :goto_5
    if-nez v2, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_6
    if-eqz p3, :cond_7

    invoke-interface {p3}, Lyads/wz3;->getMuteControl()Landroid/widget/CheckBox;

    move-result-object p3

    goto :goto_7

    :cond_7
    move-object p3, v4

    :goto_7
    const/4 v2, 0x1

    if-nez p3, :cond_8

    goto :goto_a

    :cond_8
    iget-object v3, p2, Lyads/td6;->d:Ljava/lang/Double;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v3, v5, v7

    if-nez v3, :cond_9

    goto :goto_8

    :cond_9
    iget-object p2, p2, Lyads/td6;->d:Ljava/lang/Double;

    if-nez p2, :cond_a

    :goto_8
    move p2, v2

    goto :goto_9

    :cond_a
    const/4 p2, 0x0

    :goto_9
    invoke-virtual {p3, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :goto_a
    invoke-virtual {p5, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lyads/dm4;->b:Lyads/yd6;

    iget-object p2, p0, Lyads/yd6;->b:Lyads/he6;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p4, :cond_b

    iget-object p2, p4, Lyads/r96;->c:Lyads/rd3;

    goto :goto_b

    :cond_b
    move-object p2, v4

    :goto_b
    if-eqz p2, :cond_c

    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    sget-object p2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_c
    if-nez v4, :cond_d

    goto :goto_c

    :cond_d
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_c
    iget-object p0, p0, Lyads/yd6;->a:Lyads/c15;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroid/widget/ProgressBar;

    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    sget p2, Lcom/yandex/mobile/ads/R$drawable;->monetization_ads_video_progress_bar_background:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/high16 p3, 0x42340000    # 45.0f

    invoke-static {v2, p3, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    invoke-static {p2}, Lw65;->b(F)I

    move-result p2

    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p3, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0x11

    iput p2, p3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    const-string p2, "video_placeholder_spinner"

    invoke-static {p2}, Lyads/bh6;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance p2, Lyads/xd6;

    invoke-direct {p2, p1, p0, v4}, Lyads/xd6;-><init>(Landroid/content/Context;Landroid/widget/ProgressBar;Landroid/widget/ImageView;)V

    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-eqz v4, :cond_e

    invoke-virtual {p2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_e
    const/high16 p0, -0x1000000

    invoke-virtual {p2, p0}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance p0, Lyads/am4;

    invoke-direct {p0, p1, p2, v0, p5}, Lyads/am4;-><init>(Landroid/content/Context;Lyads/xd6;Landroid/view/TextureView;Lyads/sk4;)V

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string p1, "native_video_view"

    invoke-static {p1}, Lyads/bh6;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p0
.end method
