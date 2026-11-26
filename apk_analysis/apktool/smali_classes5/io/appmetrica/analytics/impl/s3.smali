.class public final Lio/appmetrica/analytics/impl/s3;
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
.method public final a(Lio/appmetrica/analytics/impl/q3;)Lio/appmetrica/analytics/impl/Em;
    .locals 2

    new-instance p0, Lio/appmetrica/analytics/impl/Em;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/Em;-><init>()V

    iget-wide v0, p1, Lio/appmetrica/analytics/impl/q3;->a:J

    iput-wide v0, p0, Lio/appmetrica/analytics/impl/Em;->a:J

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/Em;)Lio/appmetrica/analytics/impl/q3;
    .locals 2

    .line 10
    new-instance p0, Lio/appmetrica/analytics/impl/q3;

    iget-wide v0, p1, Lio/appmetrica/analytics/impl/Em;->a:J

    invoke-direct {p0, v0, v1}, Lio/appmetrica/analytics/impl/q3;-><init>(J)V

    return-object p0
.end method

.method public final fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lio/appmetrica/analytics/impl/q3;

    new-instance p0, Lio/appmetrica/analytics/impl/Em;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/Em;-><init>()V

    iget-wide v0, p1, Lio/appmetrica/analytics/impl/q3;->a:J

    iput-wide v0, p0, Lio/appmetrica/analytics/impl/Em;->a:J

    return-object p0
.end method

.method public final toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lio/appmetrica/analytics/impl/Em;

    new-instance p0, Lio/appmetrica/analytics/impl/q3;

    iget-wide v0, p1, Lio/appmetrica/analytics/impl/Em;->a:J

    invoke-direct {p0, v0, v1}, Lio/appmetrica/analytics/impl/q3;-><init>(J)V

    return-object p0
.end method
