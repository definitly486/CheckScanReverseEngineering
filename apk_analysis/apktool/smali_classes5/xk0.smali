.class public final synthetic Lxk0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqx1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lxk0;->b:I

    iput-object p1, p0, Lxk0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lxk0;->b:I

    iget-object p0, p0, Lxk0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter$b;

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter;->i(Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter$b;Ljava/lang/Object;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;

    check-cast p1, Lf73;

    invoke-static {p0, p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->v(Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;Lf73;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter$k$a;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter$k$a;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
