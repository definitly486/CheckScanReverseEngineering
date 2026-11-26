.class public final Lio/appmetrica/analytics/screenshot/impl/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/Converter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/screenshot/impl/y;)Lio/appmetrica/analytics/screenshot/impl/U;
    .locals 3

    .line 14
    new-instance p0, Lio/appmetrica/analytics/screenshot/impl/U;

    .line 15
    iget-boolean v0, p1, Lio/appmetrica/analytics/screenshot/impl/y;->a:Z

    .line 16
    iget-wide v1, p1, Lio/appmetrica/analytics/screenshot/impl/y;->b:J

    .line 17
    invoke-direct {p0, v0, v1, v2}, Lio/appmetrica/analytics/screenshot/impl/U;-><init>(ZJ)V

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/screenshot/impl/U;)Lio/appmetrica/analytics/screenshot/impl/y;
    .locals 2

    new-instance p0, Lio/appmetrica/analytics/screenshot/impl/y;

    invoke-direct {p0}, Lio/appmetrica/analytics/screenshot/impl/y;-><init>()V

    iget-boolean v0, p1, Lio/appmetrica/analytics/screenshot/impl/U;->a:Z

    iput-boolean v0, p0, Lio/appmetrica/analytics/screenshot/impl/y;->a:Z

    iget-wide v0, p1, Lio/appmetrica/analytics/screenshot/impl/U;->b:J

    iput-wide v0, p0, Lio/appmetrica/analytics/screenshot/impl/y;->b:J

    return-object p0
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/screenshot/impl/U;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/screenshot/impl/I;->a(Lio/appmetrica/analytics/screenshot/impl/U;)Lio/appmetrica/analytics/screenshot/impl/y;

    move-result-object p0

    return-object p0
.end method

.method public final toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lio/appmetrica/analytics/screenshot/impl/y;

    new-instance p0, Lio/appmetrica/analytics/screenshot/impl/U;

    iget-boolean v0, p1, Lio/appmetrica/analytics/screenshot/impl/y;->a:Z

    iget-wide v1, p1, Lio/appmetrica/analytics/screenshot/impl/y;->b:J

    invoke-direct {p0, v0, v1, v2}, Lio/appmetrica/analytics/screenshot/impl/U;-><init>(ZJ)V

    return-object p0
.end method
