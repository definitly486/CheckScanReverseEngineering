.class public final Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter$f;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;->getFirstClosestRegions(Ldu4;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Ll17;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter$f;->f:Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ll17;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter$f;->f:Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;->access$checkDefinedCity(Lcom/warefly/checkscan/presentation/geolocation/presenter/ClarificationGeolocationPresenter;Ll17;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
