.class public final Lcom/warefly/checkscan/presentation/balance/managementAlfa/ManagementAlfaFullScreenDialog;
.super Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/balance/managementAlfa/ManagementAlfaFullScreenDialog$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog<",
        "Lcom/warefly/checkscan/databinding/DialogManagementAlfaBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebView;"
    }
.end annotation


# static fields
.field public static final e:Lcom/warefly/checkscan/presentation/balance/managementAlfa/ManagementAlfaFullScreenDialog$a;

.field public static final synthetic f:[Lze4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lze4<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final c:Lgl4;

.field public final d:Len2;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/balance/managementAlfa/ManagementAlfaFullScreenDialog;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/DialogManagementAlfaBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/balance/managementAlfa/ManagementAlfaFullScreenDialog;->f:[Lze4;

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/managementAlfa/ManagementAlfaFullScreenDialog$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/presentation/balance/managementAlfa/ManagementAlfaFullScreenDialog;->e:Lcom/warefly/checkscan/presentation/balance/managementAlfa/ManagementAlfaFullScreenDialog$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const v0, 0x7f0d007b

    invoke-direct {p0, v0}, Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;-><init>(I)V

    new-instance v0, Lgl4;

    const-class v1, Lcom/warefly/checkscan/databinding/DialogManagementAlfaBinding;

    invoke-direct {v0, v1}, Lgl4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/balance/managementAlfa/ManagementAlfaFullScreenDialog;->c:Lgl4;

    new-instance v0, Len2;

    instance-of v1, p0, Log4;

    const-class v2, Ls47;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Log4;

    invoke-interface {v1}, Log4;->getScope()Lze7;

    move-result-object v1

    invoke-static {v2, v1, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljg4;->b()Lhg4;

    move-result-object v1

    iget-object v1, v1, Lhg4;->c:Lbf7;

    iget-object v1, v1, Lbf7;->d:Lze7;

    invoke-static {v2}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v3}, Lze7;->e(Lzk1;Li36;Lkv6;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    check-cast v1, Ls47;

    invoke-direct {v0, v1}, Len2;-><init>(Ls47;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/balance/managementAlfa/ManagementAlfaFullScreenDialog;->d:Len2;

    return-void
.end method


# virtual methods
.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "CABINET_URL_KEY"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    :cond_1
    sget-object p2, Lcom/warefly/checkscan/presentation/balance/managementAlfa/ManagementAlfaFullScreenDialog;->f:[Lze4;

    const/4 v0, 0x0

    aget-object p2, p2, v0

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/balance/managementAlfa/ManagementAlfaFullScreenDialog;->c:Lgl4;

    invoke-virtual {v1, p0, p2}, Lgl4;->a(Landroidx/fragment/app/DialogFragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p2

    check-cast p2, Lcom/warefly/checkscan/databinding/DialogManagementAlfaBinding;

    iget-object v1, p2, Lcom/warefly/checkscan/databinding/DialogManagementAlfaBinding;->layoutRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x10

    invoke-static {v2, v1}, Lle9;->d(ILandroid/view/View;)V

    iget-object p2, p2, Lcom/warefly/checkscan/databinding/DialogManagementAlfaBinding;->webviewContent:Landroid/webkit/WebView;

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    const-string v0, "utf-8"

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    new-instance v0, Lpz4;

    invoke-direct {v0, p2}, Lpz4;-><init>(Landroid/webkit/WebView;)V

    const-string v1, "mobile"

    invoke-virtual {p2, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/managementAlfa/ManagementAlfaFullScreenDialog;->d:Len2;

    invoke-virtual {v0}, Len2;->a()Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    new-instance v1, Lqz4;

    invoke-direct {v1, p1, p0, v0}, Lqz4;-><init>(Ljava/lang/String;Lcom/warefly/checkscan/presentation/balance/managementAlfa/ManagementAlfaFullScreenDialog;Ljavax/net/ssl/TrustManagerFactory;)V

    invoke-virtual {p2, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v0, Lrz4;

    invoke-direct {v0, p0}, Lrz4;-><init>(Lcom/warefly/checkscan/presentation/balance/managementAlfa/ManagementAlfaFullScreenDialog;)V

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
