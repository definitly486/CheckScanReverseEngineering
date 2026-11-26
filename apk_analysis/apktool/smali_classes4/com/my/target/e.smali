.class public final Lcom/my/target/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/my/target/y0$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/e$a;
    }
.end annotation


# instance fields
.field public final b:Lcom/my/target/y0;

.field public final c:Lcom/my/target/cl;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lf72;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Llga;

    new-instance v1, Lcom/my/target/e$a;

    invoke-direct {v1, p0, p0, p2, p3}, Lcom/my/target/e$a;-><init>(Lcom/my/target/e;Lcom/my/target/e;Lf72;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Llga;-><init>(Lcom/my/target/e$a;)V

    new-instance p2, Lcom/my/target/cl;

    new-instance v1, Ltn9;

    invoke-direct {v1}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-direct {p2, p1, v0, v1, p3}, Lcom/my/target/cl;-><init>(Ljava/lang/String;Llga;Ltn9;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/my/target/e;->c:Lcom/my/target/cl;

    new-instance p1, Lcom/my/target/y0;

    invoke-direct {p1, p0, p3}, Lcom/my/target/y0;-><init>(Lcom/my/target/y0$a;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/my/target/e;->b:Lcom/my/target/y0;

    return-void
.end method


# virtual methods
.method public final b(Landroid/widget/FrameLayout;)V
    .locals 8

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, 0x66000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/high16 v2, 0x41800000    # 16.0f

    const/4 v3, 0x1

    invoke-static {v3, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    new-instance v4, Lun9;

    invoke-direct {v4, v2}, Lun9;-><init>(I)V

    iget-object v2, p0, Lcom/my/target/e;->c:Lcom/my/target/cl;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 v4, -0x1

    invoke-virtual {p1, v2, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    new-instance v4, Lzha;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lzha;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v6, 0x42100000    # 36.0f

    invoke-static {v3, v6, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v7, v7

    invoke-static {v3, v6, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    invoke-direct {v5, v7, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v6, 0x800035

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v3, v6, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v1, v1, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p1, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lsn9;

    invoke-direct {p1, p0, v6}, Lsn9;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v4, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    new-instance p1, Landroid/view/animation/TranslateAnimation;

    int-to-float p0, p0

    invoke-direct {p1, v0, v0, p0, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {p1, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {v2, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object p0, v2, Lcom/my/target/cl;->e:Ljava/lang/String;

    invoke-virtual {v2, p0}, Lcom/my/target/h1;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final m()V
    .locals 0

    return-void
.end method
