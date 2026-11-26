.class public final Lil8;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkl8;Ljava/lang/Throwable;)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Lil8;->f:I

    iput-object p2, p0, Lil8;->g:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Ls09;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lil8;->f:I

    .line 10
    iput-object p1, p0, Lil8;->g:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lil8;->f:I

    iget-object p0, p0, Lil8;->g:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ls09;

    iget-object p0, p0, Ls09;->b:Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/presenter/TransferSBPPresenter;

    invoke-interface {p0}, Ls09$a;->onButtonClicked()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_0
    check-cast p1, Ltr4;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Ltr4;->b:Lx3;

    if-eqz p1, :cond_0

    new-instance v0, Lhl8;

    check-cast p0, Ljava/lang/Throwable;

    invoke-direct {v0, p1, p0}, Lhl8;-><init>(Lx3;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lkl8;->b(Lll3;)V

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
