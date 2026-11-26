.class public final synthetic Ll3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxl3;
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;
.implements Landroidx/fragment/app/FragmentResultListener;
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;
.implements Lcom/my/target/y1$a;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Ll3;->b:I

    iput-object p1, p0, Ll3;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lfo9;ILpfa;Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Ll3;->c:Ljava/lang/Object;

    check-cast p0, Lcom/my/target/d2$b;

    sget v0, Lcom/my/target/wh;->e:I

    if-eqz p0, :cond_0

    check-cast p0, Lcom/my/target/z1;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/my/target/z1;->g(Lfo9;ILpfa;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Ll3;->b:I

    iget-object p0, p0, Ll3;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter$f;

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;->e(Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter$f;Ljava/lang/Object;)Ldt6;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lw9;

    invoke-virtual {p0, p1}, Lw9;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lqx5;

    return-object p0

    :pswitch_1
    check-cast p0, Lp4;

    invoke-virtual {p0, p1}, Lp4;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lqq1;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ll3;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/camera/core/impl/CameraRepository;

    invoke-static {p0, p1}, Landroidx/camera/core/impl/CameraRepository;->b(Landroidx/camera/core/impl/CameraRepository;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public onFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Ll3;->c:Ljava/lang/Object;

    check-cast p0, Lyn3;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lyn3;->b:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lno3;

    sget-object p1, Lun3$c;->a:Lun3$c;

    invoke-virtual {p0, p1}, Lno3;->b(Lun3;)V

    return-void
.end method

.method public onRefresh()V
    .locals 1

    iget-object p0, p0, Ll3;->c:Ljava/lang/Object;

    check-cast p0, Lcom/warefly/checkscan/products/presentation/selections/view/SelectionsFragment;

    sget-object v0, Lcom/warefly/checkscan/products/presentation/selections/view/SelectionsFragment;->i:Lcom/warefly/checkscan/products/presentation/selections/view/SelectionsFragment$a;

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/selections/view/SelectionsFragment;->o()Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;->refreshContent()V

    return-void
.end method
