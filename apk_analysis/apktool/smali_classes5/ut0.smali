.class public final Lut0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/warefly/checkscan/presentation/webview/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/webview/WebViewActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lut0;->a:Lcom/warefly/checkscan/presentation/webview/WebViewActivity;

    return-void
.end method


# virtual methods
.method public final exitFromWebview()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object p0, p0, Lut0;->a:Lcom/warefly/checkscan/presentation/webview/WebViewActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final initQrScanner()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object p0, p0, Lut0;->a:Lcom/warefly/checkscan/presentation/webview/WebViewActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
