.class public final Lcom/warefly/checkscan/presentation/scanner/onboardingGallery/view/ScannerOnboardingGalleryFragment$a;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/scanner/onboardingGallery/view/ScannerOnboardingGalleryFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Landroid/view/View;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/scanner/onboardingGallery/view/ScannerOnboardingGalleryFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/scanner/onboardingGallery/view/ScannerOnboardingGalleryFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/scanner/onboardingGallery/view/ScannerOnboardingGalleryFragment$a;->f:Lcom/warefly/checkscan/presentation/scanner/onboardingGallery/view/ScannerOnboardingGalleryFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "SCANNER_ONBOARDING_GALLERY_REQUEST_KEY"

    invoke-static {}, Landroidx/core/os/BundleKt;->bundleOf()Landroid/os/Bundle;

    move-result-object v0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/scanner/onboardingGallery/view/ScannerOnboardingGalleryFragment$a;->f:Lcom/warefly/checkscan/presentation/scanner/onboardingGallery/view/ScannerOnboardingGalleryFragment;

    invoke-static {p0, p1, v0}, Landroidx/fragment/app/FragmentKt;->setFragmentResult(Landroidx/fragment/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/scanner/onboardingGallery/view/ScannerOnboardingGalleryFragment;->presenter:Lcom/warefly/checkscan/presentation/scanner/onboardingGallery/presenter/ScannerOnboardingGalleryPresenter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/scanner/onboardingGallery/presenter/ScannerOnboardingGalleryPresenter;->onActionClick()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
