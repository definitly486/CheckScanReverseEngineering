.class public final Llg9;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field public a:Landroidx/appcompat/app/AlertDialog;

.field public b:Ljava/lang/String;

.field public final synthetic c:Lcom/warefly/checkscan/presentation/webview/WebViewActivity;

.field public final synthetic d:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/webview/WebViewActivity;Landroid/webkit/WebView;)V
    .locals 0

    iput-object p1, p0, Llg9;->c:Lcom/warefly/checkscan/presentation/webview/WebViewActivity;

    iput-object p2, p0, Llg9;->d:Landroid/webkit/WebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p1, p0, Llg9;->b:Ljava/lang/String;

    iget-object p2, p0, Llg9;->c:Lcom/warefly/checkscan/presentation/webview/WebViewActivity;

    if-nez p1, :cond_0

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "QR_DATA"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const v0, 0x7f140305

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, v0, p1}, Lcom/warefly/checkscan/presentation/webview/WebViewActivity;->s(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Llg9;->b:Ljava/lang/String;

    :cond_0
    iget-object p0, p2, Lcom/warefly/checkscan/presentation/webview/WebViewActivity;->d:Ljava/lang/String;

    if-eqz p0, :cond_1

    const-string p1, ""

    invoke-virtual {p2, p0, p1}, Lcom/warefly/checkscan/presentation/webview/WebViewActivity;->s(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 6

    iget-object v0, p0, Llg9;->a:Landroidx/appcompat/app/AlertDialog;

    if-nez v0, :cond_2

    iget-object v0, p0, Llg9;->c:Lcom/warefly/checkscan/presentation/webview/WebViewActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "SHOP_APP_PACKAGE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Llg9;->d:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "SHOP_APP_NAME"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v4, ""

    :cond_1
    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const v5, 0x7f1404b7

    invoke-virtual {v1, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Llg9$a;

    invoke-direct {v4, v0, v2}, Llg9$a;-><init>(Lcom/warefly/checkscan/presentation/webview/WebViewActivity;Landroid/content/Intent;)V

    invoke-static {v3, v1, v4}, Lfw1;->a(Landroid/content/Context;Ljava/lang/String;Lll3;)Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Llg9;->a:Landroidx/appcompat/app/AlertDialog;

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result p0

    return p0
.end method
