.class public final Lqg9;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/warefly/checkscan/presentation/electrocheque/view/WebViewFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/electrocheque/view/WebViewFragment;)V
    .locals 0

    iput-object p1, p0, Lqg9;->a:Lcom/warefly/checkscan/presentation/electrocheque/view/WebViewFragment;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    iget-object p0, p0, Lqg9;->a:Lcom/warefly/checkscan/presentation/electrocheque/view/WebViewFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    const/16 p1, 0x64

    if-eq p2, p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/electrocheque/view/WebViewFragment;->n()Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;->pbLoading:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/electrocheque/view/WebViewFragment;->n()Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;->pbLoading:Landroid/widget/ProgressBar;

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
    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/electrocheque/view/WebViewFragment;->n()Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;->pbLoading:Landroid/widget/ProgressBar;

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p1}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    return-void
.end method
