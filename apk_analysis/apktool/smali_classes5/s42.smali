.class public final Ls42;
.super Lpe9;
.source "SourceFile"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Ls42;->a:I

    invoke-direct {p0}, Lpe9;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lkh5;
    .locals 0

    iget p0, p0, Ls42;->a:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lcom/warefly/checkscan/auth/presentation/userCallVerification/view/VerificationUserCallView$$State;

    invoke-direct {p0}, Lcom/warefly/checkscan/auth/presentation/userCallVerification/view/VerificationUserCallView$$State;-><init>()V

    return-object p0

    :pswitch_0
    new-instance p0, Lcom/warefly/checkscan/presentation/tasks/promocode/view/PromocodeTaskDetailsView$$State;

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/tasks/promocode/view/PromocodeTaskDetailsView$$State;-><init>()V

    return-object p0

    :pswitch_1
    new-instance p0, Lcom/warefly/checkscan/presentation/onboardingCard/view/OnboardingCardSlidesView$$State;

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/onboardingCard/view/OnboardingCardSlidesView$$State;-><init>()V

    return-object p0

    :pswitch_2
    new-instance p0, Lcom/warefly/checkscan/presentation/flows/electrocheques/presenter/ElectroChequesFlowView$$State;

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/flows/electrocheques/presenter/ElectroChequesFlowView$$State;-><init>()V

    return-object p0

    :pswitch_3
    new-instance p0, Lcom/warefly/checkscan/presentation/bonuses/coupons/view/CouponsView$$State;

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/bonuses/coupons/view/CouponsView$$State;-><init>()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
