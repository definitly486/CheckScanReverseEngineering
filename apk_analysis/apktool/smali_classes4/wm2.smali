.class public final Lwm2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "amazon.hardware.fire_tv"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "uimode"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/UiModeManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    :goto_0
    const-string p0, "TV"

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const-string v2, "Mobile"

    const-string v3, "Tablet"

    const/4 v4, 0x0

    if-nez v1, :cond_2

    move-object v1, v4

    goto :goto_1

    :cond_2
    const/16 v5, 0x258

    if-lt v1, v5, :cond_3

    move-object v1, v3

    goto :goto_1

    :cond_3
    move-object v1, v2

    :goto_1
    if-nez v1, :cond_9

    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v5, v1, Landroid/view/WindowManager;

    if-eqz v5, :cond_4

    check-cast v1, Landroid/view/WindowManager;

    goto :goto_2

    :cond_4
    move-object v1, v4

    :goto_2
    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1e

    if-lt v5, v6, :cond_6

    invoke-interface {v1}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-double v5, v1

    int-to-double v7, p0

    div-double/2addr v5, v7

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-double v0, p0

    div-double/2addr v0, v7

    goto :goto_3

    :cond_6
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v5, p0

    iget p0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    float-to-double v7, p0

    div-double/2addr v5, v7

    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v7, p0

    iget p0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    float-to-double v0, p0

    div-double v0, v7, v0

    :goto_3
    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    cmpg-double p0, v5, v0

    const-wide v5, 0x401b99999999999aL    # 6.9

    if-gtz p0, :cond_7

    cmpg-double p0, v0, v5

    if-gtz p0, :cond_7

    return-object v2

    :cond_7
    cmpl-double p0, v0, v5

    if-lez p0, :cond_8

    const-wide/high16 v5, 0x4032000000000000L    # 18.0

    cmpg-double p0, v0, v5

    if-gtz p0, :cond_8

    return-object v3

    :cond_8
    :goto_4
    return-object v4

    :cond_9
    return-object v1
.end method
