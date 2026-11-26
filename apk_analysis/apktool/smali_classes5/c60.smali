.class public final Lc60;
.super Lpe9;
.source "SourceFile"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lc60;->a:I

    invoke-direct {p0}, Lpe9;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lkh5;
    .locals 0

    iget p0, p0, Lc60;->a:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lcom/warefly/checkscan/presentation/geolocation/presenter/SuccessGeolocationView$$State;

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/geolocation/presenter/SuccessGeolocationView$$State;-><init>()V

    return-object p0

    :pswitch_0
    new-instance p0, Lcom/warefly/checkscan/presentation/account/sessionExpired/presenter/SessionExpiredView$$State;

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/account/sessionExpired/presenter/SessionExpiredView$$State;-><init>()V

    return-object p0

    :pswitch_1
    new-instance p0, Lcom/warefly/checkscan/presentation/flows/promotions/view/PromotionFlowView$$State;

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/flows/promotions/view/PromotionFlowView$$State;-><init>()V

    return-object p0

    :pswitch_2
    new-instance p0, Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsView$$State;

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsView$$State;-><init>()V

    return-object p0

    :pswitch_3
    new-instance p0, Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingView$$State;

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/offerCard/view/CardOfferLandingView$$State;-><init>()V

    return-object p0

    :pswitch_4
    new-instance p0, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceView$$State;

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/balance/main/view/BalanceView$$State;-><init>()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
