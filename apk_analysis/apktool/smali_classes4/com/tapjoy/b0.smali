.class public final Lcom/tapjoy/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/TJOfferwallDiscoverRequestListener;


# instance fields
.field public final synthetic a:Lcom/tapjoy/TJOfferwallDiscoverView;


# direct methods
.method public constructor <init>(Lcom/tapjoy/TJOfferwallDiscoverView;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/b0;->a:Lcom/tapjoy/TJOfferwallDiscoverView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onContentRequestFailure(Lcom/tapjoy/TJError;)V
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/b0;->a:Lcom/tapjoy/TJOfferwallDiscoverView;

    iget-object v0, v0, Lcom/tapjoy/TJOfferwallDiscoverView;->c:Lcom/tapjoy/TJOfferwallDiscoverListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/tapjoy/TJOfferwallDiscoverListener;->requestFailure(Lcom/tapjoy/TJError;)V

    :cond_0
    iget-object p0, p0, Lcom/tapjoy/b0;->a:Lcom/tapjoy/TJOfferwallDiscoverView;

    invoke-virtual {p0}, Lcom/tapjoy/TJOfferwallDiscoverView;->clearContent()V

    return-void
.end method

.method public final onContentRequestSuccess(Lcom/tapjoy/internal/s2;)V
    .locals 6

    iget-object p0, p0, Lcom/tapjoy/b0;->a:Lcom/tapjoy/TJOfferwallDiscoverView;

    iput-object p1, p0, Lcom/tapjoy/TJOfferwallDiscoverView;->d:Lcom/tapjoy/internal/s2;

    iget-object v0, p0, Lcom/tapjoy/TJOfferwallDiscoverView;->a:Lcom/tapjoy/TJWebView;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tapjoy/TapjoyConnectCore;->getPlacementURL()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p1, Lcom/tapjoy/internal/s2;->b:Ljava/lang/String;

    if-eqz p0, :cond_0

    :goto_0
    move-object v2, p0

    goto :goto_1

    :cond_0
    const-string p0, ""

    goto :goto_0

    :goto_1
    const-string v4, "charset=UTF-8"

    const/4 v5, 0x0

    const-string v3, "text/html"

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p0, "Webview is null"

    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    return-void
.end method
