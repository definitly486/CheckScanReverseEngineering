.class public final Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog$e;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog$e;->a:Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog$e;->a:Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x64

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;->e()Lcom/warefly/checkscan/databinding/FragmentUpridWebBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentUpridWebBinding;->viewLoading:Lcom/warefly/checkscan/design/resources/databinding/LayoutPreviewsLoadingBinding;

    invoke-virtual {p0}, Lcom/warefly/checkscan/design/resources/databinding/LayoutPreviewsLoadingBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
