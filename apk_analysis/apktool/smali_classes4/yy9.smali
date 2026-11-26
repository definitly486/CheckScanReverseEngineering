.class public abstract Lyy9;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# virtual methods
.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    sget-object p0, Ly14;->k:Lpw9;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    const-string p0, "MyTargetWebViewClient: can\'t verify ssl Error \u2013 certData is null"

    invoke-static {p1, p0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    return-void

    :cond_0
    iget-object p0, p0, Lpw9;->b:Ljavax/net/ssl/TrustManagerFactory;

    invoke-static {p3, p0}, Lpn9;->a(Landroid/net/http/SslError;Ljavax/net/ssl/TrustManagerFactory;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void

    :cond_1
    const-string p0, "MyTargetWebViewClient: ssl error not verified"

    invoke-static {p1, p0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    return-void
.end method
