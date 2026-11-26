.class public final Li5;
.super Lpe9;
.source "SourceFile"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Li5;->a:I

    invoke-direct {p0}, Lpe9;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lkh5;
    .locals 0

    iget p0, p0, Li5;->a:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneView$$State;

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneView$$State;-><init>()V

    return-object p0

    :pswitch_0
    new-instance p0, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeView$$State;

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeView$$State;-><init>()V

    return-object p0

    :pswitch_1
    new-instance p0, Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/view/InsuranceShowcaseView$$State;

    invoke-direct {p0}, Lcom/warefly/checkscan/insuranceShowcase/presentation/showcase/view/InsuranceShowcaseView$$State;-><init>()V

    return-object p0

    :pswitch_2
    new-instance p0, Lcom/warefly/checkscan/presentation/flows/account/presenter/AccountView$$State;

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/flows/account/presenter/AccountView$$State;-><init>()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
