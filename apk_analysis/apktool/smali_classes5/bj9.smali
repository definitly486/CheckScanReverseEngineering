.class public final Lbj9;
.super Lfn2;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/warefly/checkscan/databinding/DialogWithdrawalBankBinding;

.field public final synthetic c:Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/dialogs/WithdrawalBankDialog;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/databinding/DialogWithdrawalBankBinding;Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/dialogs/WithdrawalBankDialog;Ljavax/net/ssl/TrustManagerFactory;)V
    .locals 0

    iput-object p1, p0, Lbj9;->b:Lcom/warefly/checkscan/databinding/DialogWithdrawalBankBinding;

    iput-object p2, p0, Lbj9;->c:Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/dialogs/WithdrawalBankDialog;

    invoke-direct {p0, p3}, Lfn2;-><init>(Ljavax/net/ssl/TrustManagerFactory;)V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p1, p0, Lbj9;->b:Lcom/warefly/checkscan/databinding/DialogWithdrawalBankBinding;

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/DialogWithdrawalBankBinding;->incldTryAgain:Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;

    invoke-virtual {p2}, Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lbj9;->c:Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/dialogs/WithdrawalBankDialog;

    iget-boolean p0, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/dialogs/WithdrawalBankDialog;->e:Z

    const/16 v0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p1, Lcom/warefly/checkscan/databinding/DialogWithdrawalBankBinding;->pbLoading:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lbj9;->b:Lcom/warefly/checkscan/databinding/DialogWithdrawalBankBinding;

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/DialogWithdrawalBankBinding;->pbLoading:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lbj9;->c:Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/dialogs/WithdrawalBankDialog;

    iput-boolean p2, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/dialogs/WithdrawalBankDialog;->e:Z

    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result p1

    const/4 p2, -0x6

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result p1

    const/4 p2, -0x2

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result p1

    const/4 p2, -0x8

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result p1

    const/16 p2, -0xc

    if-ne p1, p2, :cond_3

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result p1

    const/16 p2, -0xa

    if-ne p1, p2, :cond_4

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    iget-object p0, p0, Lbj9;->c:Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/dialogs/WithdrawalBankDialog;

    iput-boolean p1, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/dialogs/WithdrawalBankDialog;->e:Z

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 2

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "mailto"

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance p1, Landroid/content/Intent;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result p0

    return p0
.end method
