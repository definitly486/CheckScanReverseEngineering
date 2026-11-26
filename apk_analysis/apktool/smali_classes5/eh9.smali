.class public final Leh9;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentActivity;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentActivity;)V
    .locals 0

    iput-object p1, p0, Leh9;->a:Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://failurepayment.checkscan.org/"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    iget-object v2, p0, Leh9;->a:Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentActivity;

    if-eqz v1, :cond_1

    new-instance p0, Leh9$a;

    invoke-direct {p0, v2}, Leh9$a;-><init>(Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentActivity;)V

    sget p1, Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentActivity;->g:I

    iget-boolean p1, v2, Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentActivity;->e:Z

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Leh9$a;->invoke()Ljava/lang/Object;

    return-object v0

    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    const-string v4, "failurepayment.checkscan.org"

    invoke-static {v1, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    if-eqz p2, :cond_3

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v0

    :goto_2
    const-string v4, "successpayment.checkscan.org"

    invoke-static {v1, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    if-eqz p2, :cond_5

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    goto :goto_3

    :cond_5
    move-object v1, v0

    :goto_3
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "https://successpayment.checkscan.org/"

    invoke-static {v1, v4, v3}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance p0, Leh9$c;

    invoke-direct {p0, v2}, Leh9$c;-><init>(Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentActivity;)V

    sget p1, Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentActivity;->g:I

    iget-boolean p1, v2, Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentActivity;->e:Z

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Leh9$c;->invoke()Ljava/lang/Object;

    return-object v0

    :cond_6
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object p0

    return-object p0

    :cond_7
    :goto_4
    new-instance p0, Leh9$b;

    invoke-direct {p0, v2}, Leh9$b;-><init>(Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentActivity;)V

    sget p1, Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentActivity;->g:I

    iget-boolean p1, v2, Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentActivity;->e:Z

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Leh9$b;->invoke()Ljava/lang/Object;

    :cond_8
    return-object v0
.end method
