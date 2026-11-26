.class public final Lcom/my/target/e1;
.super Lcom/my/target/h1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/e1$f;,
        Lcom/my/target/e1$b;,
        Lcom/my/target/e1$c;,
        Lcom/my/target/e1$d;,
        Lcom/my/target/e1$a;,
        Lcom/my/target/e1$e;,
        Lcom/my/target/e1$h;,
        Lcom/my/target/e1$g;
    }
.end annotation


# static fields
.field public static final synthetic k:I


# instance fields
.field public final e:Lcom/my/target/e1$f;

.field public f:Lcom/my/target/e1$a;

.field public g:Lcom/my/target/e1$h;

.field public h:Lcom/my/target/e1$g;

.field public i:Z

.field public j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/my/target/h1;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/my/target/e1$f;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/my/target/e1$f;-><init>(Landroid/content/Context;Lcom/my/target/e1;)V

    iput-object p1, p0, Lcom/my/target/e1;->e:Lcom/my/target/e1$f;

    new-instance v0, Lcom/my/target/e1$b;

    invoke-direct {v0}, Landroid/webkit/WebChromeClient;-><init>()V

    new-instance v1, Lcom/my/target/e1$c;

    invoke-direct {v1, p0}, Lcom/my/target/e1$c;-><init>(Lcom/my/target/e1;)V

    new-instance v2, Lml0;

    const/4 v3, 0x6

    invoke-direct {v2, p0, v3}, Lml0;-><init>(Ljava/lang/Object;I)V

    iput-object v2, p1, Lcom/my/target/e1$f;->b:Lml0;

    new-instance p1, Lrk7;

    const/4 v2, 0x1

    invoke-direct {p1, p0, v2}, Lrk7;-><init>(Landroid/widget/FrameLayout;I)V

    invoke-virtual {p0, p1}, Lcom/my/target/h1;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/my/target/h1;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p0, p1}, Lcom/my/target/h1;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0}, Lcom/my/target/h1;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {v3, p1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {v3, p1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {v3, p1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    invoke-virtual {v3, p1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    invoke-virtual {v3, p1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/my/target/h1;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-virtual {p0, v1}, Lcom/my/target/h1;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method


# virtual methods
.method public setBannerWebViewListener(Lcom/my/target/e1$a;)V
    .locals 0

    iput-object p1, p0, Lcom/my/target/e1;->f:Lcom/my/target/e1$a;

    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/my/target/e1;->i:Z

    iput-boolean v0, p0, Lcom/my/target/e1;->j:Z

    const-string v2, "https://ad.mail.ru/"

    const-string v4, "text/html"

    const-string v5, "UTF-8"

    iget-object v1, p0, Lcom/my/target/h1;->b:Landroid/webkit/WebView;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v6, 0x0

    move-object v3, p1

    :try_start_0
    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {p0}, Lcom/my/target/h1;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public setForceMediaPlayback(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/my/target/h1;->getWebView()Landroid/webkit/WebView;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p0

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    return-void
.end method

.method public setOnLayoutListener(Lcom/my/target/e1$d;)V
    .locals 0

    return-void
.end method

.method public setUserMotionEventListener(Lcom/my/target/e1$e;)V
    .locals 0

    iget-object p0, p0, Lcom/my/target/e1;->e:Lcom/my/target/e1$f;

    iput-object p1, p0, Lcom/my/target/e1$f;->c:Lcom/my/target/e1$e;

    return-void
.end method

.method public setWebViewLoadingErrorListener(Lcom/my/target/e1$g;)V
    .locals 0

    iput-object p1, p0, Lcom/my/target/e1;->h:Lcom/my/target/e1$g;

    return-void
.end method

.method public setWebViewLoadingStartListener(Lcom/my/target/e1$h;)V
    .locals 0

    iput-object p1, p0, Lcom/my/target/e1;->g:Lcom/my/target/e1$h;

    return-void
.end method
