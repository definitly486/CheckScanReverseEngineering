.class public final Lag5;
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

    iput p3, p0, Lag5;->f:I

    iput-object p1, p0, Lag5;->g:Lvd9;

    iput-object p2, p0, Lag5;->h:Lpz3;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lag5;->f:I

    iget-object v1, p0, Lag5;->h:Lpz3;

    iget-object p0, p0, Lag5;->g:Lvd9;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lam8;

    iget-object p0, p0, Lam8;->b:Lam8$b;

    check-cast v1, Lkz7;

    iget p1, v1, Lkz7;->a:I

    iget-object v0, v1, Lkz7;->j:Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;

    iget-boolean v1, v1, Lkz7;->l:Z

    invoke-interface {p0, p1, v0, v1}, Lam8$b;->onTaskClicked(ILcom/warefly/checkscan/tasks/presentation/flows/TasksReason;Z)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lzf5;

    iget-object p0, p0, Lzf5;->b:Lcom/warefly/checkscan/presentation/tasks/multiTaskDetails/presenter/MultiTaskDetailsPresenter;

    check-cast v1, Lbg5;

    iget p1, v1, Lbg5;->a:I

    invoke-interface {p0, p1}, Lzf5$a;->onSubTaskClicked(I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
