.class public final synthetic Llg1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh6;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Llg1;->a:I

    iput-object p1, p0, Llg1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Llg1;->a:I

    iget-object p0, p0, Llg1;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponPresenter;

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponPresenter;->h(Lcom/warefly/checkscan/presentation/balance/transferCashback/coupons/presenter/TransferCouponPresenter;)V

    return-void

    :pswitch_0
    check-cast p0, Lyg1;

    iget-object p0, p0, Lyg1;->f:Lxd1;

    iget-object p0, p0, Lxd1;->d:Lhi0;

    sget-object v0, Lj59;->a:Lj59;

    invoke-virtual {p0, v0}, Lhi0;->onNext(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
