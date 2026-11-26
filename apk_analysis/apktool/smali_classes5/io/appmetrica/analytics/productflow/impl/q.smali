.class public final Lio/appmetrica/analytics/productflow/impl/q;
.super Lio/appmetrica/analytics/coreapi/event/AppMetricaEvent;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/coreapi/internal/event/AppMetricaEventData;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/coreapi/internal/event/AppMetricaEventData;)V
    .locals 0

    invoke-direct {p0}, Lio/appmetrica/analytics/coreapi/event/AppMetricaEvent;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/productflow/impl/q;->a:Lio/appmetrica/analytics/coreapi/internal/event/AppMetricaEventData;

    return-void
.end method


# virtual methods
.method public final getEventData()Lio/appmetrica/analytics/coreapi/internal/event/AppMetricaEventData;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/productflow/impl/q;->a:Lio/appmetrica/analytics/coreapi/internal/event/AppMetricaEventData;

    return-object p0
.end method
