.class public final Lov;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lov;->f:I

    iput-object p1, p0, Lov;->g:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lov;->f:I

    iget-object p0, p0, Lov;->g:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lb36;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/warefly/checkscan/presentation/notifications/view/NotificationsFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/notifications/view/NotificationsFragment;->o()Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter;

    move-result-object p0

    iget-object p1, p1, Lb36;->c:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter;->onItemIsSeen(I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_0
    check-cast p1, Lcp2;

    check-cast p0, Lkv;

    iget-object p0, p0, Lkv;->f:Lfu1;

    invoke-virtual {p0}, Lfu1;->d()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
