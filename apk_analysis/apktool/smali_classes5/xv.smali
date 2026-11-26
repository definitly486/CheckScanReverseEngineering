.class public final Lxv;
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

    iput p2, p0, Lxv;->f:I

    iput-object p1, p0, Lxv;->g:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lxv;->f:I

    iget-object p0, p0, Lxv;->g:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lfl6;

    iget-object p0, p0, Lfl6;->b:Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;

    invoke-interface {p0}, Lfl6$a;->onPhotoClicked()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_0
    check-cast p1, Lw99;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lkv;

    invoke-virtual {p1}, Lw99;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lw99;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lkv;->c(Ljava/lang/String;Ljava/lang/String;)Le08;

    move-result-object p0

    new-instance p1, Lvv;

    const/4 v0, 0x0

    sget-object v1, Lwv;->f:Lwv;

    invoke-direct {p1, v1, v0}, Lvv;-><init>(Lnl3;I)V

    new-instance v0, Lp08;

    invoke-direct {v0, p0, p1}, Lp08;-><init>(Lmz7;Lxl3;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
