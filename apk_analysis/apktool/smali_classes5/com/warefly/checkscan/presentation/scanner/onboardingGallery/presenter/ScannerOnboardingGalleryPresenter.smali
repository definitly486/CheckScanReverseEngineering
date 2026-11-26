.class public final Lcom/warefly/checkscan/presentation/scanner/onboardingGallery/presenter/ScannerOnboardingGalleryPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/scanner/onboardingGallery/view/ScannerOnboardingGalleryView;",
        ">;"
    }
.end annotation


# instance fields
.field private final flowRouter:Luf3;

.field private final preferences:Ljf6;


# direct methods
.method public constructor <init>(Luf3;Ljf6;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/scanner/onboardingGallery/presenter/ScannerOnboardingGalleryPresenter;->flowRouter:Luf3;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/scanner/onboardingGallery/presenter/ScannerOnboardingGalleryPresenter;->preferences:Ljf6;

    return-void
.end method


# virtual methods
.method public final onActionClick()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/scanner/onboardingGallery/presenter/ScannerOnboardingGalleryPresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Lo87;->c()V

    return-void
.end method

.method public onFirstViewAttach()V
    .locals 0

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/scanner/onboardingGallery/presenter/ScannerOnboardingGalleryPresenter;->preferences:Ljf6;

    invoke-interface {p0}, Ljf6;->k0()V

    return-void
.end method
