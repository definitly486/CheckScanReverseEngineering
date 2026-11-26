.class public final Lio/appmetrica/analytics/impl/Ie;
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
.method public final a(Lio/appmetrica/analytics/impl/Jm;)Lio/appmetrica/analytics/impl/He;
    .locals 4

    .line 14
    new-instance p0, Lio/appmetrica/analytics/impl/He;

    iget-wide v0, p1, Lio/appmetrica/analytics/impl/Jm;->a:J

    iget-wide v2, p1, Lio/appmetrica/analytics/impl/Jm;->b:J

    invoke-direct {p0, v0, v1, v2, v3}, Lio/appmetrica/analytics/impl/He;-><init>(JJ)V

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/He;)Lio/appmetrica/analytics/impl/Jm;
    .locals 2

    new-instance p0, Lio/appmetrica/analytics/impl/Jm;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/Jm;-><init>()V

    iget-wide v0, p1, Lio/appmetrica/analytics/impl/He;->a:J

    iput-wide v0, p0, Lio/appmetrica/analytics/impl/Jm;->a:J

    iget-wide v0, p1, Lio/appmetrica/analytics/impl/He;->b:J

    iput-wide v0, p0, Lio/appmetrica/analytics/impl/Jm;->b:J

    return-object p0
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/He;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Ie;->a(Lio/appmetrica/analytics/impl/He;)Lio/appmetrica/analytics/impl/Jm;

    move-result-object p0

    return-object p0
.end method

.method public final toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Lio/appmetrica/analytics/impl/Jm;

    new-instance p0, Lio/appmetrica/analytics/impl/He;

    iget-wide v0, p1, Lio/appmetrica/analytics/impl/Jm;->a:J

    iget-wide v2, p1, Lio/appmetrica/analytics/impl/Jm;->b:J

    invoke-direct {p0, v0, v1, v2, v3}, Lio/appmetrica/analytics/impl/He;-><init>(JJ)V

    return-object p0
.end method
