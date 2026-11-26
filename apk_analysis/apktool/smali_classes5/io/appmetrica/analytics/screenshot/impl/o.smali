.class public final Lio/appmetrica/analytics/screenshot/impl/o;
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
.method public final a(Lio/appmetrica/analytics/screenshot/impl/x;)Lio/appmetrica/analytics/screenshot/impl/O;
    .locals 4

    .line 27
    new-instance p0, Lio/appmetrica/analytics/screenshot/impl/O;

    .line 28
    iget-boolean v0, p1, Lio/appmetrica/analytics/screenshot/impl/x;->a:Z

    .line 29
    iget-object v1, p1, Lio/appmetrica/analytics/screenshot/impl/x;->c:[Ljava/lang/String;

    invoke-static {v1}, Lyr;->h0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 30
    iget-wide v2, p1, Lio/appmetrica/analytics/screenshot/impl/x;->b:J

    .line 31
    invoke-direct {p0, v0, v1, v2, v3}, Lio/appmetrica/analytics/screenshot/impl/O;-><init>(ZLjava/util/List;J)V

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/screenshot/impl/O;)Lio/appmetrica/analytics/screenshot/impl/x;
    .locals 2

    new-instance p0, Lio/appmetrica/analytics/screenshot/impl/x;

    invoke-direct {p0}, Lio/appmetrica/analytics/screenshot/impl/x;-><init>()V

    iget-boolean v0, p1, Lio/appmetrica/analytics/screenshot/impl/O;->a:Z

    iput-boolean v0, p0, Lio/appmetrica/analytics/screenshot/impl/x;->a:Z

    iget-object v0, p1, Lio/appmetrica/analytics/screenshot/impl/O;->b:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lio/appmetrica/analytics/screenshot/impl/x;->c:[Ljava/lang/String;

    iget-wide v0, p1, Lio/appmetrica/analytics/screenshot/impl/O;->c:J

    iput-wide v0, p0, Lio/appmetrica/analytics/screenshot/impl/x;->b:J

    return-object p0
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/screenshot/impl/O;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/screenshot/impl/o;->a(Lio/appmetrica/analytics/screenshot/impl/O;)Lio/appmetrica/analytics/screenshot/impl/x;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/screenshot/impl/x;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/screenshot/impl/o;->a(Lio/appmetrica/analytics/screenshot/impl/x;)Lio/appmetrica/analytics/screenshot/impl/O;

    move-result-object p0

    return-object p0
.end method
