.class public final Lfh9$a;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfh9;->onProgressChanged(Landroid/webkit/WebView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentActivity;


# direct methods
.method public constructor <init>(ILcom/warefly/checkscan/presentation/webview/WebViewReplenishmentActivity;)V
    .locals 0

    iput p1, p0, Lfh9$a;->f:I

    iput-object p2, p0, Lfh9$a;->g:Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lfh9$a;->g:Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentActivity;

    iget p0, p0, Lfh9$a;->f:I

    if-nez p0, :cond_0

    sget v1, Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentActivity;->g:I

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentActivity;->s()Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;->pbLoading:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz v1, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_0
    const/16 v1, 0x64

    if-ne p0, v1, :cond_1

    sget v1, Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentActivity;->g:I

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentActivity;->s()Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;->pbLoading:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    :goto_0
    sget v1, Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentActivity;->g:I

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentActivity;->s()Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/LayoutWebviewBinding;->pbLoading:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
