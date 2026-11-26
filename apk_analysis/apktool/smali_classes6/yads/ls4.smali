.class public abstract Lyads/ls4;
.super Lyads/qs;
.source "SourceFile"

# interfaces
.implements Lyads/fa3;
.implements Lyads/tu4;
.implements Lyads/hh6;


# static fields
.field public static j:Z


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Lyads/ih6;

.field public final d:Lyads/uu4;

.field public final e:Lyads/nl5;

.field public f:Lyads/ha3;

.field public g:Lyads/ga3;

.field public h:Z

.field public i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/xj6;Landroid/util/AttributeSet;I)V
    .locals 3

    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_0

    new-instance p2, Lyads/xj6;

    invoke-direct {p2}, Lyads/xj6;-><init>()V

    :cond_0
    const/4 v0, 0x4

    and-int/2addr p4, v0

    const/4 v1, 0x0

    if-eqz p4, :cond_1

    move-object p3, v1

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance p4, Lyads/ih6;

    invoke-direct {p4}, Lyads/ih6;-><init>()V

    sget-object v2, Lyads/uu4;->h:Lyads/su4;

    invoke-virtual {v2, p1}, Lyads/su4;->a(Landroid/content/Context;)Lyads/uu4;

    move-result-object v2

    invoke-direct {p0, p1, p3}, Lyads/qs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lyads/ls4;->b:Landroid/content/Context;

    iput-object p4, p0, Lyads/ls4;->c:Lyads/ih6;

    iput-object v2, p0, Lyads/ls4;->d:Lyads/uu4;

    new-instance p1, Lyads/nl5;

    invoke-direct {p1}, Lyads/nl5;-><init>()V

    iput-object p1, p0, Lyads/ls4;->e:Lyads/nl5;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setHorizontalScrollbarOverlay(Z)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setScrollBarStyle(I)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p3

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p3

    const/16 v0, 0x64

    invoke-virtual {p3, v0}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p3

    invoke-virtual {p3, p4}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p3

    invoke-virtual {p3, p4}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p3

    invoke-static {}, Lyads/yg5;->a()Lyads/zg5;

    sget-object v0, Lyads/zg5;->k:Ljava/lang/Object;

    monitor-enter v0

    monitor-exit v0

    iget-object p2, p2, Lyads/xj6;->a:Lyads/zj6;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const/4 v0, 0x2

    if-eqz p2, :cond_4

    if-eq p2, p4, :cond_3

    const/4 v2, 0x3

    if-eq p2, v0, :cond_5

    if-ne p2, v2, :cond_2

    move v2, v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lme0;->e()V

    throw v1

    :cond_3
    move v2, p4

    goto :goto_0

    :cond_4
    const/4 v2, -0x1

    :cond_5
    :goto_0
    invoke-virtual {p3, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    const/16 p3, 0x15

    invoke-static {p3}, Lyads/za;->a(I)Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_6
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    new-instance p1, Lyads/ea3;

    invoke-direct {p1, p0}, Lyads/ea3;-><init>(Lyads/fa3;)V

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance p1, Lyads/aa3;

    invoke-direct {p1}, Lyads/aa3;-><init>()V

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    sget-boolean p0, Lyads/ls4;->j:Z

    if-nez p0, :cond_7

    sput-boolean p4, Lyads/ls4;->j:Z

    :cond_7
    return-void
.end method

.method public static final a(Lyads/ls4;)V
    .locals 0

    .line 41
    invoke-virtual {p0}, Lyads/ls4;->d()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 31
    iget-object v0, p0, Lyads/ls4;->e:Lyads/nl5;

    .line 32
    iget-object v1, v0, Lyads/nl5;->a:Ljava/lang/Object;

    .line 33
    monitor-enter v1

    .line 34
    :try_start_0
    iget-boolean v2, v0, Lyads/nl5;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 35
    monitor-exit v1

    return-void

    :cond_0
    const/4 v2, 0x1

    .line 36
    :try_start_1
    iput-boolean v2, v0, Lyads/nl5;->b:Z

    .line 37
    sget-object v0, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    monitor-exit v1

    .line 39
    invoke-static {p0}, Lyads/ls4;->a(Lyads/ls4;)V

    return-void

    :catchall_0
    move-exception p0

    .line 40
    monitor-exit v1

    throw p0
.end method

.method public a(I)V
    .locals 0

    .line 42
    iget-object p0, p0, Lyads/ls4;->g:Lyads/ga3;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lyads/ga3;->a(I)V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 43
    iget-object p0, p0, Lyads/ls4;->f:Lyads/ha3;

    if-eqz p0, :cond_0

    .line 44
    invoke-interface {p0, p2}, Lyads/ha3;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Lyads/ou4;)V
    .locals 1

    sget-object v0, Lyads/ou4;->c:Lyads/ou4;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lyads/ls4;->c:Lyads/ih6;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lyads/ih6;->a(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lyads/ls4;->d:Lyads/uu4;

    invoke-virtual {p1}, Lyads/uu4;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0, p1}, Lyads/ls4;->a(Z)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 45
    iget-boolean v0, p0, Lyads/ls4;->h:Z

    if-eq v0, p1, :cond_0

    .line 46
    iput-boolean p1, p0, Lyads/ls4;->h:Z

    .line 47
    iget-object p0, p0, Lyads/ls4;->f:Lyads/ha3;

    if-eqz p0, :cond_0

    .line 48
    invoke-interface {p0, p1}, Lyads/ha3;->a(Z)V

    :cond_0
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lyads/wj6;->a()Ljava/lang/String;

    move-result-object p0

    const-string v0, "<style type=\'text/css\'> \n  * { \n      -webkit-tap-highlight-color: rgba(0, 0, 0, 0) !important; \n      -webkit-focus-ring-color: rgba(0, 0, 0, 0) !important; \n      outline: none !important; \n    } \n</style> \n"

    invoke-static {v0, p0}, Lbj;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lyads/ls4;->setHtmlWebViewListener(Lyads/ha3;)V

    invoke-super {p0}, Lyads/qs;->c()V

    return-void
