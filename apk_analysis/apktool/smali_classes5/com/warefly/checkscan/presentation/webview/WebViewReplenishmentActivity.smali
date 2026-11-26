.class public final Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentActivity;
.super Leh5;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/webview/WebViewReplenishment;


# static fields
.field public static final synthetic g:I


# instance fields
.field public d:Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;

.field public e:Z

.field public final f:Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentActivity$a;

.field public presenter:Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentPresenter;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Leh5;-><init>()V

    new-instance v0, Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentActivity$a;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentActivity$a;-><init>(Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentActivity;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentActivity;->f:Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentActivity$a;

    return-void
.end method


# virtual methods
.method public final loadReplenishment(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentActivity;->s()Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;->btnBack:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Llb7;

    new-instance v2, Lnp5;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lnp5;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v1, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentActivity;->s()Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;->btnCloseWeb:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Llb7;

    new-instance v2, Lop5;

    invoke-direct {v2, p0, v3}, Lop5;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v1, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentActivity;->s()Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;->webviewContent:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    const/high16 v2, 0x2000000

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setSafeBrowsingEnabled(Z)V

    new-instance v1, Leh9;

    invoke-direct {v1, p0}, Leh9;-><init>(Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v1, Lfh9;

    invoke-direct {v1, p0}, Lfh9;-><init>(Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentActivity;->s()Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;->btnShare:Landroid/widget/ImageView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Llb7;

    new-instance v2, Lgh9;

    invoke-direct {v2, v0, p1}, Lgh9;-><init>(Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Leh5;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d02ac

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const p1, 0x1020002

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    const/16 v1, 0xf

    invoke-static {v1, p1, v0}, Loi9;->a(ILandroid/view/View;Z)V

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentActivity;->f:Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentActivity$a;

    invoke-virtual {p1, p0, v0}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentActivity;->d:Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentActivity;->s()Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;->tvLabel:Landroid/widget/TextView;

    const v0, 0x7f14056a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentActivity;->s()Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;->webviewContent:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentActivity;->d:Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;

    invoke-super {p0}, Leh5;->onDestroy()V

    return-void
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentActivity;->e:Z

    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Leh5;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentActivity;->e:Z

    return-void
.end method

.method public final openUrl(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final openUrlInCustomTab(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Li72;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentPresenter;
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentPresenter;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v1, Lca0;

    const/4 v2, 0x0

    invoke-static {v1, p0, v2, v2}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lca0;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentPresenter;-><init>(Lca0;)V

    return-object v0
.end method

.method public final s()Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentActivity;->d:Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "Required value was null."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final showSomeError()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x7f140610

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p0}, Loz1;->h(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method
