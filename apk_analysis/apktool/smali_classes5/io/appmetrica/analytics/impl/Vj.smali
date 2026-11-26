.class public final Lio/appmetrica/analytics/impl/Vj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/ab;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/coreapi/event/AppMetricaEvent;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/coreapi/event/AppMetricaEvent;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Vj;->a:Lio/appmetrica/analytics/coreapi/event/AppMetricaEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/bb;)V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Vj;->a:Lio/appmetrica/analytics/coreapi/event/AppMetricaEvent;

    invoke-interface {p1, p0}, Lio/appmetrica/analytics/IReporter;->reportEvent(Lio/appmetrica/analytics/coreapi/event/AppMetricaEvent;)V

    return-void
.end method
