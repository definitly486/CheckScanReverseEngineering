.class public final Lcom/warefly/checkscan/presentation/webview/WebViewActivity$b;
.super Landroidx/activity/OnBackPressedCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/webview/WebViewActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/warefly/checkscan/presentation/webview/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/webview/WebViewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/webview/WebViewActivity$b;->c:Lcom/warefly/checkscan/presentation/webview/WebViewActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final handleOnBackPressed()V
    .locals 3

    sget v0, Lcom/warefly/checkscan/presentation/webview/WebViewActivity;->f:I

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/webview/WebViewActivity$b;->c:Lcom/warefly/checkscan/presentation/webview/WebViewActivity;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/webview/WebViewActivity;->r()Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;->webviewContent:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/webview/WebViewActivity;->r()Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;->webviewContent:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->goBack()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "SIMPLE_URL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f140304

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/warefly/checkscan/presentation/webview/WebViewActivity;->s(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lj59;->a:Lj59;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/warefly/checkscan/presentation/CiceroneActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
