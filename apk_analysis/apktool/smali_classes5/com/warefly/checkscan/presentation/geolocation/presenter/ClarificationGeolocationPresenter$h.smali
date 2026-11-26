.class public final Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter$h;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;->updateLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Ldu4;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter$h;->f:Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ldu4;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter$h;->f:Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationView;->showLoading(Z)V

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;->access$getFirstClosestRegions(Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;Ldu4;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
