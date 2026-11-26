.class public final synthetic Ldi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxl3;
.implements Landroidx/activity/result/ActivityResultCallback;
.implements Landroidx/arch/core/util/Function;
.implements Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient$EngagementMetricsLoggerInterface;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Ldi;->b:I

    iput-object p1, p0, Ldi;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Ldi;->b:I

    iget-object p0, p0, Ldi;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lbp4;

    invoke-static {p0, p1}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->e(Lbp4;Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lmv;

    invoke-virtual {p0, p1}, Lmv;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc18;

    return-object p0

    :pswitch_1
    check-cast p0, Lfi;

    invoke-virtual {p0, p1}, Lfi;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfm2;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public logEvent([B)V
    .locals 0

    iget-object p0, p0, Ldi;->c:Ljava/lang/Object;

    check-cast p0, Lq29;

    invoke-static {p0, p1}, Lcom/google/firebase/inappmessaging/internal/injection/modules/TransportClientModule;->a(Lq29;[B)V

    return-void
.end method

.method public onActivityResult(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Ldi;->b:I

    iget-object p0, p0, Ldi;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/warefly/checkscan/presentation/geolocation/view/ClarificationGeolocationFragment;

    check-cast p1, Ljava/util/Map;

    sget-object v0, Lcom/warefly/checkscan/presentation/geolocation/view/ClarificationGeolocationFragment;->i:[Lze4;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/geolocation/view/ClarificationGeolocationFragment;->o()Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;->setLocationProperty(Z)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/geolocation/view/ClarificationGeolocationFragment;->o()Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;->updateLocation()V

    goto :goto_0

    :cond_0
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/geolocation/view/ClarificationGeolocationFragment;->o()Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;->setLocationProperty(Z)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/geolocation/view/ClarificationGeolocationFragment;->o()Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;->updateLocation()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/geolocation/view/ClarificationGeolocationFragment;->o()Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;->setLocationProperty(Z)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/geolocation/view/ClarificationGeolocationFragment;->o()Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;->getBonusRegionByIP()V

    :goto_0
    return-void

    :pswitch_0
    check-cast p0, Lcom/warefly/checkscan/presentation/brandlink/view/BrandlinkFragment;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/brandlink/view/BrandlinkFragment;->i:Lst0$a;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lst0$a;->a:Landroid/webkit/PermissionRequest;

    invoke-virtual {p0}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/webkit/PermissionRequest;->grant([Ljava/lang/String;)V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
