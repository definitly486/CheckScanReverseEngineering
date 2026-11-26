.class public final Lio/appmetrica/analytics/impl/P9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/ProtobufConverter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/O9;)Lio/appmetrica/analytics/impl/Gm;
    .locals 2

    new-instance p0, Lio/appmetrica/analytics/impl/Gm;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/Gm;-><init>()V

    if-eqz p1, :cond_0

    iget-wide v0, p1, Lio/appmetrica/analytics/impl/O9;->a:J

    iput-wide v0, p0, Lio/appmetrica/analytics/impl/Gm;->a:J

    :cond_0
    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/Gm;)Lio/appmetrica/analytics/impl/O9;
    .locals 2

    .line 12
    new-instance p0, Lio/appmetrica/analytics/impl/O9;

    .line 13
    iget-wide v0, p1, Lio/appmetrica/analytics/impl/Gm;->a:J

    .line 14
    invoke-direct {p0, v0, v1}, Lio/appmetrica/analytics/impl/O9;-><init>(J)V

    return-object p0
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/O9;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/P9;->a(Lio/appmetrica/analytics/impl/O9;)Lio/appmetrica/analytics/impl/Gm;

    move-result-object p0

    return-object p0
.end method

.method public final toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lio/appmetrica/analytics/impl/Gm;

    new-instance p0, Lio/appmetrica/analytics/impl/O9;

    iget-wide v0, p1, Lio/appmetrica/analytics/impl/Gm;->a:J

    invoke-direct {p0, v0, v1}, Lio/appmetrica/analytics/impl/O9;-><init>(J)V

    return-object p0
.end method
