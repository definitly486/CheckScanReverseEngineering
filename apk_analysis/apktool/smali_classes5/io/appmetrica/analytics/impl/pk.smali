.class public final Lio/appmetrica/analytics/impl/pk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceComponentModuleConfig;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/A4;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/A4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/pk;->a:Lio/appmetrica/analytics/impl/A4;

    return-void
.end method


# virtual methods
.method public final isRevenueAutoTrackingEnabled()Z
    .locals 1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/pk;->a:Lio/appmetrica/analytics/impl/A4;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/A4;->m:Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
