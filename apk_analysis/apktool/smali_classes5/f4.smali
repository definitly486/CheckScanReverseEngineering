.class public final Lf4;
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

    iput p2, p0, Lf4;->f:I

    iput-object p1, p0, Lf4;->g:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lf4;->f:I

    iget-object p0, p0, Lf4;->g:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/warefly/checkscan/auth/presentation/callVerification/view/VerificationCallFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/presentation/callVerification/view/VerificationCallFragment;->o()Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter;->onTrySmsVerificationClicked()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    check-cast p0, Lc4;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lc4;->b:Lj5;

    iget-object p0, p0, Lc4;->g:Lhu4;

    new-instance v0, Lkp3;

    invoke-interface {p0}, Lhu4;->d()D

    move-result-wide v1

    invoke-interface {p0}, Lhu4;->c()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lkp3;-><init>(DD)V

    invoke-interface {p1, v0}, Lj5;->h(Lkp3;)Lqp1;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Laq1;->b:Laq1;

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
