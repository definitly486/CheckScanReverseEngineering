.class public final Lyads/bo0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/ed5;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyads/ed5;

    invoke-direct {v0}, Lyads/ed5;-><init>()V

    iput-object v0, p0, Lyads/bo0;->a:Lyads/ed5;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lyads/ao0;
    .locals 5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object p0, p0, Lyads/bo0;->a:Lyads/ed5;

    invoke-virtual {p0, p1}, Lyads/ed5;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p0

    iget v1, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, v1

    div-float v2, v1, v0

    int-to-float p0, p0

    div-float v3, p0, v0

    cmpl-float v4, v2, v3

    if-lez v4, :cond_0

    move v2, v3

    :cond_0
    const/high16 v3, 0x43200000    # 160.0f

    mul-float/2addr v0, v3

    div-float/2addr v1, v0

    div-float/2addr p0, v0

    mul-float/2addr v1, v1

    mul-float/2addr p0, p0

    add-float/2addr p0, v1

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const/16 p0, 0xd

    invoke-static {p0}, Lyads/za;->a(I)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "uimode"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Landroid/app/UiModeManager;

    if-eqz p1, :cond_1

    check-cast p0, Landroid/app/UiModeManager;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result p0

    const/4 p1, 0x4

    if-ne p0, p1, :cond_3

    goto :goto_2

    :cond_2
    const-wide/high16 v3, 0x402e000000000000L    # 15.0

    cmpl-double p0, v0, v3

    if-ltz p0, :cond_3

    const-string p0, "android.hardware.touchscreen"

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    const/4 p0, 0x0

    :goto_1
    if-nez p0, :cond_3

    :goto_2
    sget-object p0, Lyads/ao0;->d:Lyads/ao0;

    return-object p0

    :cond_3
    const-wide/high16 p0, 0x401c000000000000L    # 7.0

    cmpl-double p0, v0, p0

    if-gez p0, :cond_5

    const/high16 p0, 0x44160000    # 600.0f

    cmpl-float p0, v2, p0

    if-ltz p0, :cond_4

    goto :goto_3

    :cond_4
    sget-object p0, Lyads/ao0;->b:Lyads/ao0;

    goto :goto_4

    :cond_5
    :goto_3
    sget-object p0, Lyads/ao0;->c:Lyads/ao0;

    :goto_4
    return-object p0
.end method
