.class public final Lcom/warefly/checkscan/auth/presentation/main/dialogs/AgreementDialog$b;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/auth/presentation/main/dialogs/AgreementDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/warefly/checkscan/auth/databinding/FullscreenDialogAgreementBinding;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/auth/databinding/FullscreenDialogAgreementBinding;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/auth/presentation/main/dialogs/AgreementDialog$b;->a:Lcom/warefly/checkscan/auth/databinding/FullscreenDialogAgreementBinding;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/main/dialogs/AgreementDialog$b;->a:Lcom/warefly/checkscan/auth/databinding/FullscreenDialogAgreementBinding;

    if-eqz p2, :cond_1

    const/16 p1, 0x64

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/warefly/checkscan/auth/databinding/FullscreenDialogAgreementBinding;->pbLoading:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/warefly/checkscan/auth/databinding/FullscreenDialogAgreementBinding;->pbLoading:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/warefly/checkscan/auth/databinding/FullscreenDialogAgreementBinding;->pbLoading:Landroid/widget/ProgressBar;

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p1}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    return-void
.end method
