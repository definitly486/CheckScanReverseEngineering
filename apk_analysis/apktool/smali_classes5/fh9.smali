.class public final Lfh9;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentActivity;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentActivity;)V
    .locals 0

    iput-object p1, p0, Lfh9;->a:Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    new-instance p1, Lfh9$a;

    iget-object p0, p0, Lfh9;->a:Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentActivity;

    invoke-direct {p1, p2, p0}, Lfh9$a;-><init>(ILcom/warefly/checkscan/presentation/webview/WebViewReplenishmentActivity;)V

    sget p2, Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentActivity;->g:I

    iget-boolean p0, p0, Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentActivity;->e:Z

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lfh9$a;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method
