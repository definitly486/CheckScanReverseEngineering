.class public final Lpg9;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/warefly/checkscan/presentation/electrocheque/view/WebViewFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/electrocheque/view/WebViewFragment;)V
    .locals 0

    iput-object p1, p0, Lpg9;->a:Lcom/warefly/checkscan/presentation/electrocheque/view/WebViewFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p0, p0, Lpg9;->a:Lcom/warefly/checkscan/presentation/electrocheque/view/WebViewFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/electrocheque/view/WebViewFragment;->workWithScript()V

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 6

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "intent"

    invoke-static {v2, v3, v1}, Lra8;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x1

    iget-object v4, p0, Lpg9;->a:Lcom/warefly/checkscan/presentation/electrocheque/view/WebViewFragment;

    if-eqz v2, :cond_2

    invoke-virtual {v4}, Lcom/warefly/checkscan/presentation/electrocheque/view/WebViewFragment;->o()Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter;->openBonuses()V

    return v3

    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "https"

    invoke-static {v2, v5, v1}, Lra8;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "http"

    invoke-static {v2, v5, v1}, Lra8;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result p0

    return p0

    :cond_4
    :goto_1
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/warefly/checkscan/presentation/electrocheque/view/WebViewFragment;->h:[Lze4;

    const-string p1, "/successCheckscan"

    invoke-static {p0, p1, v1}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p0, Lcom/warefly/checkscan/presentation/electrocheque/view/CongratulationDialog;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p2, 0x7f140260

    invoke-virtual {v4, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1, p2}, Lcom/warefly/checkscan/presentation/electrocheque/view/CongratulationDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    invoke-virtual {v4}, Lcom/warefly/checkscan/presentation/electrocheque/view/WebViewFragment;->workWithScript()V

    invoke-virtual {v4}, Lcom/warefly/checkscan/presentation/electrocheque/view/WebViewFragment;->o()Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter;->sendIsElectroUser(Z)V

    invoke-virtual {v4}, Lcom/warefly/checkscan/presentation/electrocheque/view/WebViewFragment;->o()Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter;->setUserRegistered(Z)V

    return v1

    :cond_5
    const-string p1, "/denyCheckscan"

    invoke-static {p0, p1, v1}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {v4}, Lcom/warefly/checkscan/presentation/electrocheque/view/WebViewFragment;->o()Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter;->sendIsElectroUser(Z)V

    :cond_6
    :goto_2
    return v1
.end method
