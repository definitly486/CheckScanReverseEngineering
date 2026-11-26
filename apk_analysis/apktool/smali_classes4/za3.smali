.class public final synthetic Lza3;
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

    iput p2, p0, Lza3;->b:I

    iput-object p1, p0, Lza3;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lza3;->b:I

    iget-object p0, p0, Lza3;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter$d;

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter;->g(Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter$d;Ljava/lang/Object;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;

    check-cast p1, Lcom/google/firebase/inappmessaging/model/TriggeredInAppMessage;

    invoke-static {p0, p1}, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->a(Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;Lcom/google/firebase/inappmessaging/model/TriggeredInAppMessage;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
