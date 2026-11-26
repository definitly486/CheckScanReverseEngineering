.class public final Ltk4;
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

    iput p3, p0, Ltk4;->f:I

    iput-object p1, p0, Ltk4;->g:Lvd9;

    iput-object p2, p0, Ltk4;->h:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Ltk4;->f:I

    iget-object v1, p0, Ltk4;->h:Ljava/lang/Object;

    iget-object p0, p0, Ltk4;->g:Lvd9;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lmm8;

    iget-object p0, p0, Lmm8;->b:Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;

    check-cast v1, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskDailyBannerBinding;

    invoke-virtual {v1}, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskDailyBannerBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lmm8$a;->onDailyBannerClicked(I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Luk4;

    iget-object p0, p0, Luk4;->b:Lcom/warefly/checkscan/presentation/landing/presenter/LandingPresenter;

    check-cast v1, Lvk4;

    iget-object p1, v1, Lvk4;->a:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljh4;->onUnselectedFieldClick(Ljava/lang/String;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
