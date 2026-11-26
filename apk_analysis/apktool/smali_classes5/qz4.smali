.class public final Lqz4;
.super Lfn2;
.source "SourceFile"


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/warefly/checkscan/presentation/balance/managementAlfa/ManagementAlfaFullScreenDialog;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/warefly/checkscan/presentation/balance/managementAlfa/ManagementAlfaFullScreenDialog;Ljavax/net/ssl/TrustManagerFactory;)V
    .locals 0

    iput-object p1, p0, Lqz4;->b:Ljava/lang/String;

    iput-object p2, p0, Lqz4;->c:Lcom/warefly/checkscan/presentation/balance/managementAlfa/ManagementAlfaFullScreenDialog;

    invoke-direct {p0, p3}, Lfn2;-><init>(Ljavax/net/ssl/TrustManagerFactory;)V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p0, "javascript:(function backClick() {\n                        var btns = document.getElementsByClassName(\'button__text_1tapq button__stretchText_1tapq\');\n                        for (var i = 0, n = btns.length; i < n; i++) {\n                            btns[i].setAttribute(\'onClick\', \'Android.onClick()\');\n                            }\n                        })() "

    invoke-virtual {p1, p0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x43c2aa92

    const/4 v3, 0x1

    if-eq v1, v2, :cond_2

    const v2, 0x4f517f23

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "https://checkscan.org/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lqz4;->c:Lcom/warefly/checkscan/presentation/balance/managementAlfa/ManagementAlfaFullScreenDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return v3

    :cond_2
    const-string v1, "https://tryagain.checkscan.org/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    iget-object p0, p0, Lqz4;->b:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_3
    return v3

    :cond_4
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result p0

    return p0
.end method
