.class public final Lqd1;
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

    iput p3, p0, Lqd1;->f:I

    iput-object p1, p0, Lqd1;->g:Lvd9;

    iput-object p2, p0, Lqd1;->h:Lpz3;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lqd1;->f:I

    iget-object v1, p0, Lqd1;->h:Lpz3;

    iget-object p0, p0, Lqd1;->g:Lvd9;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lsi4;

    iget-object p0, p0, Lsi4;->b:Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;

    check-cast v1, Lti4;

    iget-object p1, v1, Lti4;->b:Lwi4;

    iget-object p1, p1, Lwi4;->a:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljh4;->onImageClick(Ljava/lang/String;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lrd1;

    iget-object p0, p0, Lrd1;->b:Lxh1;

    check-cast v1, Llh1;

    iget-object p1, v1, Llh1;->a:Lhd1;

    invoke-virtual {p1}, Lhd1;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lxh1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
