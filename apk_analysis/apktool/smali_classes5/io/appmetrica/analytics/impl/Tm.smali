.class public final Lio/appmetrica/analytics/impl/Tm;
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
.method public final a(Lio/appmetrica/analytics/impl/Sm;)Lio/appmetrica/analytics/impl/Km;
    .locals 0

    new-instance p0, Lio/appmetrica/analytics/impl/Km;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/Km;-><init>()V

    iget p1, p1, Lio/appmetrica/analytics/impl/Sm;->a:I

    iput p1, p0, Lio/appmetrica/analytics/impl/Km;->a:I

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/Km;)Lio/appmetrica/analytics/impl/Sm;
    .locals 0

    .line 10
    new-instance p0, Lio/appmetrica/analytics/impl/Sm;

    iget p1, p1, Lio/appmetrica/analytics/impl/Km;->a:I

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/Sm;-><init>(I)V

    return-object p0
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/Sm;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Tm;->a(Lio/appmetrica/analytics/impl/Sm;)Lio/appmetrica/analytics/impl/Km;

    move-result-object p0

    return-object p0
.end method

.method public final toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/Km;

    new-instance p0, Lio/appmetrica/analytics/impl/Sm;

    iget p1, p1, Lio/appmetrica/analytics/impl/Km;->a:I

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/Sm;-><init>(I)V

    return-object p0
.end method
