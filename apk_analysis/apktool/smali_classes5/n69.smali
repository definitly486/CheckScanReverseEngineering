.class public final Ln69;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln69$a;
    }
.end annotation


# instance fields
.field public final a:Ln69$a;


# direct methods
.method public constructor <init>(Ln69$a;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    iput-object p1, p0, Ln69;->a:Ln69$a;

    return-void
.end method


# virtual methods
.method public final onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 2

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, p2

    :goto_0
    if-nez p3, :cond_1

    goto :goto_2

    :cond_1
    if-eqz p4, :cond_2

    iget-object v0, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    move-object v0, p2

    :goto_1
    instance-of v1, v0, Landroid/webkit/WebView$WebViewTransport;

    if-eqz v1, :cond_3

    move-object p2, v0

    check-cast p2, Landroid/webkit/WebView$WebViewTransport;

    :cond_3
    if-nez p2, :cond_4

    :goto_2
    const/4 p0, 0x0

    return p0

    :cond_4
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    new-instance p3, Ln69$b;

    invoke-direct {p3, p0, p1, v0}, Ln69$b;-><init>(Ln69;Landroid/webkit/WebView;Landroid/webkit/WebView;)V

    invoke-virtual {v0, p3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-virtual {p2, v0}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    const/4 p0, 0x1

    return p0
.end method

.method public final onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 0

    iget-object p0, p0, Ln69;->a:Ln69$a;

    invoke-interface {p0, p1, p2}, Ln69$a;->f(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    return-void
.end method

.method public final onHideCustomView()V
    .locals 0

    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    iget-object p0, p0, Ln69;->a:Ln69$a;

    invoke-interface {p0}, Ln69$a;->h()V

    return-void
.end method

.method public final onPermissionRequest(Landroid/webkit/PermissionRequest;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Ln69;->a:Ln69$a;

    invoke-interface {v0, p1}, Ln69$a;->b(Landroid/webkit/PermissionRequest;)V

    sget-object v0, Lj59;->a:Lj59;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onPermissionRequest(Landroid/webkit/PermissionRequest;)V

    :cond_1
    return-void
.end method

.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    iget-object p0, p0, Ln69;->a:Ln69$a;

    invoke-interface {p0, p2}, Ln69$a;->g(I)V

    return-void
.end method

.method public final onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    invoke-static {p2}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    iget-object p0, p0, Ln69;->a:Ln69$a;

    invoke-interface {p0, p2}, Ln69$a;->e(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Ln69;->a:Ln69$a;

    invoke-interface {p0, p1, p2}, Ln69$a;->a(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    return-void

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    return-void
.end method

.method public final onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Ln69;->a:Ln69$a;

    invoke-interface {p0, p2, p3}, Ln69$a;->c(Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
