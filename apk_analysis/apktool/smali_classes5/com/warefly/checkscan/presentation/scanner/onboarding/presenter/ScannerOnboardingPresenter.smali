.class public final Lcom/warefly/checkscan/presentation/scanner/onboarding/presenter/ScannerOnboardingPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/scanner/onboarding/view/ScannerOnboardingView;",
        ">;"
    }
.end annotation


# instance fields
.field private final flowRouter:Luf3;

.field private final settingsPreferences:Ljf6;


# direct methods
.method public constructor <init>(Luf3;Ljf6;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/scanner/onboarding/presenter/ScannerOnboardingPresenter;->flowRouter:Luf3;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/scanner/onboarding/presenter/ScannerOnboardingPresenter;->settingsPreferences:Ljf6;

    return-void
.end method


# virtual methods
.method public final onButtonActionClick()V
    .locals 2

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/scanner/onboarding/presenter/ScannerOnboardingPresenter;->flowRouter:Luf3;

    new-instance v0, Lyh7;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lyh7;-><init>(I)V

    invoke-virtual {p0, v0}, Lo87;->h(Ldf7;)V

    return-void
.end method

.method public onFirstViewAttach()V
    .locals 0

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/scanner/onboarding/presenter/ScannerOnboardingPresenter;->settingsPreferences:Ljf6;

    invoke-interface {p0}, Ljf6;->t0()V

    return-void
.end method
