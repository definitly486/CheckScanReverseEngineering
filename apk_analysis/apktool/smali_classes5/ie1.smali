.class public final Lie1;
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

    .line 9
    iput p2, p0, Lie1;->f:I

    iput-object p1, p0, Lie1;->g:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lts5;Lms5;)V
    .locals 0

    const/4 p1, 0x1

    iput p1, p0, Lie1;->f:I

    iput-object p2, p0, Lie1;->g:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lie1;->f:I

    iget-object p0, p0, Lie1;->g:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/warefly/checkscan/products/presentation/selections/view/SelectionsFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/selections/view/SelectionsFragment;->o()Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;->refreshContent()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_0
    check-cast p1, La57;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lms5;

    invoke-static {p0, p1}, Lts5;->b(Lms5;La57;)Lus5;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Lj59;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lxd1;

    iget-object p0, p0, Lxd1;->a:Lcf1;

    invoke-interface {p0}, Lcf1;->d()Lmz7;

    move-result-object p0

    new-instance p1, Lx90;

    const/4 v0, 0x1

    sget-object v1, Lhe1;->g:Lhe1;

    invoke-direct {p1, v1, v0}, Lx90;-><init>(Lnl3;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lp08;

    invoke-direct {v0, p0, p1}, Lp08;-><init>(Lmz7;Lxl3;)V

    instance-of p0, v0, Lvm3;

    if-eqz p0, :cond_0

    check-cast v0, Lvm3;

    invoke-interface {v0}, Lvm3;->a()Ltq5;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Li18;

    invoke-direct {p0, v0}, Li18;-><init>(Lp08;)V

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
