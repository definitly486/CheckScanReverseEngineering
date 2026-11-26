.class public final Lcom/warefly/checkscan/presentation/electrocheque/view/WebViewFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentView;"
    }
.end annotation


# static fields
.field public static final synthetic h:[Lze4;
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
.field public final f:I

.field public final g:Lol4;

.field public presenter:Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/electrocheque/view/WebViewFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/electrocheque/view/WebViewFragment;->h:[Lze4;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    const v0, 0x7f0d02ac

    iput v0, p0, Lcom/warefly/checkscan/presentation/electrocheque/view/WebViewFragment;->f:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/electrocheque/view/WebViewFragment;->g:Lol4;

    return-void
.end method


# virtual methods
.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/presentation/electrocheque/view/WebViewFragment;->f:I

    return p0
.end method

.method public final loadUrl(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/electrocheque/view/WebViewFragment;->n()Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;->webviewContent:Landroid/webkit/WebView;

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public final n()Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/presentation/electrocheque/view/WebViewFragment;->h:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/electrocheque/view/WebViewFragment;->g:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;

    return-object p0
.end method

.method public final o()Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/electrocheque/view/WebViewFragment;->presenter:Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/electrocheque/view/WebViewFragment;->n()Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;

    move-result-object p1

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;->tvLabel:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;->ivLabel:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;->btnInfo:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;->btnShare:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;->btnCloseWeb:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;->btnBack:Landroid/widget/ImageView;

    new-instance p2, Lt65;

    const/4 v1, 0x1

    invoke-direct {p2, p0, v1}, Lt65;-><init>(Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/electrocheque/view/WebViewFragment;->n()Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;->webviewContent:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p2, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    invoke-virtual {p2, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {p2, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {p2, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {p2, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    invoke-virtual {p2, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    const-string v0, "utf-8"

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    const/high16 v0, 0x2000000

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    invoke-virtual {p2, v1}, Landroid/webkit/WebSettings;->setSafeBrowsingEnabled(Z)V

    new-instance p2, Lpg9;

    invoke-direct {p2, p0}, Lpg9;-><init>(Lcom/warefly/checkscan/presentation/electrocheque/view/WebViewFragment;)V

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance p2, Lqg9;

    invoke-direct {p2, p0}, Lqg9;-><init>(Lcom/warefly/checkscan/presentation/electrocheque/view/WebViewFragment;)V

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/electrocheque/view/WebViewFragment;->o()Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter;->getUrl()V

    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter;
    .locals 6

    new-instance v0, Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->j()Lba8;

    move-result-object v1

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v2

    const-class v3, Luf3;

    const/4 v4, 0x0

    invoke-static {v3, v2, v1, v4}, Ln2;->c(Ljava/lang/Class;Lze7;Lba8;Li36;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Luf3;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v2

    const-class v3, Luv2;

    invoke-static {v3, v2, v4, v4}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Luv2;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v3

    const-class v5, Lc4;

    invoke-static {v5, v3, v4, v4}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc4;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v5, Ljf6;

    invoke-static {v5, p0, v4, v4}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljf6;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/warefly/checkscan/presentation/electrocheque/presenter/WebViewFragmentPresenter;-><init>(Luf3;Luv2;Lc4;Ljf6;)V

    return-object v0
.end method

.method public final showToastMessage(I)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final showToastMessage(Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final workWithScript()V
    .locals 2

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/electrocheque/view/WebViewFragment;->n()Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;->webviewContent:Landroid/webkit/WebView;

    new-instance v1, Log9;

    invoke-direct {v1, p0}, Log9;-><init>(Lcom/warefly/checkscan/presentation/electrocheque/view/WebViewFragment;)V

    const-string p0, "localStorage.getItem(\"auth.token\")"

    invoke-virtual {v0, p0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method
