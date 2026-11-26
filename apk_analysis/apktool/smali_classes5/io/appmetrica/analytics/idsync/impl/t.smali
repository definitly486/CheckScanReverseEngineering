.class public final Lio/appmetrica/analytics/idsync/impl/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/idsync/impl/y;

.field public final b:Lio/appmetrica/analytics/idsync/impl/w;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/idsync/impl/y;

    invoke-direct {v0}, Lio/appmetrica/analytics/idsync/impl/y;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/idsync/impl/t;->a:Lio/appmetrica/analytics/idsync/impl/y;

    new-instance v0, Lio/appmetrica/analytics/idsync/impl/w;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/idsync/impl/w;-><init>(Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;)V

    iput-object v0, p0, Lio/appmetrica/analytics/idsync/impl/t;->b:Lio/appmetrica/analytics/idsync/impl/w;

    return-void
.end method
