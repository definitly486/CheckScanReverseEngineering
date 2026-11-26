.class public final Lst0;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/warefly/checkscan/presentation/brandlink/view/BrandlinkFragment;

.field public final synthetic b:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/brandlink/view/BrandlinkFragment;Landroid/webkit/WebView;)V
    .locals 0

    iput-object p1, p0, Lst0;->a:Lcom/warefly/checkscan/presentation/brandlink/view/BrandlinkFragment;

    iput-object p2, p0, Lst0;->b:Landroid/webkit/WebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPermissionRequest(Landroid/webkit/PermissionRequest;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lst0;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "android.permission.CAMERA"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/webkit/PermissionRequest;->grant([Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Lst0;->a:Lcom/warefly/checkscan/presentation/brandlink/view/BrandlinkFragment;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/brandlink/view/BrandlinkFragment;->j:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v0, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    new-instance v0, Lst0$a;

    invoke-direct {v0, p1}, Lst0$a;-><init>(Landroid/webkit/PermissionRequest;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/brandlink/view/BrandlinkFragment;->i:Lst0$a;

    :cond_1
    return-void
.end method

.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    iget-object p0, p0, Lst0;->a:Lcom/warefly/checkscan/presentation/brandlink/view/BrandlinkFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result p1

    if-eqz p1, :cond_4

    if-eqz p2, :cond_2

    const/16 p1, 0x64

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/brandlink/view/BrandlinkFragment;->n()Lcom/warefly/checkscan/databinding/FragmentBrandLinkBinding;

    move-result-object p1

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/brandlink/view/BrandlinkFragment;->n()Lcom/warefly/checkscan/databinding/FragmentBrandLinkBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentBrandLinkBinding;->pbLoading:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    iget-object v0, p1, Lcom/warefly/checkscan/databinding/FragmentBrandLinkBinding;->wvBrandlink:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/FragmentBrandLinkBinding;->viewLoading:Lcom/warefly/checkscan/design/resources/databinding/LayoutPreviewsLoadingBinding;

    invoke-virtual {v0}, Lcom/warefly/checkscan/design/resources/databinding/LayoutPreviewsLoadingBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/FragmentBrandLinkBinding;->ivNoImages:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentBrandLinkBinding;->tvBrandlinks:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/brandlink/view/BrandlinkFragment;->n()Lcom/warefly/checkscan/databinding/FragmentBrandLinkBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentBrandLinkBinding;->pbLoading:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p1, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/brandlink/view/BrandlinkFragment;->n()Lcom/warefly/checkscan/databinding/FragmentBrandLinkBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentBrandLinkBinding;->pbLoading:Landroid/widget/ProgressBar;

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p1}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    :cond_4
    return-void
.end method
