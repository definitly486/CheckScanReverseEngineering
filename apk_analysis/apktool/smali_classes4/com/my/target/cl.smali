.class public final Lcom/my/target/cl;
.super Lcom/my/target/h1;
.source "SourceFile"


# instance fields
.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Llga;Ltn9;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p4}, Lcom/my/target/h1;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/my/target/h1;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p4

    if-eqz p4, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p4, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p4, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {p4, v0}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    invoke-virtual {p4, v0}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    invoke-virtual {p4, v0}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    :cond_0
    iput-object p1, p0, Lcom/my/target/cl;->e:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/my/target/h1;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p0, "WebFormView: WebView is null, can\'t add handlers"

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ly14;->u(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0, p3}, Lcom/my/target/h1;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    const-string p0, "AndroidBridge"

    invoke-virtual {p1, p2, p0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
