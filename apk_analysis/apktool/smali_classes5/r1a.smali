.class public final synthetic Lr1a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/servicecomponents/applicationstate/ApplicationStateObserver;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/billing/impl/m;


# direct methods
.method public synthetic constructor <init>(Lio/appmetrica/analytics/billing/impl/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr1a;->a:Lio/appmetrica/analytics/billing/impl/m;

    return-void
.end method


# virtual methods
.method public final onApplicationStateChanged(Lio/appmetrica/analytics/coreapi/internal/servicecomponents/applicationstate/ApplicationState;)V
    .locals 0

    iget-object p0, p0, Lr1a;->a:Lio/appmetrica/analytics/billing/impl/m;

    invoke-static {p0, p1}, Lio/appmetrica/analytics/billing/impl/m;->a(Lio/appmetrica/analytics/billing/impl/m;Lio/appmetrica/analytics/coreapi/internal/servicecomponents/applicationstate/ApplicationState;)V

    return-void
.end method
