.class public final Lio/appmetrica/analytics/impl/W;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/X;

.field public final synthetic b:Lio/appmetrica/analytics/impl/Pi;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/X;Lio/appmetrica/analytics/impl/Xn;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/W;->a:Lio/appmetrica/analytics/impl/X;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/W;->b:Lio/appmetrica/analytics/impl/Pi;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/impl/W;->a:Lio/appmetrica/analytics/impl/X;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/X;->h:Lio/appmetrica/analytics/impl/K;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/X;->a:Landroid/content/Context;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/W;->b:Lio/appmetrica/analytics/impl/Pi;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lio/appmetrica/analytics/impl/J;

    invoke-direct {v2, v1, v0, p0}, Lio/appmetrica/analytics/impl/J;-><init>(Lio/appmetrica/analytics/impl/K;Landroid/content/Context;Lio/appmetrica/analytics/impl/Pi;)V

    invoke-static {v2}, Lio/appmetrica/analytics/impl/K;->a(Lio/appmetrica/analytics/coreapi/internal/backport/Provider;)Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    move-result-object p0

    return-object p0
.end method
