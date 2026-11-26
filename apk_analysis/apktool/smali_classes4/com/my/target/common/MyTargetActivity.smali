.class public Lcom/my/target/common/MyTargetActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/common/MyTargetActivity$a;,
        Lcom/my/target/common/MyTargetActivity$b;
    }
.end annotation


# static fields
.field public static f:Lcom/my/target/common/MyTargetActivity$a;


# instance fields
.field public b:Lcom/my/target/common/MyTargetActivity$a;

.field public c:Landroid/widget/FrameLayout;

.field public d:Lcom/my/target/common/MyTargetActivity$b;

.field public e:Landroid/view/WindowInsetsController;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 6

    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/my/target/common/MyTargetActivity;->b:Lcom/my/target/common/MyTargetActivity$a;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/common/MyTargetActivity;->e:Landroid/view/WindowInsetsController;

    iget-object v0, p0, Lcom/my/target/common/MyTargetActivity;->d:Lcom/my/target/common/MyTargetActivity$b;

    if-eqz v0, :cond_1

    const/high16 v2, -0x1000000

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    const/16 v5, 0xcc

    invoke-static {v5, v3, v4, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    iget-object v3, v0, Lcom/my/target/common/MyTargetActivity$b;->b:Landroid/view/View;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v0, Lcom/my/target/common/MyTargetActivity$b;->e:Landroid/view/View;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v0, Lcom/my/target/common/MyTargetActivity$b;->c:Landroid/view/View;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v0, Lcom/my/target/common/MyTargetActivity$b;->d:Landroid/view/View;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v0, Lcom/my/target/common/MyTargetActivity$b;->f:Lcom/my/target/common/MyTargetActivity;

    iget-object v3, v0, Lcom/my/target/common/MyTargetActivity;->e:Landroid/view/WindowInsetsController;

    if-eqz v3, :cond_1

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v3, v3

    const v5, 0x3e991687    # 0.299f

    mul-float/2addr v3, v5

    mul-float/2addr v4, v4

    const v5, 0x3f1645a2    # 0.587f

    mul-float/2addr v4, v5

    add-float/2addr v4, v3

    mul-float/2addr v2, v2

    const v3, 0x3de978d5    # 0.114f

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    const v3, 0x467e0100    # 16256.25f

    cmpg-float v2, v3, v2

    iget-object v3, v0, Lcom/my/target/common/MyTargetActivity;->e:Landroid/view/WindowInsetsController;

    const/16 v4, 0x10

    const/16 v5, 0x8

    if-gez v2, :cond_0

    invoke-interface {v3, v5, v5}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    iget-object v0, v0, Lcom/my/target/common/MyTargetActivity;->e:Landroid/view/WindowInsetsController;

    invoke-interface {v0, v4, v4}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    goto :goto_0

    :cond_0
    invoke-interface {v3, v1, v5}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    iget-object v0, v0, Lcom/my/target/common/MyTargetActivity;->e:Landroid/view/WindowInsetsController;

    invoke-interface {v0, v1, v4}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/my/target/common/MyTargetActivity;->b:Lcom/my/target/common/MyTargetActivity$a;

    invoke-interface {v0, p0}, Lcom/my/target/common/MyTargetActivity$a;->j(Lcom/my/target/common/MyTargetActivity;)V

    :cond_2
    return-void
.end method

.method public final onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/my/target/common/MyTargetActivity;->b:Lcom/my/target/common/MyTargetActivity$a;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/my/target/common/MyTargetActivity$a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/my/target/common/MyTargetActivity;->f:Lcom/my/target/common/MyTargetActivity$a;

    iput-object v0, p0, Lcom/my/target/common/MyTargetActivity;->b:Lcom/my/target/common/MyTargetActivity$a;

    const/4 v1, 0x0

    sput-object v1, Lcom/my/target/common/MyTargetActivity;->f:Lcom/my/target/common/MyTargetActivity$a;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/common/MyTargetActivity;->c:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v1, 0x0

    const/16 v2, 0x23

    if-lt v0, v2, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_0

    new-instance v0, Lcom/my/target/common/MyTargetActivity$b;

    invoke-direct {v0, p0, p0}, Lcom/my/target/common/MyTargetActivity$b;-><init>(Lcom/my/target/common/MyTargetActivity;Lcom/my/target/common/MyTargetActivity;)V

    iput-object v0, p0, Lcom/my/target/common/MyTargetActivity;->d:Lcom/my/target/common/MyTargetActivity$b;

    iget-object v2, p0, Lcom/my/target/common/MyTargetActivity;->c:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x11

    const/4 v5, -0x1

    invoke-direct {v3, v5, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x30

    const/4 v6, -0x2

    invoke-direct {v3, v5, v6, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v4, v0, Lcom/my/target/common/MyTargetActivity$b;->b:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, 0x5

    invoke-direct {v3, v6, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v4, v0, Lcom/my/target/common/MyTargetActivity$b;->c:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x50

    invoke-direct {v3, v5, v6, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v4, v0, Lcom/my/target/common/MyTargetActivity$b;->d:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, 0x3

    invoke-direct {v3, v6, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v4, v0, Lcom/my/target/common/MyTargetActivity$b;->e:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v3, Lmh5;

    invoke-direct {v3, v0, v2}, Lmh5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Ln2a;

    invoke-direct {v2, v3}, Ln2a;-><init>(Lmh5;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    :cond_0
    iget-object v0, p0, Lcom/my/target/common/MyTargetActivity;->b:Lcom/my/target/common/MyTargetActivity$a;

    iget-object v2, p0, Lcom/my/target/common/MyTargetActivity;->c:Landroid/widget/FrameLayout;

    invoke-interface {v0, p0, p1, v2}, Lcom/my/target/common/MyTargetActivity$a;->f(Lcom/my/target/common/MyTargetActivity;Landroid/content/Intent;Landroid/widget/FrameLayout;)V

    iget-object p1, p0, Lcom/my/target/common/MyTargetActivity;->d:Lcom/my/target/common/MyTargetActivity$b;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/my/target/common/MyTargetActivity;->c:Landroid/widget/FrameLayout;

    :goto_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-lt p1, v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object p1

    new-instance v0, Llh5;

    invoke-direct {v0, p0}, Llh5;-><init>(Lcom/my/target/common/MyTargetActivity;)V

    invoke-interface {p1, v1, v0}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object p0, p0, Lcom/my/target/common/MyTargetActivity;->b:Lcom/my/target/common/MyTargetActivity$a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/my/target/common/MyTargetActivity$a;->p()V

    :cond_0
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/my/target/common/MyTargetActivity;->e:Landroid/view/WindowInsetsController;

    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    return-void
.end method

.method public final onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object p0, p0, Lcom/my/target/common/MyTargetActivity;->b:Lcom/my/target/common/MyTargetActivity$a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/my/target/common/MyTargetActivity$a;->q()V

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object p0, p0, Lcom/my/target/common/MyTargetActivity;->b:Lcom/my/target/common/MyTargetActivity$a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/my/target/common/MyTargetActivity$a;->k()V

    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method public final onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object p0, p0, Lcom/my/target/common/MyTargetActivity;->b:Lcom/my/target/common/MyTargetActivity$a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/my/target/common/MyTargetActivity$a;->h()V

    :cond_0
    return-void
.end method
