.class public final Lio/appmetrica/analytics/impl/J7;
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
.method public final a(Ljava/math/BigDecimal;)Lio/appmetrica/analytics/impl/r8;
    .locals 2

    invoke-static {p1}, Lio/appmetrica/analytics/coreutils/internal/proto/DecimalProtoModel;->fromDecimal(Ljava/math/BigDecimal;)Lio/appmetrica/analytics/coreutils/internal/proto/DecimalProtoModel;

    move-result-object p0

    new-instance p1, Lio/appmetrica/analytics/impl/r8;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/r8;-><init>()V

    invoke-virtual {p0}, Lio/appmetrica/analytics/coreutils/internal/proto/DecimalProtoModel;->getMantissa()J

    move-result-wide v0

    iput-wide v0, p1, Lio/appmetrica/analytics/impl/r8;->a:J

    invoke-virtual {p0}, Lio/appmetrica/analytics/coreutils/internal/proto/DecimalProtoModel;->getExponent()I

    move-result p0

    iput p0, p1, Lio/appmetrica/analytics/impl/r8;->b:I

    return-object p1
.end method

.method public final a(Lio/appmetrica/analytics/impl/r8;)Ljava/math/BigDecimal;
    .locals 0

    .line 22
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/math/BigDecimal;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/J7;->a(Ljava/math/BigDecimal;)Lio/appmetrica/analytics/impl/r8;

    move-result-object p0

    return-object p0
.end method

.method public final toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/r8;

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
