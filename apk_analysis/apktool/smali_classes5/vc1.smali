.class public final Lvc1;
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
    iput p2, p0, Lvc1;->f:I

    iput-object p1, p0, Lvc1;->g:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Luh4;Lvh4;)V
    .locals 0

    const/4 p2, 0x1

    iput p2, p0, Lvc1;->f:I

    iput-object p1, p0, Lvc1;->g:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lvc1;->f:I

    iget-object p0, p0, Lvc1;->g:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lgz8;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lnz8;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lfz8;

    invoke-virtual {p1}, Lgz8;->c()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SUCCESS"

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lfz8$a;->Success:Lfz8$a;

    :goto_0
    move-object v1, p0

    goto :goto_1

    :cond_0
    sget-object p0, Lfz8$a;->Fail:Lfz8$a;

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Lgz8;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lgz8;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lgz8;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lgz8;->b()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lfz8;-><init>(Lfz8$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    check-cast p0, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageFragment;

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageFragment;->l:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageFragment;->m:Lcom/warefly/checkscan/presentation/cheques/view/MoreTagsDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_1
    new-instance v0, Lcom/warefly/checkscan/presentation/cheques/view/MoreTagsDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p1}, Lcom/warefly/checkscan/presentation/cheques/view/MoreTagsDialog;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageFragment;->m:Lcom/warefly/checkscan/presentation/cheques/view/MoreTagsDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_2
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lxl6;

    iget-object p0, p0, Lxl6;->b:Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;

    invoke-interface {p0}, Lxl6$a;->onLogoutClicked()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_2
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Luh4;

    iget-object p0, p0, Luh4;->b:Luh4$b;

    const-string p1, "checkscan://tasks"

    invoke-interface {p0, p1}, Luh4$b;->onLandingButtonClicked(Ljava/lang/String;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_3
    check-cast p1, Ljava/lang/Long;

    check-cast p0, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;

    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-interface {p0, v0}, Lwc1;->onDateSelected(Ljava/util/Date;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
