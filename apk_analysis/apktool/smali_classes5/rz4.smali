.class public final Lrz4;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/warefly/checkscan/presentation/balance/managementAlfa/ManagementAlfaFullScreenDialog;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/balance/managementAlfa/ManagementAlfaFullScreenDialog;)V
    .locals 0

    iput-object p1, p0, Lrz4;->a:Lcom/warefly/checkscan/presentation/balance/managementAlfa/ManagementAlfaFullScreenDialog;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    iget-object p0, p0, Lrz4;->a:Lcom/warefly/checkscan/presentation/balance/managementAlfa/ManagementAlfaFullScreenDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x64

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/balance/managementAlfa/ManagementAlfaFullScreenDialog;->c:Lgl4;

    sget-object p2, Lcom/warefly/checkscan/presentation/balance/managementAlfa/ManagementAlfaFullScreenDialog;->f:[Lze4;

    const/4 v0, 0x0

    aget-object p2, p2, v0

    invoke-virtual {p1, p0, p2}, Lgl4;->a(Landroidx/fragment/app/DialogFragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/databinding/DialogManagementAlfaBinding;

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/DialogManagementAlfaBinding;->viewLoading:Lcom/warefly/checkscan/design/resources/databinding/LayoutPreviewsLoadingBinding;

    invoke-virtual {p0}, Lcom/warefly/checkscan/design/resources/databinding/LayoutPreviewsLoadingBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
