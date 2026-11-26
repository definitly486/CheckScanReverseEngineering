.class public final synthetic Lg90;
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

    iput p2, p0, Lg90;->b:I

    iput-object p1, p0, Lg90;->c:Lgh4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lg90;->b:I

    iget-object p0, p0, Lg90;->c:Lgh4;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsPresenter$b;

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsPresenter;->f(Lcom/warefly/checkscan/presentation/bonuses/bonusProgram/transfer/TransferPointsPresenter$b;Ljava/lang/Object;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter$l;

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->j(Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter$l;Ljava/lang/Object;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardOptionsPresenter$d;

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardOptionsPresenter;->h(Lcom/warefly/checkscan/presentation/bankCardOptions/presenter/BankCardOptionsPresenter$d;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
