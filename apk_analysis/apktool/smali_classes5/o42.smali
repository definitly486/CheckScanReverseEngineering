.class public final Lo42;
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

    iput p2, p0, Lo42;->f:I

    iput-object p1, p0, Lo42;->g:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lo42;->f:I

    iget-object p0, p0, Lo42;->g:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsFragment;->o()Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter;->onTryCallVerificationClicked()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p0, Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;->o()Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;->onPromocodeClicked(I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->q()Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->onTryAgainSelectionOfTabs()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_2
    check-cast p1, Ln32;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lq42;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lq42;->a(Ln32;)Lm32;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
