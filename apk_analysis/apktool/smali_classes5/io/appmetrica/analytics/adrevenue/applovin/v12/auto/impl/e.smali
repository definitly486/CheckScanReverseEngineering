.class public final Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;

.field public final b:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/d;

.field public final c:Lfr;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/e;->a:Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;

    iput-object p2, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/e;->b:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/d;

    new-instance p1, Lfr;

    invoke-direct {p1}, Lfr;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/e;->c:Lfr;

    return-void
.end method
