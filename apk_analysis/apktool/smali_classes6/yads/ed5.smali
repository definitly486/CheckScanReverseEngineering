.class public final Lyads/ed5;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/view/Display;Landroid/graphics/Point;Lyads/ed5;)Landroid/graphics/Point;
    .locals 0

    if-eqz p0, :cond_0

    .line 53
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 55
    invoke-virtual {p0, p1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 56
    iget p0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 57
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 58
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2, p0, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object p2

    :cond_0
    return-object p1
.end method

.method public static final a(Landroid/view/WindowManager;)Landroid/view/Display;
    .locals 0

    .line 52
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 3

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Landroid/view/WindowManager;

    new-instance v0, Lhu9;

    invoke-direct {v0, p1}, Lhu9;-><init>(Landroid/view/WindowManager;)V

    const-string v1, "getting display"

    const-string v2, "WindowManager"

    invoke-static {v0, p1, v1, v2}, Lyads/ju5;->a(Ljava/util/concurrent/Callable;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Display;

    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    new-instance v1, Liu9;

    invoke-direct {v1, p1, v0, p0}, Liu9;-><init>(Landroid/view/Display;Landroid/graphics/Point;Lyads/ed5;)V

    const-string p0, "getting display metrics"

    const-string v2, "Display"

    invoke-static {v1, p1, p0, v2}, Lyads/ju5;->a(Ljava/util/concurrent/Callable;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    check-cast v0, Landroid/graphics/Point;

    return-object v0
.end method
