.class public final synthetic Lmv2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/warefly/checkscan/presentation/electrocheque/onboarding/view/ElectroChequesOnboardingFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/warefly/checkscan/presentation/electrocheque/onboarding/view/ElectroChequesOnboardingFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmv2;->b:Lcom/warefly/checkscan/presentation/electrocheque/onboarding/view/ElectroChequesOnboardingFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    sget-object p1, Lcom/warefly/checkscan/presentation/electrocheque/onboarding/view/ElectroChequesOnboardingFragment;->j:[Lze4;

    iget-object p0, p0, Lmv2;->b:Lcom/warefly/checkscan/presentation/electrocheque/onboarding/view/ElectroChequesOnboardingFragment;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/electrocheque/onboarding/view/ElectroChequesOnboardingFragment;->presenter:Lcom/warefly/checkscan/presentation/electrocheque/onboarding/presenter/ElectroChequesOnBoardingPresenter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/electrocheque/onboarding/presenter/ElectroChequesOnBoardingPresenter;->onConnectClicked()V

    return-void

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
