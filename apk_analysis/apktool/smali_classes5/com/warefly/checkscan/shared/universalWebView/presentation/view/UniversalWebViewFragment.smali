.class public final Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/shared/universalWebView/databinding/FragmentUniversalWebViewBinding;",
        ">;",
        "Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewView;"
    }
.end annotation


# static fields
.field public static final r:Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment$a;

.field public static final synthetic s:[Lze4;
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

.field public final h:Lfh8;

.field public final i:Len2;

.field public final j:Ltf9;

.field public final k:Lvf9;

.field public final l:Lfh8;

.field public final m:Lfh8;

.field public n:Landroid/webkit/WebView;

.field public o:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field public final p:Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment$i;

.field public presenter:Lcom/warefly/checkscan/shared/universalWebView/presentation/presenter/UniversalWebViewPresenter;

.field public final q:Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment$g;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/shared/universalWebView/databinding/FragmentUniversalWebViewBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->s:[Lze4;

    new-instance v0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->r:Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    const v0, 0x7f0d00ff

    iput v0, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->f:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/shared/universalWebView/databinding/FragmentUniversalWebViewBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->g:Lol4;

    new-instance v0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment$b;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment$b;-><init>(Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;)V

    new-instance v1, Lfh8;

    invoke-direct {v1, v0}, Lfh8;-><init>(Lll3;)V

    iput-object v1, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->h:Lfh8;

    new-instance v0, Len2;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v1

    const-class v2, Ls47;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls47;

    invoke-direct {v0, v1}, Len2;-><init>(Ls47;)V

    iput-object v0, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->i:Len2;

    new-instance v0, Ltf9;

    new-instance v1, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment$d;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment$d;-><init>(Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;)V

    invoke-direct {v0, p0, v1}, Ltf9;-><init>(Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment$d;)V

    iput-object v0, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->j:Ltf9;

    new-instance v0, Lvf9;

    invoke-direct {v0, p0}, Lvf9;-><init>(Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;)V

    iput-object v0, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->k:Lvf9;

    new-instance v0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment$c;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment$c;-><init>(Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;)V

    new-instance v1, Lfh8;

    invoke-direct {v1, v0}, Lfh8;-><init>(Lll3;)V

    iput-object v1, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->l:Lfh8;

    new-instance v0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment$h;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment$h;-><init>(Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;)V

    new-instance v1, Lfh8;

    invoke-direct {v1, v0}, Lfh8;-><init>(Lll3;)V

    iput-object v1, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->m:Lfh8;

    new-instance v0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment$i;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment$i;-><init>(Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;)V

    iput-object v0, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->p:Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment$i;

    new-instance v0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment$g;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment$g;-><init>(Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;)V

    iput-object v0, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->q:Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment$g;

    return-void
.end method


# virtual methods
.method public final goBackInHistory()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->n:Landroid/webkit/WebView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->goBack()V

    :cond_0
    return-void
.end method

.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->f:I

    return p0
.end method

.method public final k()Z
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->r()V

    const/4 p0, 0x0

    return p0
.end method

.method public final loadUrl(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->n:Landroid/webkit/WebView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final n(Landroid/os/Bundle;)V
    .locals 7

    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->p()Lcom/warefly/checkscan/shared/universalWebView/databinding/FragmentUniversalWebViewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/warefly/checkscan/shared/universalWebView/databinding/FragmentUniversalWebViewBinding;->flWebViewContainer:Landroid/widget/FrameLayout;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->n:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    move v1, v5

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    invoke-static {v1}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    const-string v6, "utf-8"

    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    invoke-virtual {v1, v0, v5}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    new-instance v1, Lo69;

    iget-object v2, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->i:Len2;

    invoke-virtual {v2}, Len2;->a()Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->p:Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment$i;

    invoke-direct {v1, v2, v3}, Lo69;-><init>(Ljavax/net/ssl/TrustManagerFactory;Lo69$a;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v1, Ln69;

    iget-object v2, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->q:Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment$g;

    invoke-direct {v1, v2}, Ln69;-><init>(Ln69$a;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    new-instance v1, Lq69;

    invoke-direct {v1, p0}, Lq69;-><init>(Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    iget-object v1, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->h:Lfh8;

    invoke-virtual {v1}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/warefly/checkscan/shared/universalWebView/presentation/UniversalWebViewArgs;

    iget-boolean v2, v2, Lcom/warefly/checkscan/shared/universalWebView/presentation/UniversalWebViewArgs;->d:Z

    new-instance v3, Lr69;

    invoke-direct {v3, p0, v2}, Lr69;-><init>(Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;Z)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    if-eqz p1, :cond_2

    const-string p0, "UNIVERSAL_WEB_VIEW_CURRENT_URL_KEY"

    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-virtual {v1}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/UniversalWebViewArgs;

    iget-object p0, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/UniversalWebViewArgs;->b:Ljava/lang/String;

    :cond_1
    invoke-virtual {v0, p0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final o()V
    .locals 4

    iget-object v0, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->n:Landroid/webkit/WebView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    new-instance v2, Landroid/webkit/WebViewClient;

    invoke-direct {v2}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_2
    iput-object v1, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->n:Landroid/webkit/WebView;

    return-void
.end method

.method public final onDestroyView()V
    .locals 5

    iget-object v0, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->j:Ltf9;

    iget-object v1, v0, Ltf9;->c:Landroid/webkit/ValueCallback;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1, v2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_0
    iput-object v2, v0, Ltf9;->c:Landroid/webkit/ValueCallback;

    iput-object v2, v0, Ltf9;->d:Landroid/net/Uri;

    iget-object v0, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->k:Lvf9;

    iget-object v1, v0, Lvf9;->b:Landroid/webkit/PermissionRequest;

    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {v1}, Landroid/webkit/PermissionRequest;->deny()V

    sget-object v1, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    iput-object v2, v0, Lvf9;->b:Landroid/webkit/PermissionRequest;

    iget-object v1, v0, Lvf9;->d:Landroid/webkit/GeolocationPermissions$Callback;

    if-eqz v1, :cond_2

    iget-object v3, v0, Lvf9;->c:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4, v4}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    :cond_2
    iput-object v2, v0, Lvf9;->d:Landroid/webkit/GeolocationPermissions$Callback;

    iput-object v2, v0, Lvf9;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->o:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    :cond_3
    iput-object v2, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->o:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-virtual {p0}, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->o()V

    invoke-super {p0}, Lfh5;->onDestroyView()V

    return-void
.end method

.method public final onPause()V
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->n:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    :cond_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->flush()V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Lfh5;->onResume()V

    iget-object p0, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->n:Landroid/webkit/WebView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->onResume()V

    :cond_0
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1}, Lfh5;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->n:Landroid/webkit/WebView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string v0, "UNIVERSAL_WEB_VIEW_CURRENT_URL_KEY"

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->p()Lcom/warefly/checkscan/shared/universalWebView/databinding/FragmentUniversalWebViewBinding;

    move-result-object p1

    iget-object v0, p1, Lcom/warefly/checkscan/shared/universalWebView/databinding/FragmentUniversalWebViewBinding;->toolbar:Lcom/warefly/checkscan/core/ui/databinding/LayoutAppbarTitleBinding;

    invoke-virtual {v0}, Lcom/warefly/checkscan/core/ui/databinding/LayoutAppbarTitleBinding;->getRoot()Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->h:Lfh8;

    invoke-virtual {v1}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/warefly/checkscan/shared/universalWebView/presentation/UniversalWebViewArgs;

    iget-boolean v2, v2, Lcom/warefly/checkscan/shared/universalWebView/presentation/UniversalWebViewArgs;->e:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Lcom/google/android/material/appbar/AppBarLayout;->setVisibility(I)V

    iget-object v0, p1, Lcom/warefly/checkscan/shared/universalWebView/databinding/FragmentUniversalWebViewBinding;->toolbar:Lcom/warefly/checkscan/core/ui/databinding/LayoutAppbarTitleBinding;

    iget-object v0, v0, Lcom/warefly/checkscan/core/ui/databinding/LayoutAppbarTitleBinding;->ivBtnBack:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Llb7;

    new-instance v3, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment$e;

    invoke-direct {v3, p0}, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment$e;-><init>(Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;)V

    invoke-direct {v2, v3}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lcom/warefly/checkscan/shared/universalWebView/databinding/FragmentUniversalWebViewBinding;->incldError:Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;

    iget-object v0, v0, Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;->btnTryAgain:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Llb7;

    new-instance v3, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment$f;

    invoke-direct {v3, p0}, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment$f;-><init>(Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;)V

    invoke-direct {v2, v3}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lcom/warefly/checkscan/shared/universalWebView/databinding/FragmentUniversalWebViewBinding;->srlContent:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v1}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/warefly/checkscan/shared/universalWebView/presentation/UniversalWebViewArgs;

    iget-boolean v1, v1, Lcom/warefly/checkscan/shared/universalWebView/presentation/UniversalWebViewArgs;->d:Z

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    iget-object p1, p1, Lcom/warefly/checkscan/shared/universalWebView/databinding/FragmentUniversalWebViewBinding;->srlContent:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v0, Lb9;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lb9;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    invoke-virtual {p0, p2}, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->n(Landroid/os/Bundle;)V

    return-void
.end method

.method public final openInExternalApp(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->l:Lfh8;

    invoke-virtual {v0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx43;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p1, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lx43;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance v0, Lk57$a;

    invoke-direct {v0, p1}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_0
    invoke-static {p1}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    const p1, 0x7f140683

    invoke-static {p1, p0}, Loz1;->i(ILandroid/view/View;)V

    :cond_1
    return-void
.end method

.method public final openIntentScheme(Ljava/lang/String;)V
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->l:Lfh8;

    invoke-virtual {v0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx43;

    iget-object v0, v0, Lx43;->a:Landroid/content/Context;

    const-string v1, "market://details?id="

    const/4 v2, 0x1

    :try_start_0
    invoke-static {p1, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance v2, Lk57$a;

    invoke-direct {v2, p1}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v2

    :goto_0
    invoke-static {p1}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    sget-object v3, Lx43$a$a;->a:Lx43$a$a;

    sget-object v4, Lx43$a$c;->a:Lx43$a$c;

    if-nez v2, :cond_5

    check-cast p1, Landroid/content/Intent;

    const-string v2, "browser_fallback_url"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.intent.category.BROWSABLE"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p1, v7}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    invoke-virtual {p1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v8, "android.intent.action.SEND"

    invoke-static {v2, v8}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1, v7}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v4

    goto :goto_1

    :catchall_1
    move-exception p1

    new-instance v2, Lk57$a;

    invoke-direct {v2, p1}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    :goto_1
    invoke-static {v2}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_4

    :cond_1
    if-eqz v5, :cond_2

    new-instance p1, Lx43$a$b;

    invoke-direct {p1, v5}, Lx43$a$b;-><init>(Ljava/lang/String;)V

    move-object v2, p1

    goto :goto_4

    :cond_2
    if-eqz v6, :cond_4

    :try_start_2
    new-instance p1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p1, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    new-instance v0, Lk57$a;

    invoke-direct {v0, p1}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_2
    invoke-static {p1}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    move-object v2, v4

    goto :goto_4

    :cond_4
    move-object v2, v3

    :goto_4
    check-cast v2, Lx43$a;

    goto :goto_5

    :cond_5
    move-object v2, v3

    :goto_5
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    instance-of p1, v2, Lx43$a$b;

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->n:Landroid/webkit/WebView;

    if-eqz p0, :cond_7

    check-cast v2, Lx43$a$b;

    iget-object p1, v2, Lx43$a$b;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_6

    :cond_6
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_7

    const p1, 0x7f140683

    invoke-static {p1, p0}, Loz1;->i(ILandroid/view/View;)V

    :cond_7
    :goto_6
    return-void
.end method

.method public final p()Lcom/warefly/checkscan/shared/universalWebView/databinding/FragmentUniversalWebViewBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->s:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->g:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/shared/universalWebView/databinding/FragmentUniversalWebViewBinding;

    return-object p0
.end method

.method public final providePresenter()Lcom/warefly/checkscan/shared/universalWebView/presentation/presenter/UniversalWebViewPresenter;
    .locals 5

    new-instance v0, Lcom/warefly/checkscan/shared/universalWebView/presentation/presenter/UniversalWebViewPresenter;

    iget-object v1, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->h:Lfh8;

    invoke-virtual {v1}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/warefly/checkscan/shared/universalWebView/presentation/UniversalWebViewArgs;

    new-instance v2, Lhg9;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v3, Lt69;

    const/4 v4, 0x0

    invoke-static {v3, p0, v4, v4}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lt69;

    invoke-direct {v0, v1, v2, p0}, Lcom/warefly/checkscan/shared/universalWebView/presentation/presenter/UniversalWebViewPresenter;-><init>(Lcom/warefly/checkscan/shared/universalWebView/presentation/UniversalWebViewArgs;Lhg9;Lt69;)V

    return-object v0
.end method

.method public final q()Lcom/warefly/checkscan/shared/universalWebView/presentation/presenter/UniversalWebViewPresenter;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->presenter:Lcom/warefly/checkscan/shared/universalWebView/presentation/presenter/UniversalWebViewPresenter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final r()V
    .locals 3

    invoke-virtual {p0}, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->p()Lcom/warefly/checkscan/shared/universalWebView/databinding/FragmentUniversalWebViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/shared/universalWebView/databinding/FragmentUniversalWebViewBinding;->flFullScreenContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->p()Lcom/warefly/checkscan/shared/universalWebView/databinding/FragmentUniversalWebViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/shared/universalWebView/databinding/FragmentUniversalWebViewBinding;->flFullScreenContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->o:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->o:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->q()Lcom/warefly/checkscan/shared/universalWebView/presentation/presenter/UniversalWebViewPresenter;

    move-result-object v0

    iget-object p0, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->n:Landroid/webkit/WebView;

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Lcom/warefly/checkscan/shared/universalWebView/presentation/presenter/UniversalWebViewPresenter;->onBackClicked(Z)V

    return-void
.end method

.method public final showError(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->p()Lcom/warefly/checkscan/shared/universalWebView/databinding/FragmentUniversalWebViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/shared/universalWebView/databinding/FragmentUniversalWebViewBinding;->incldError:Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;

    invoke-virtual {v0}, Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->p()Lcom/warefly/checkscan/shared/universalWebView/databinding/FragmentUniversalWebViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/shared/universalWebView/databinding/FragmentUniversalWebViewBinding;->srlContent:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->p()Lcom/warefly/checkscan/shared/universalWebView/databinding/FragmentUniversalWebViewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/shared/universalWebView/databinding/FragmentUniversalWebViewBinding;->pbPageProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public final showLoading(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->p()Lcom/warefly/checkscan/shared/universalWebView/databinding/FragmentUniversalWebViewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/shared/universalWebView/databinding/FragmentUniversalWebViewBinding;->incldLoading:Lcom/warefly/checkscan/core/ui/databinding/LayoutSpinnerLoadingBinding;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/databinding/LayoutSpinnerLoadingBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final showTitle(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->p()Lcom/warefly/checkscan/shared/universalWebView/databinding/FragmentUniversalWebViewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/shared/universalWebView/databinding/FragmentUniversalWebViewBinding;->toolbar:Lcom/warefly/checkscan/core/ui/databinding/LayoutAppbarTitleBinding;

    iget-object p0, p0, Lcom/warefly/checkscan/core/ui/databinding/LayoutAppbarTitleBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final stopRefreshing()V
    .locals 1

    invoke-virtual {p0}, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->p()Lcom/warefly/checkscan/shared/universalWebView/databinding/FragmentUniversalWebViewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/shared/universalWebView/databinding/FragmentUniversalWebViewBinding;->srlContent:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method
