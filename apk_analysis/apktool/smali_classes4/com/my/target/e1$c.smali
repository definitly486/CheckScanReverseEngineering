.class public final Lcom/my/target/e1$c;
.super Lyy9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/e1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/util/List;

.field public final synthetic b:Lcom/my/target/e1;


# direct methods
.method public constructor <init>(Lcom/my/target/e1;)V
    .locals 1

    iput-object p1, p0, Lcom/my/target/e1$c;->b:Lcom/my/target/e1;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const/4 p1, -0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, -0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/my/target/e1$c;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/my/target/e1$c;->b:Lcom/my/target/e1;

    iget-boolean v1, v0, Lcom/my/target/e1;->i:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/my/target/e1;->i:Z

    const-string v1, "BannerWebView$MyWebViewClient: Page loaded"

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p0, v0, Lcom/my/target/e1;->f:Lcom/my/target/e1$a;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/my/target/e1$a;->c(Landroid/webkit/WebView;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "BannerWebView$MyWebViewClient: Load page started"

    invoke-static {v0, v1}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lcom/my/target/e1$c;->b:Lcom/my/target/e1;

    iget-object p0, p0, Lcom/my/target/e1;->g:Lcom/my/target/e1$h;

    if-nez p0, :cond_0

    return-void

    :cond_0
    check-cast p0, Lcom/my/target/common/views/Html5View$g;

    iget-object p0, p0, Lcom/my/target/common/views/Html5View$g;->a:Lcom/my/target/common/views/Html5View;

    const/4 p1, 0x1

    iput p1, p0, Lcom/my/target/common/views/Html5View;->e:I

    throw v0
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 145
    const-string v0, ", description - "

    const-string v1, ", url - "

    .line 146
    const-string v2, "BannerWebView$MyWebViewClient: Load failed. Error - "

    invoke-static {p2, v2, v0, p3, v1}, Lng;->e(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    .line 147
    invoke-static {v0, p4, v1}, Li01;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object p0, p0, Lcom/my/target/e1$c;->b:Lcom/my/target/e1;

    iget-object p1, p0, Lcom/my/target/e1;->f:Lcom/my/target/e1$a;

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    const-string p3, "unknown JS error"

    .line 151
    :goto_0
    invoke-interface {p1, p3}, Lcom/my/target/e1$a;->a(Ljava/lang/String;)V

    .line 152
    :cond_1
    iget-object p0, p0, Lcom/my/target/e1;->h:Lcom/my/target/e1$g;

    if-eqz p0, :cond_3

    .line 153
    check-cast p0, Lcom/my/target/common/views/Html5View$f;

    .line 154
    iget-object p0, p0, Lcom/my/target/common/views/Html5View$f;->a:Lcom/my/target/common/views/Html5View;

    iget p1, p0, Lcom/my/target/common/views/Html5View;->e:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    goto :goto_1

    .line 155
    :cond_2
    iput p2, p0, Lcom/my/target/common/views/Html5View;->e:I

    .line 156
    throw v1

    :cond_3
    :goto_1
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 5

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result p3

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ", description - "

    const-string v3, ", url - "

    const-string v4, "BannerWebView$MyWebViewClient: Load failed. Error - "

    invoke-static {p3, v4, v2, p1, v3}, Lng;->e(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v2, v1, v0}, Li01;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/my/target/e1$c;->b:Lcom/my/target/e1;

    iget-object v2, v1, Lcom/my/target/e1;->f:Lcom/my/target/e1$a;

    if-eqz v2, :cond_2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, "Unknown JS error"

    :goto_1
    invoke-interface {v2, p1}, Lcom/my/target/e1$a;->a(Ljava/lang/String;)V

    :cond_2
    iget-object p1, v1, Lcom/my/target/e1;->h:Lcom/my/target/e1$g;

    if-eqz p1, :cond_8

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    const-string v4, ".html"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v2

    goto :goto_2

    :cond_3
    move p1, v3

    :goto_2
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object p2

    const-string v4, "Accept"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_4

    const-string v4, "text/html"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_3

    :cond_4
    move v2, v3

    :goto_3
    if-nez p1, :cond_6

    if-eqz v2, :cond_5

    goto :goto_4

    :cond_5
    iget-object p0, p0, Lcom/my/target/e1$c;->a:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    :cond_6
    :goto_4
    iget-object p0, v1, Lcom/my/target/e1;->h:Lcom/my/target/e1$g;

    check-cast p0, Lcom/my/target/common/views/Html5View$f;

    iget-object p0, p0, Lcom/my/target/common/views/Html5View$f;->a:Lcom/my/target/common/views/Html5View;

    iget p1, p0, Lcom/my/target/common/views/Html5View;->e:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_7

    goto :goto_5

    :cond_7
    iput p2, p0, Lcom/my/target/common/views/Html5View;->e:I

    throw v0

    :cond_8
    :goto_5
    return-void
.end method

.method public final onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getReasonPhrase()Ljava/lang/String;

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    iget-object p0, p0, Lcom/my/target/e1$c;->b:Lcom/my/target/e1;

    iget-object p1, p0, Lcom/my/target/e1;->h:Lcom/my/target/e1$g;

    if-eqz p1, :cond_1

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/my/target/e1;->h:Lcom/my/target/e1$g;

    check-cast p0, Lcom/my/target/common/views/Html5View$f;

    iget-object p0, p0, Lcom/my/target/common/views/Html5View$f;->a:Lcom/my/target/common/views/Html5View;

    iget p1, p0, Lcom/my/target/common/views/Html5View;->e:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iput p2, p0, Lcom/my/target/common/views/Html5View;->e:I

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 0

    const-string p1, "WebView crashed"

    const/4 p2, 0x0

    invoke-static {p2, p1}, Ly14;->u(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/my/target/e1$c;->b:Lcom/my/target/e1;

    iget-object p0, p0, Lcom/my/target/e1;->f:Lcom/my/target/e1$a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/my/target/e1$a;->a()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final onScaleChanged(Landroid/webkit/WebView;FF)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onScaleChanged(Landroid/webkit/WebView;FF)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "BannerWebView$MyWebViewClient: Scale new - "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", old - "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 1

    iget-object p0, p0, Lcom/my/target/e1$c;->b:Lcom/my/target/e1;

    iget-boolean p1, p0, Lcom/my/target/e1;->j:Z

    const/4 v0, 0x1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/my/target/e1;->f:Lcom/my/target/e1$a;

    if-eqz p2, :cond_2

    invoke-interface {p2, p1}, Lcom/my/target/e1$a;->b(Ljava/lang/String;)V

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/my/target/e1;->j:Z

    return v0
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .line 30
    iget-object p0, p0, Lcom/my/target/e1$c;->b:Lcom/my/target/e1;

    iget-boolean p1, p0, Lcom/my/target/e1;->j:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    iget-object p1, p0, Lcom/my/target/e1;->f:Lcom/my/target/e1$a;

    if-eqz p1, :cond_1

    .line 32
    invoke-interface {p1, p2}, Lcom/my/target/e1$a;->b(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    .line 33
    iput-boolean p1, p0, Lcom/my/target/e1;->j:Z

    :cond_2
    :goto_0
    return v0
.end method
