.class public final synthetic Lqy4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh6;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;


# direct methods
.method public synthetic constructor <init>(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;I)V
    .locals 0

    iput p2, p0, Lqy4;->a:I

    iput-object p1, p0, Lqy4;->b:Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lqy4;->a:I

    iget-object p0, p0, Lqy4;->b:Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->e(Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangePresenter;

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangePresenter;->f(Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangePresenter;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
