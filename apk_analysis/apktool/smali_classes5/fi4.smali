.class public final Lfi4;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Lvd9;

.field public final synthetic h:Lpz3;


# direct methods
.method public synthetic constructor <init>(Lvd9;Lpz3;I)V
    .locals 0

    iput p3, p0, Lfi4;->f:I

    iput-object p1, p0, Lfi4;->g:Lvd9;

    iput-object p2, p0, Lfi4;->h:Lpz3;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lfi4;->f:I

    iget-object v1, p0, Lfi4;->h:Lpz3;

    iget-object p0, p0, Lfi4;->g:Lvd9;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljm6;

    iget-object p0, p0, Ljm6;->b:Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;

    check-cast v1, Lkm6;

    iget-object p1, v1, Lkm6;->b:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljm6$a;->onPrivatePolicyClicked(Ljava/lang/String;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lgi4;

    iget-object p0, p0, Lgi4;->b:Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;

    check-cast v1, Lhi4;

    iget-object p1, v1, Lhi4;->c:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljh4;->onCheckBoxClick(Ljava/lang/String;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
