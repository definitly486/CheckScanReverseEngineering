.class public final synthetic Lbd8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lbd8;->b:I

    iput-object p1, p0, Lbd8;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lbd8;->b:I

    iget-object p0, p0, Lbd8;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/my/target/wf$b;

    sget v0, Lcom/my/target/p1;->p:I

    new-instance v0, Lgia;

    invoke-direct {v0}, Lgia;-><init>()V

    invoke-interface {p0, p1, v0}, Lcom/my/target/wf$b;->a(Landroid/view/View;Lpfa;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/my/target/eg;

    sget p1, Lcom/my/target/eg;->O:I

    iget-object p0, p0, Lcom/my/target/eg;->C:Lcom/my/target/r0$a;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/my/target/r0$a;->e()V

    :cond_0
    return-void

    :pswitch_1
    check-cast p0, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortDialog;

    sget-object p1, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortDialog;->f:[Lze4;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortDialog;->presenter:Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/presenter/SumSortPresenter;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/presenter/SumSortPresenter;->onShow()V

    return-void

    :cond_1
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
