.class public final Lio/appmetrica/analytics/impl/M4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/va;

.field public final b:Lio/appmetrica/analytics/impl/Hi;

.field public final c:Lio/appmetrica/analytics/impl/ko;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/I4;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/va;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/va;-><init>(Lio/appmetrica/analytics/impl/I4;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/M4;->a:Lio/appmetrica/analytics/impl/va;

    new-instance v0, Lio/appmetrica/analytics/impl/Hi;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/Hi;-><init>(Lio/appmetrica/analytics/impl/I4;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/M4;->b:Lio/appmetrica/analytics/impl/Hi;

    new-instance v0, Lio/appmetrica/analytics/impl/ko;

    invoke-static {}, Lio/appmetrica/analytics/impl/Fa;->k()Lio/appmetrica/analytics/impl/Fa;

    move-result-object v1

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Fa;->h()Lio/appmetrica/analytics/impl/S6;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lio/appmetrica/analytics/impl/ko;-><init>(Lio/appmetrica/analytics/impl/I4;Lio/appmetrica/analytics/impl/S6;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/M4;->c:Lio/appmetrica/analytics/impl/ko;

    return-void
.end method
