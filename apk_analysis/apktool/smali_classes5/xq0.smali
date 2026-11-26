.class public final Lxq0;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;I)V
    .locals 0

    iput p2, p0, Lxq0;->f:I

    iput-object p1, p0, Lxq0;->g:Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lxq0;->f:I

    iget-object p0, p0, Lxq0;->g:Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/support/presentation/form/view/SupportFormFragment;->o()Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/support/presentation/form/presenter/SupportFormPresenter;->onBackClicked()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_0
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;

    sget-object v0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->v:[Lze4;

    new-instance v0, Lk07;

    new-instance v1, Lar0;

    invoke-direct {v1, p1}, Lar0;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    new-instance v2, Lv8;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lv8;-><init>(Ljava/lang/Object;I)V

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, p1, v1, v2, v3}, Lk07;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lnl3;Lnl3;F)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result p1

    invoke-virtual {v0, p1}, Lk07;->b(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1}, Lk07;->a(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->o:Lk07;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