.end method

.method public abstract d()V
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lyads/ls4;->f:Lyads/ha3;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lyads/ha3;->a()V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyads/ls4;->i:Z

    iget-object v0, p0, Lyads/ls4;->d:Lyads/uu4;

    invoke-virtual {v0, p0}, Lyads/uu4;->a(Lyads/tu4;)V

    iget-object v0, p0, Lyads/ls4;->c:Lyads/ih6;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lyads/ih6;->a(Landroid/view/View;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lyads/ls4;->a(Z)V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lyads/ls4;->i:Z

    iget-object v0, p0, Lyads/ls4;->c:Lyads/ih6;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lyads/ih6;->a(Landroid/view/View;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lyads/ls4;->a(Z)V

    iget-object v0, p0, Lyads/ls4;->d:Lyads/uu4;

    invoke-virtual {v0, p0}, Lyads/uu4;->b(Lyads/tu4;)V

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onVisibilityChanged(Landroid/view/View;I)V

    iget-object p1, p0, Lyads/ls4;->c:Lyads/ih6;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lyads/ih6;->a(Landroid/view/View;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lyads/ls4;->a(Z)V

    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/webkit/WebView;->onWindowFocusChanged(Z)V

    iget-object p1, p0, Lyads/ls4;->c:Lyads/ih6;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lyads/ih6;->a(Landroid/view/View;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lyads/ls4;->a(Z)V

    return-void
.end method

.method public final setHtmlWebViewErrorListener(Lyads/ga3;)V
    .locals 0

    iput-object p1, p0, Lyads/ls4;->g:Lyads/ga3;

    return-void
.end method

.method public setHtmlWebViewListener(Lyads/ha3;)V
    .locals 0

    iput-object p1, p0, Lyads/ls4;->f:Lyads/ha3;

    return-void
.end method
