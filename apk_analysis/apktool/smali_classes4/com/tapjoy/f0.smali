.class public final Lcom/tapjoy/f0;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/tapjoy/TJSplitWebView;


# direct methods
.method public constructor <init>(Lcom/tapjoy/TJSplitWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/f0;->a:Lcom/tapjoy/TJSplitWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    iget-object p1, p0, Lcom/tapjoy/f0;->a:Lcom/tapjoy/TJSplitWebView;

    iget-object p1, p1, Lcom/tapjoy/TJSplitWebView;->p:Landroid/widget/ProgressBar;

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object p0, p0, Lcom/tapjoy/f0;->a:Lcom/tapjoy/TJSplitWebView;

    invoke-virtual {p0}, Lcom/tapjoy/TJSplitWebView;->isFirstOrLastPage()V

    return-void
.end method
