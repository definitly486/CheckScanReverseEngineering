.class public final Lcom/warefly/checkscan/presentation/brandlink/view/BrandlinkFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/brandlink/view/BrandlinkView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/databinding/FragmentBrandLinkBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/brandlink/view/BrandlinkView;"
    }
.end annotation


# static fields
.field public static final synthetic k:[Lze4;
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

.field public final h:Landroidx/navigation/NavArgsLazy;

.field public i:Lst0$a;

.field public final j:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public presenter:Lcom/warefly/checkscan/presentation/brandlink/presenter/BrandlinkPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/brandlink/view/BrandlinkFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/FragmentBrandLinkBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/brandlink/view/BrandlinkFragment;->k:[Lze4;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    const v0, 0x7f0d00ae

    iput v0, p0, Lcom/warefly/checkscan/presentation/brandlink/view/BrandlinkFragment;->f:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/databinding/FragmentBrandLinkBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/brandlink/view/BrandlinkFragment;->g:Lol4;

    new-instance v0, Landroidx/navigation/NavArgsLazy;

    const-class v1, Ltt0;

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v1

    new-instance v2, Lcom/warefly/checkscan/presentation/brandlink/view/BrandlinkFragment$c;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/brandlink/view/BrandlinkFragment$c;-><init>(Lcom/warefly/checkscan/presentation/brandlink/view/BrandlinkFragment;)V

    invoke-direct {v0, v1, v2}, Landroidx/navigation/NavArgsLazy;-><init>(Lne4;Lll3;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/brandlink/view/BrandlinkFragment;->h:Landroidx/navigation/NavArgsLazy;

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;-><init>()V

    new-instance v1, Ldi;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Ldi;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/brandlink/view/BrandlinkFragment;->j:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method


# virtual methods
.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/presentation/brandlink/view/BrandlinkFragment;->f:I

    return p0
.end method

.method public final loadWebViewLink(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/brandlink/view/BrandlinkFragment;->n()Lcom/warefly/checkscan/databinding/FragmentBrandLinkBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentBrandLinkBinding;->wvBrandlink:Landroid/webkit/WebView;

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public final n()Lcom/warefly/checkscan/databinding/FragmentBrandLinkBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/presentation/brandlink/view/BrandlinkFragment;->k:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/brandlink/view/BrandlinkFragment;->g:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/databinding/FragmentBrandLinkBinding;

    return-object p0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/brandlink/view/BrandlinkFragment;->n()Lcom/warefly/checkscan/databinding/FragmentBrandLinkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentBrandLinkBinding;->wvBrandlink:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    const-string v2, "utf-8"

    invoke-virtual {p2, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    const/high16 v2, 0x2000000

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setSafeBrowsingEnabled(Z)V

    new-instance p2, Lrt0;

    invoke-direct {p2, p0}, Lrt0;-><init>(Lcom/warefly/checkscan/presentation/brandlink/view/BrandlinkFragment;)V

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance p2, Lst0;

    invoke-direct {p2, p0, p1}, Lst0;-><init>(Lcom/warefly/checkscan/presentation/brandlink/view/BrandlinkFragment;Landroid/webkit/WebView;)V

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/brandlink/view/BrandlinkFragment;->n()Lcom/warefly/checkscan/databinding/FragmentBrandLinkBinding;

    move-result-object p1

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/FragmentBrandLinkBinding;->btnBack:Landroid/widget/ImageView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "RequestsFlowFragment"

    invoke-static {v0, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/FragmentBrandLinkBinding;->btnBack:Landroid/widget/ImageView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/brandlink/view/BrandlinkFragment$a;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/brandlink/view/BrandlinkFragment$a;-><init>(Lcom/warefly/checkscan/presentation/brandlink/view/BrandlinkFragment;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentBrandLinkBinding;->incldBrandlinkNotAuth:Lcom/warefly/checkscan/databinding/LayoutBrandlinkNotAuthBinding;

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/LayoutBrandlinkNotAuthBinding;->btnSignUp:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Llb7;

    new-instance v0, Lcom/warefly/checkscan/presentation/brandlink/view/BrandlinkFragment$b;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/brandlink/view/BrandlinkFragment$b;-><init>(Lcom/warefly/checkscan/presentation/brandlink/view/BrandlinkFragment;)V

    invoke-direct {p2, v0}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/brandlink/presenter/BrandlinkPresenter;
    .locals 7

    new-instance v0, Lcom/warefly/checkscan/presentation/brandlink/presenter/BrandlinkPresenter;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v1

    const-class v2, Lp61;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp61;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v2

    const-class v4, Lzl2;

    invoke-static {v4, v2, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzl2;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->j()Lba8;

    move-result-object v4

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v5

    const-class v6, Luf3;

    invoke-static {v6, v5, v4, v3}, Ln2;->c(Ljava/lang/Class;Lze7;Lba8;Li36;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Luf3;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/brandlink/view/BrandlinkFragment;->h:Landroidx/navigation/NavArgsLazy;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltt0;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/warefly/checkscan/presentation/brandlink/presenter/BrandlinkPresenter;-><init>(Lp61;Lzl2;Luf3;Ltt0;)V

    return-object v0
.end method

.method public final sentFeedbackOnTelegram(Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final setAnonPlaceholder(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/brandlink/view/BrandlinkFragment;->n()Lcom/warefly/checkscan/databinding/FragmentBrandLinkBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentBrandLinkBinding;->viewLoading:Lcom/warefly/checkscan/design/resources/databinding/LayoutPreviewsLoadingBinding;

    invoke-virtual {v0}, Lcom/warefly/checkscan/design/resources/databinding/LayoutPreviewsLoadingBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/brandlink/view/BrandlinkFragment;->n()Lcom/warefly/checkscan/databinding/FragmentBrandLinkBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentBrandLinkBinding;->incldBrandlinkNotAuth:Lcom/warefly/checkscan/databinding/LayoutBrandlinkNotAuthBinding;

    invoke-virtual {v0}, Lcom/warefly/checkscan/databinding/LayoutBrandlinkNotAuthBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/brandlink/view/BrandlinkFragment;->n()Lcom/warefly/checkscan/databinding/FragmentBrandLinkBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentBrandLinkBinding;->pbLoading:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lp37;

    move-result-object v0

    invoke-virtual {v0, p1}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object p1

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/brandlink/view/BrandlinkFragment;->n()Lcom/warefly/checkscan/databinding/FragmentBrandLinkBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentBrandLinkBinding;->incldBrandlinkNotAuth:Lcom/warefly/checkscan/databinding/LayoutBrandlinkNotAuthBinding;

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/LayoutBrandlinkNotAuthBinding;->ivBrandNotAuth:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Lh37;->L(Landroid/widget/ImageView;)V

    return-void
.end method

.method public final showError()V
    .locals 2

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/brandlink/view/BrandlinkFragment;->n()Lcom/warefly/checkscan/databinding/FragmentBrandLinkBinding;

    move-result-object p0

    iget-object v0, p0, Lcom/warefly/checkscan/databinding/FragmentBrandLinkBinding;->viewLoading:Lcom/warefly/checkscan/design/resources/databinding/LayoutPreviewsLoadingBinding;

    invoke-virtual {v0}, Lcom/warefly/checkscan/design/resources/databinding/LayoutPreviewsLoadingBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/warefly/checkscan/databinding/FragmentBrandLinkBinding;->wvBrandlink:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/warefly/checkscan/databinding/FragmentBrandLinkBinding;->ivNoImages:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentBrandLinkBinding;->tvBrandlinks:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
