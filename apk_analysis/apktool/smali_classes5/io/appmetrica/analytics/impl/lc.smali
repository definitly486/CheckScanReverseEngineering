.class public final Lio/appmetrica/analytics/impl/lc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/locationapi/internal/LocationReceiverProviderFactory;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/mc;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/mc;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/mc;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/lc;->a:Lio/appmetrica/analytics/impl/mc;

    return-void
.end method


# virtual methods
.method public final getPassiveLocationReceiverProvider()Lio/appmetrica/analytics/locationapi/internal/LocationReceiverProvider;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/lc;->a:Lio/appmetrica/analytics/impl/mc;

    return-object p0
.end method
