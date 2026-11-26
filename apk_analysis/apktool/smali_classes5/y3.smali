.class public final synthetic Ly3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxl3;
.implements Lcom/warefly/checkscan/calendarspinner/widgets/WheelDayPicker$a;
.implements Lze6;
.implements Landroidx/activity/result/ActivityResultCallback;
.implements Landroidx/fragment/app/FragmentResultListener;
.implements Lcom/my/target/m1$b;
.implements Lyads/wu5;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/my/target/r;Lao9;)V
    .locals 0

    const/4 p1, 0x6

    iput p1, p0, Ly3;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ly3;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 9
    iput p2, p0, Ly3;->b:I

    iput-object p1, p0, Ly3;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    iget-object p0, p0, Ly3;->c:Ljava/lang/Object;

    check-cast p0, Lao9;

    iget-object p0, p0, Lao9;->B:Ljava/lang/String;

    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Ly3;->b:I

    iget-object p0, p0, Ly3;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lnl3;

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :pswitch_0
    check-cast p0, Ls4;

    invoke-virtual {p0, p1}, Ls4;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lz79$a;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public b(Lyads/xu5;)V
    .locals 0

    iget-object p0, p0, Ly3;->c:Ljava/lang/Object;

    check-cast p0, Lyads/nr;

    invoke-virtual {p0, p1}, Lyads/nr;->a(Landroid/widget/TextView;)V

    return-void
.end method

.method public onActivityResult(Ljava/lang/Object;)V
    .locals 2

    iget-object p0, p0, Ly3;->c:Ljava/lang/Object;

    check-cast p0, Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment;

    check-cast p1, Ljava/util/Map;

    sget-object v0, Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment;->l:Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment;->o()Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;->showCitySelection()V

    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/warefly/checkscan/personalform/presentation/form/view/PersonalDataFormFragment;->o()Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/personalform/presentation/form/presenter/PersonalDataFormPresenter;->updateLocation()V

    return-void
.end method

.method public onFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object p0, p0, Ly3;->c:Ljava/lang/Object;

    check-cast p0, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;

    sget-object v0, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;->j:[Lze4;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Landroidx/fragment/app/FragmentKt;->clearFragmentResult(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    const-string p1, "SELECTED_HOUR"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "SELECTED_MINUTE"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandFragment;->o()Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;->onTimeSelected(II)V

    return-void
.end method

.method public test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Ly3;->c:Ljava/lang/Object;

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter$k;

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter;->g(Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/NewOnlineShopPresenter$k;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
