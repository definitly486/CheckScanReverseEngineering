.class public final Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog$d;
.super Lfn2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;Ljava/lang/String;Ljavax/net/ssl/TrustManagerFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog$d;->b:Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog$d;->c:Ljava/lang/String;

    invoke-direct {p0, p3}, Lfn2;-><init>(Ljavax/net/ssl/TrustManagerFactory;)V

    return-void
.end method


# virtual methods
.method public final doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 2

    if-eqz p2, :cond_1

    const-string v0, "successDelivery"

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog$d;->b:Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;

    iget-object v0, v0, Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;->presenter:Lcom/warefly/checkscan/presentation/upridWeb/presenter/UpridWebPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/warefly/checkscan/presentation/upridWeb/presenter/UpridWebPresenter;->sendLink(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p0, "javascript:(function backClick() {\n                        var btns = document.getElementsByClassName(\'button__component_1tapq button__ghost_1tapq button__m_1tapq button__component_1b4rh button__ghost_1b4rh\');\n                        for (var i = 0, n = btns.length; i < n; i++) {\n                            btns[i].setAttribute(\'onClick\', \'Android.onClick()\');\n                            }\n                        })() "

    invoke-virtual {p1, p0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 6

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cardissued.checkscan.org/"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    iget-object v4, p0, Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog$d;->b:Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;

    if-eqz v2, :cond_1

    new-instance p0, Lph;

    const/4 p1, 0x3

    invoke-direct {p0, v4, p1}, Lph;-><init>(Ljava/lang/Object;I)V

    sget-object p1, Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;->f:Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog$a;

    invoke-virtual {v4, v1, p0}, Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;->f(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-object v0

    :cond_1
    const-string v2, "reject_userexists.checkscan.org/"

    invoke-static {v1, v2, v3}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    const/4 v5, 0x4

    if-eqz v2, :cond_2

    new-instance p0, Lxl;

    invoke-direct {p0, v4, v5}, Lxl;-><init>(Ljava/lang/Object;I)V

    sget-object p1, Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;->f:Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog$a;

    invoke-virtual {v4, v1, p0}, Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;->f(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-object v0

    :cond_2
    const-string v2, "reject_inappropriate.checkscan.org/"

    invoke-static {v1, v2, v3}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance p0, Lrh;

    invoke-direct {p0, v4, v5}, Lrh;-><init>(Ljava/lang/Object;I)V

    sget-object p1, Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;->f:Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog$a;

    invoke-virtual {v4, v1, p0}, Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;->f(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-object v0

    :cond_3
    const-string v2, "tryagain.checkscan.org/"

    invoke-static {v1, v2, v3}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object p2, Lkd$j$b$i;->e:Lkd$j$b$i;

    invoke-virtual {p2}, Lkd;->a()V

    new-instance p2, Lw89;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog$d;->c:Ljava/lang/String;

    invoke-direct {p2, v3, p1, p0}, Lw89;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sget-object p0, Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;->f:Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog$a;

    invoke-virtual {v4, v1, p2}, Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;->f(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-object v0

    :cond_4
    const-string v2, "https://checkscan.org/"

    invoke-static {v1, v2, v3}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    const/4 v5, 0x1

    if-eqz v2, :cond_5

    sget-object p0, Lkd$j$b$j;->e:Lkd$j$b$j;

    invoke-virtual {p0}, Lkd;->a()V

    new-instance p0, Ls76;

    invoke-direct {p0, v4, v5}, Ls76;-><init>(Ljava/lang/Object;I)V

    sget-object p1, Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;->f:Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog$a;

    invoke-virtual {v4, v1, p0}, Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;->f(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-object v0

    :cond_5
    sget-object v2, Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;->i:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object p0, Lkd$j$b$g;->e:Lkd$j$b$g;

    invoke-virtual {p0}, Lkd;->a()V

    new-instance p0, Lrc6;

    const/4 p1, 0x2

    invoke-direct {p0, v4, p1}, Lrc6;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v4, v1, p0}, Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;->f(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-object v0

    :cond_6
    sget-object v2, Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;->j:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object p0, Lkd$j$b$d;->e:Lkd$j$b$d;

    invoke-virtual {p0}, Lkd;->a()V

    new-instance p0, Lv65;

    invoke-direct {p0, v4, v5}, Lv65;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v4, v1, p0}, Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;->f(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-object v0

    :cond_7
    const-string v2, "https://ordered_card_userexists.checkscan.org"

    invoke-static {v1, v2, v3}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance p0, Lx89;

    invoke-direct {p0, v4}, Lx89;-><init>(Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;)V

    invoke-virtual {v4, v1, p0}, Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;->f(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-object v0

    :cond_8
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object p0

    return-object p0
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_2

    const-string v2, "intent:"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lra8;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog$d;->b:Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;

    sget-object p1, Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;->f:Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog$a;

    const/4 p1, 0x1

    :try_start_0
    invoke-static {v1, p1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SEND"

    invoke-static {v1, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p2, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p2

    :cond_1
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return p1

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result p0

    return p0
.end method
