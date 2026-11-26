.class public final Lio/appmetrica/analytics/impl/gc;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# static fields
.field public static final a:Lio/appmetrica/analytics/impl/gc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/gc;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/gc;-><init>()V

    sput-object v0, Lio/appmetrica/analytics/impl/gc;->a:Lio/appmetrica/analytics/impl/gc;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/locationapi/internal/LocationControllerObserver;

    invoke-interface {p1}, Lio/appmetrica/analytics/locationapi/internal/LocationControllerObserver;->stopLocationTracking()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
