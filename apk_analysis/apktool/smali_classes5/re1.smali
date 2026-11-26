.class public final synthetic Lre1;
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

    iput p2, p0, Lre1;->b:I

    iput-object p1, p0, Lre1;->c:Lgh4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lre1;->b:I

    iget-object p0, p0, Lre1;->c:Lgh4;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter$f;

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->f(Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter$f;Ljava/lang/Object;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangePresenter$a;

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangePresenter;->e(Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangePresenter$a;Ljava/lang/Object;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$i;

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->g(Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$i;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
