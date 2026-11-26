.class public abstract Lyads/xk6;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Lyads/sp0;
    .locals 9

    const/16 v0, 0x1e

    invoke-static {v0}, Lyads/za;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v0

    sget-object v2, Lyads/eh6;->a:Lyads/th6;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    new-instance v2, Lyads/sp0;

    invoke-static {v1}, Lw7;->b(Landroid/graphics/Insets;)I

    move-result v3

    invoke-static {v3, p0}, Lyads/eh6;->b(IF)F

    move-result v3

    invoke-static {v1}, Lrs2;->b(Landroid/graphics/Insets;)I

    move-result v4

    invoke-static {v4, p0}, Lyads/eh6;->b(IF)F

    move-result v4

    invoke-static {v1}, Lmj;->b(Landroid/graphics/Insets;)I

    move-result v5

    invoke-static {v5, p0}, Lyads/eh6;->b(IF)F

    move-result v5

    invoke-static {v1}, Lh8;->b(Landroid/graphics/Insets;)I

    move-result v1

    invoke-static {v1, p0}, Lyads/eh6;->b(IF)F

    move-result v6

    invoke-static {v0}, Lrs2;->b(Landroid/graphics/Insets;)I

    move-result v1

    invoke-static {v1, p0}, Lyads/eh6;->b(IF)F

    move-result v7

    invoke-static {v0}, Lh8;->b(Landroid/graphics/Insets;)I

    move-result v0

    invoke-static {v0, p0}, Lyads/eh6;->b(IF)F

    move-result v8

    invoke-direct/range {v2 .. v8}, Lyads/sp0;-><init>(FFFFFF)V

    return-object v2

    :cond_0
    const/16 v0, 0x1c

    invoke-static {v0}, Lyads/za;->a(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lyads/s1;->a()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object p0, Lyads/sp0;->g:Lyads/sp0;

    return-object p0

    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object p0, Lyads/sp0;->g:Lyads/sp0;

    return-object p0

    :cond_2
    sget-object v1, Lyads/eh6;->a:Lyads/th6;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    new-instance v2, Lyads/sp0;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v3

    invoke-static {v3, p0}, Lyads/eh6;->b(IF)F

    move-result v3

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v4

    invoke-static {v4, p0}, Lyads/eh6;->b(IF)F

    move-result v4

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v5

    invoke-static {v5, p0}, Lyads/eh6;->b(IF)F

    move-result v5

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    invoke-static {v0, p0}, Lyads/eh6;->b(IF)F

    move-result v6

    const/4 v0, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v7

    goto :goto_0

    :cond_3
    move v7, v0

    :goto_0
    invoke-static {v7, p0}, Lyads/eh6;->b(IF)F

    move-result v7

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v0

    :cond_4
    invoke-static {v0, p0}, Lyads/eh6;->b(IF)F

    move-result v8

    invoke-direct/range {v2 .. v8}, Lyads/sp0;-><init>(FFFFFF)V

    return-object v2

    :cond_5
    sget-object p0, Lyads/sp0;->g:Lyads/sp0;

    return-object p0
.end method
