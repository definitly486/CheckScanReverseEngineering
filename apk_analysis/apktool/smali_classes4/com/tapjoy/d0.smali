.class public final Lcom/tapjoy/d0;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/tapjoy/TJOfferwallDiscoverView;


# direct methods
.method public constructor <init>(Lcom/tapjoy/TJOfferwallDiscoverView;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/d0;->a:Lcom/tapjoy/TJOfferwallDiscoverView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tapjoy/d0;->a:Lcom/tapjoy/TJOfferwallDiscoverView;

    iget-object p1, p1, Lcom/tapjoy/TJOfferwallDiscoverView;->b:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-virtual {p1}, Lcom/tapjoy/TJAdUnitJSBridge;->flushMessageQueue()V

    iget-object p1, p0, Lcom/tapjoy/d0;->a:Lcom/tapjoy/TJOfferwallDiscoverView;

    iget-boolean p2, p1, Lcom/tapjoy/TJOfferwallDiscoverView;->f:Z

    const/4 v0, 0x1

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isLaidOut()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tapjoy/d0;->a:Lcom/tapjoy/TJOfferwallDiscoverView;

    iget-object p1, p1, Lcom/tapjoy/TJOfferwallDiscoverView;->b:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-virtual {p1}, Lcom/tapjoy/TJAdUnitJSBridge;->display()V

    iget-object p1, p0, Lcom/tapjoy/d0;->a:Lcom/tapjoy/TJOfferwallDiscoverView;

    iput-boolean v0, p1, Lcom/tapjoy/TJOfferwallDiscoverView;->f:Z

    :cond_0
    iget-object p0, p0, Lcom/tapjoy/d0;->a:Lcom/tapjoy/TJOfferwallDiscoverView;

    iput-boolean v0, p0, Lcom/tapjoy/TJOfferwallDiscoverView;->g:Z

    return-void
.end method
