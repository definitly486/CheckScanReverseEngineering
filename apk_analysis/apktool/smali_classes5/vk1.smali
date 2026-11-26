.class public final synthetic Lvk1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqx1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lgh4;


# direct methods
.method public synthetic constructor <init>(Lgh4;I)V
    .locals 0

    iput p2, p0, Lvk1;->b:I

    iput-object p1, p0, Lvk1;->c:Lgh4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lvk1;->b:I

    iget-object p0, p0, Lvk1;->c:Lgh4;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter$b;

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter;->i(Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter$b;Ljava/lang/Object;)V

    return-void

    :pswitch_0
    check-cast p0, Lnp5;

    invoke-virtual {p0, p1}, Lnp5;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_1
    check-cast p0, Lov4;

    invoke-virtual {p0, p1}, Lov4;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_2
    check-cast p0, Lrv2;

    invoke-virtual {p0, p1}, Lrv2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_3
    check-cast p0, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter$e;

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;->i(Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter$e;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
