.class public final Lax3;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Lvd9;

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lvd9;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lax3;->f:I

    iput-object p1, p0, Lax3;->g:Lvd9;

    iput-object p2, p0, Lax3;->h:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lax3;->f:I

    iget-object v1, p0, Lax3;->h:Ljava/lang/Object;

    iget-object p0, p0, Lax3;->g:Lvd9;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ltj9;

    iget-object p0, p0, Ltj9;->b:Lrj9;

    check-cast v1, Luj9$a;

    iget-object p1, v1, Luj9$a;->b:Lwi9;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lrj9;->onWithdrawClicked(Lwi9;Lpw7;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lvq6;

    iget-object p0, p0, Lvq6;->b:Lcom/warefly/checkscan/presentation/tasks/promocode/presenter/PromocodeTaskDetailsPresenter;

    check-cast v1, Lwq6;

    iget-object p1, v1, Lwq6;->b:Ljava/lang/String;

    invoke-interface {p0, p1}, Lvq6$a;->onBadgeQuestionClicked(Ljava/lang/String;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lzw3;

    iget-object p0, p0, Lzw3;->b:Ldm3;

    check-cast v1, Lyw3;

    iget-object p1, v1, Lyw3;->k:Lh57;

    iget-object v0, v1, Lyw3;->g:Ljava/lang/String;

    iget-object v1, v1, Lyw3;->a:Ljava/lang/String;

    invoke-interface {p0, p1, v0, v1}, Ldm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
