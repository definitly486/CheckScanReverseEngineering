.class public final Lio/appmetrica/analytics/impl/B9;
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
.method public final a(Lio/appmetrica/analytics/impl/z9;)Lio/appmetrica/analytics/impl/A9;
    .locals 1

    .line 16
    new-instance p0, Lio/appmetrica/analytics/impl/A9;

    new-instance v0, Ljava/lang/String;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/z9;->a:[B

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/A9;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/A9;)Lio/appmetrica/analytics/impl/z9;
    .locals 0

    new-instance p0, Lio/appmetrica/analytics/impl/z9;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/z9;-><init>()V

    iget-object p1, p1, Lio/appmetrica/analytics/impl/A9;->a:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/z9;->a:[B

    :cond_0
    return-object p0
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/A9;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/B9;->a(Lio/appmetrica/analytics/impl/A9;)Lio/appmetrica/analytics/impl/z9;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/z9;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/B9;->a(Lio/appmetrica/analytics/impl/z9;)Lio/appmetrica/analytics/impl/A9;

    move-result-object p0

    return-object p0
.end method
