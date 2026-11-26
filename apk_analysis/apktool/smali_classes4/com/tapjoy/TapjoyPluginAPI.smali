.class public Lcom/tapjoy/TapjoyPluginAPI;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/tapjoy/TJOfferwallDiscoverView; = null

.field public static b:Landroid/widget/PopupWindow; = null

.field public static c:F = -1.0f

.field public static d:F = -1.0f

.field public static e:Ljava/lang/String; = "native"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CreatePopupWindow(Landroid/app/Activity;Landroid/view/ViewGroup;II)Landroid/widget/PopupWindow;
    .locals 2

    const-string v0, "Unable to set popUpWindow window layout type: "

    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, p1, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :try_start_0
    const-class p0, Landroid/widget/PopupWindow;

    const-string p1, "setWindowLayoutType"

    sget-object p2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {p2}, [Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/16 p1, 0x3ea

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_2

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ljg;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ljg;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ljg;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-object v1
.end method

.method public static DestroyOWDiscover()V
    .locals 2

    new-instance v0, Lw52;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lw52;-><init>(I)V

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static RequestOWDiscover(Landroid/app/Activity;Ljava/lang/String;FFFFLcom/tapjoy/TJOfferwallDiscoverListener;)V
    .locals 8

    new-instance v0, Lnk8;

    move-object v1, p0

    move-object v3, p1

    move v6, p2

    move v7, p3

    move v4, p4

    move v5, p5

    move-object v2, p6

    invoke-direct/range {v0 .. v7}, Lnk8;-><init>(Landroid/app/Activity;Lcom/tapjoy/TJOfferwallDiscoverListener;Ljava/lang/String;FFFF)V

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static RequestOWDiscover(Landroid/app/Activity;Ljava/lang/String;FLcom/tapjoy/TJOfferwallDiscoverListener;)V
    .locals 7

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v2, -0x40800000    # -1.0f

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    move-object v6, p3

    .line 16
    invoke-static/range {v0 .. v6}, Lcom/tapjoy/TapjoyPluginAPI;->RequestOWDiscover(Landroid/app/Activity;Ljava/lang/String;FFFFLcom/tapjoy/TJOfferwallDiscoverListener;)V

    return-void
.end method

.method public static ShowOWDiscover(Landroid/app/Activity;)V
    .locals 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v1, Lok8;

    invoke-direct {v1, p0, v0}, Lok8;-><init>(Landroid/app/Activity;Landroid/util/DisplayMetrics;)V

    invoke-static {v1}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic a()V
    .locals 2

    .line 98
    sget-object v0, Lcom/tapjoy/TapjoyPluginAPI;->b:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isAttachedInDecor()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    sget-object v0, Lcom/tapjoy/TapjoyPluginAPI;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x0

    .line 101
    sput-object v0, Lcom/tapjoy/TapjoyPluginAPI;->b:Landroid/widget/PopupWindow;

    .line 102
    sget-object v1, Lcom/tapjoy/TapjoyPluginAPI;->a:Lcom/tapjoy/TJOfferwallDiscoverView;

    if-eqz v1, :cond_1

    .line 103
    invoke-virtual {v1}, Lcom/tapjoy/TJOfferwallDiscoverView;->clearContent()V

    .line 104
    sput-object v0, Lcom/tapjoy/TapjoyPluginAPI;->a:Lcom/tapjoy/TJOfferwallDiscoverView;

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic a(Landroid/app/Activity;Landroid/util/DisplayMetrics;)V
    .locals 4

    sget-object v0, Lcom/tapjoy/TapjoyPluginAPI;->b:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4

    sget v0, Lcom/tapjoy/TapjoyPluginAPI;->d:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget v2, Lcom/tapjoy/TapjoyPluginAPI;->c:F

    cmpl-float v3, v2, v1

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    sget-object v2, Lcom/tapjoy/TapjoyPluginAPI;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v2

    sub-int/2addr p1, v2

    int-to-float v2, p1

    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_3

    :cond_2
    sget p1, Lcom/tapjoy/TapjoyPluginAPI;->c:F

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_3

    const p1, 0x800033

    goto :goto_2

    :cond_3
    const p1, 0x800005

    :goto_2
    sget-object v3, Lcom/tapjoy/TapjoyPluginAPI;->b:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    float-to-int v0, v0

    float-to-int v2, v2

    invoke-virtual {v3, p0, p1, v0, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    sput v1, Lcom/tapjoy/TapjoyPluginAPI;->c:F

    sput v1, Lcom/tapjoy/TapjoyPluginAPI;->d:F

    :cond_4
    :goto_3
    return-void
.end method

.method public static synthetic a(Landroid/app/Activity;Lcom/tapjoy/TJOfferwallDiscoverListener;Ljava/lang/String;FFFF)V
    .locals 2

    .line 87
    invoke-static {}, Lcom/tapjoy/TapjoyPluginAPI;->DestroyOWDiscover()V

    .line 88
    new-instance v0, Lcom/tapjoy/TJOfferwallDiscoverView;

    invoke-direct {v0, p0}, Lcom/tapjoy/TJOfferwallDiscoverView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tapjoy/TapjoyPluginAPI;->a:Lcom/tapjoy/TJOfferwallDiscoverView;

    .line 89
    invoke-virtual {v0, p1}, Lcom/tapjoy/TJOfferwallDiscoverView;->setListener(Lcom/tapjoy/TJOfferwallDiscoverListener;)V

    .line 90
    sget-object p1, Lcom/tapjoy/TapjoyPluginAPI;->a:Lcom/tapjoy/TJOfferwallDiscoverView;

    invoke-virtual {p1, p0, p2}, Lcom/tapjoy/TJOfferwallDiscoverView;->requestContent(Landroid/content/Context;Ljava/lang/String;)V

    .line 91
    sget-object p1, Lcom/tapjoy/TJDeviceUtils;->INSTANCE:Lcom/tapjoy/TJDeviceUtils;

    invoke-virtual {p1, p0}, Lcom/tapjoy/TJDeviceUtils;->getDensity(Landroid/content/Context;)F

    move-result p1

    .line 92
    new-instance p2, Landroid/util/DisplayMetrics;

    invoke-direct {p2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 93
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 94
    sget-object p2, Lcom/tapjoy/TapjoyPluginAPI;->a:Lcom/tapjoy/TJOfferwallDiscoverView;

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v1, p3, v0

    if-eqz v1, :cond_0

    mul-float/2addr p3, p1

    :cond_0
    float-to-int p3, p3

    mul-float/2addr p4, p1

    float-to-int p4, p4

    invoke-static {p0, p2, p3, p4}, Lcom/tapjoy/TapjoyPluginAPI;->CreatePopupWindow(Landroid/app/Activity;Landroid/view/ViewGroup;II)Landroid/widget/PopupWindow;

    move-result-object p0

    sput-object p0, Lcom/tapjoy/TapjoyPluginAPI;->b:Landroid/widget/PopupWindow;

    const/4 p2, 0x1

    .line 95
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    cmpl-float p0, p5, v0

    if-eqz p0, :cond_1

    mul-float/2addr p5, p1

    .line 96
    :cond_1
    sput p5, Lcom/tapjoy/TapjoyPluginAPI;->d:F

    cmpl-float p0, p6, v0

    if-eqz p0, :cond_2

    mul-float/2addr p6, p1

    .line 97
    :cond_2
    sput p6, Lcom/tapjoy/TapjoyPluginAPI;->c:F

    return-void
.end method

.method public static getPlugin()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tapjoy/TapjoyPluginAPI;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static setPlugin(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/tapjoy/TapjoyPluginAPI;->e:Ljava/lang/String;

    return-void
.end method
