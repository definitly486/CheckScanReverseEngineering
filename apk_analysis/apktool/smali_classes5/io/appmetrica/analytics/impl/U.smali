.class public final Lio/appmetrica/analytics/impl/U;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/X;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/X;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/U;->a:Lio/appmetrica/analytics/impl/X;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lio/appmetrica/analytics/impl/U;->a:Lio/appmetrica/analytics/impl/X;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/X;->f:Lio/appmetrica/analytics/impl/K;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/X;->a:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lio/appmetrica/analytics/impl/I;

    invoke-direct {v1, v0, p0}, Lio/appmetrica/analytics/impl/I;-><init>(Lio/appmetrica/analytics/impl/K;Landroid/content/Context;)V

    invoke-static {v1}, Lio/appmetrica/analytics/impl/K;->a(Lio/appmetrica/analytics/coreapi/internal/backport/Provider;)Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    move-result-object p0

    return-object p0
.end method
