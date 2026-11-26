.class public final Lja3;
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

    iput p3, p0, Lja3;->f:I

    iput-object p1, p0, Lja3;->g:Lvd9;

    iput-object p2, p0, Lja3;->h:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lja3;->f:I

    iget-object v1, p0, Lja3;->h:Ljava/lang/Object;

    iget-object p0, p0, Lja3;->g:Lvd9;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lnl6;

    iget-object p0, p0, Lnl6;->b:Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;

    check-cast v1, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileInviteCodeBinding;

    iget-object p1, v1, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileInviteCodeBinding;->tvInviteCode:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lnl6$a;->onCopyClick(Ljava/lang/String;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Llh4;

    iget-object p0, p0, Llh4;->c:Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;

    check-cast v1, Lmh4;

    iget-object p1, v1, Lmh4;->a:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljh4;->onAgreementClick(Ljava/lang/String;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lia3;

    iget-object p0, p0, Lia3;->b:Lia3$b;

    check-cast v1, Loa3;

    iget p1, v1, Loa3;->a:I

    invoke-interface {p0, p1}, Lia3$b;->onFilterClicked(I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
