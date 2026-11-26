.class public final Lio/appmetrica/analytics/impl/F;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/AdRevenue;

.field public final b:Z

.field public final c:Lio/appmetrica/analytics/impl/u;

.field public final d:Lio/appmetrica/analytics/coreutils/internal/limitation/StringTrimmer;

.field public final e:Lio/appmetrica/analytics/coreutils/internal/limitation/StringByBytesTrimmer;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/AdRevenue;ZLio/appmetrica/analytics/impl/rn;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/F;->a:Lio/appmetrica/analytics/AdRevenue;

    iput-boolean p2, p0, Lio/appmetrica/analytics/impl/F;->b:Z

    iput-object p3, p0, Lio/appmetrica/analytics/impl/F;->c:Lio/appmetrica/analytics/impl/u;

    new-instance p1, Lio/appmetrica/analytics/coreutils/internal/limitation/StringTrimmer;

    const/16 p2, 0x64

    const-string p3, "ad revenue strings"

    invoke-direct {p1, p2, p3, p4}, Lio/appmetrica/analytics/coreutils/internal/limitation/StringTrimmer;-><init>(ILjava/lang/String;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/F;->d:Lio/appmetrica/analytics/coreutils/internal/limitation/StringTrimmer;

    new-instance p1, Lio/appmetrica/analytics/coreutils/internal/limitation/StringByBytesTrimmer;

    const/16 p2, 0x7800

    const-string p3, "ad revenue payload"

    invoke-direct {p1, p2, p3, p4}, Lio/appmetrica/analytics/coreutils/internal/limitation/StringByBytesTrimmer;-><init>(ILjava/lang/String;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/F;->e:Lio/appmetrica/analytics/coreutils/internal/limitation/StringByBytesTrimmer;

    return-void
.end method


# virtual methods
.method public final a()Lb36;
    .locals 10

    new-instance v0, Lio/appmetrica/analytics/impl/s;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/s;-><init>()V

    iget-object v1, p0, Lio/appmetrica/analytics/impl/F;->a:Lio/appmetrica/analytics/AdRevenue;

    iget-object v1, v1, Lio/appmetrica/analytics/AdRevenue;->adNetwork:Ljava/lang/String;

    new-instance v2, Lio/appmetrica/analytics/impl/y;

    invoke-direct {v2, v0}, Lio/appmetrica/analytics/impl/y;-><init>(Lio/appmetrica/analytics/impl/s;)V

    new-instance v3, Lb36;

    invoke-direct {v3, v1, v2}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lio/appmetrica/analytics/impl/F;->a:Lio/appmetrica/analytics/AdRevenue;

    iget-object v1, v1, Lio/appmetrica/analytics/AdRevenue;->adPlacementId:Ljava/lang/String;

    new-instance v2, Lio/appmetrica/analytics/impl/z;

    invoke-direct {v2, v0}, Lio/appmetrica/analytics/impl/z;-><init>(Lio/appmetrica/analytics/impl/s;)V

    new-instance v4, Lb36;

    invoke-direct {v4, v1, v2}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lio/appmetrica/analytics/impl/F;->a:Lio/appmetrica/analytics/AdRevenue;

    iget-object v1, v1, Lio/appmetrica/analytics/AdRevenue;->adPlacementName:Ljava/lang/String;

    new-instance v2, Lio/appmetrica/analytics/impl/A;

    invoke-direct {v2, v0}, Lio/appmetrica/analytics/impl/A;-><init>(Lio/appmetrica/analytics/impl/s;)V

    new-instance v5, Lb36;

    invoke-direct {v5, v1, v2}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lio/appmetrica/analytics/impl/F;->a:Lio/appmetrica/analytics/AdRevenue;

    iget-object v1, v1, Lio/appmetrica/analytics/AdRevenue;->adUnitId:Ljava/lang/String;

    new-instance v2, Lio/appmetrica/analytics/impl/B;

    invoke-direct {v2, v0}, Lio/appmetrica/analytics/impl/B;-><init>(Lio/appmetrica/analytics/impl/s;)V

    new-instance v6, Lb36;

    invoke-direct {v6, v1, v2}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lio/appmetrica/analytics/impl/F;->a:Lio/appmetrica/analytics/AdRevenue;

    iget-object v1, v1, Lio/appmetrica/analytics/AdRevenue;->adUnitName:Ljava/lang/String;

    new-instance v2, Lio/appmetrica/analytics/impl/C;

    invoke-direct {v2, v0}, Lio/appmetrica/analytics/impl/C;-><init>(Lio/appmetrica/analytics/impl/s;)V

    new-instance v7, Lb36;

    invoke-direct {v7, v1, v2}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lio/appmetrica/analytics/impl/F;->a:Lio/appmetrica/analytics/AdRevenue;

    iget-object v1, v1, Lio/appmetrica/analytics/AdRevenue;->precision:Ljava/lang/String;

    new-instance v2, Lio/appmetrica/analytics/impl/D;

    invoke-direct {v2, v0}, Lio/appmetrica/analytics/impl/D;-><init>(Lio/appmetrica/analytics/impl/s;)V

    new-instance v8, Lb36;

    invoke-direct {v8, v1, v2}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lio/appmetrica/analytics/impl/F;->a:Lio/appmetrica/analytics/AdRevenue;

    iget-object v1, v1, Lio/appmetrica/analytics/AdRevenue;->currency:Ljava/util/Currency;

    invoke-virtual {v1}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lio/appmetrica/analytics/impl/E;

    invoke-direct {v2, v0}, Lio/appmetrica/analytics/impl/E;-><init>(Lio/appmetrica/analytics/impl/s;)V

    new-instance v9, Lb36;

    invoke-direct {v9, v1, v2}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array/range {v3 .. v9}, [Lb36;

    move-result-object v1

    invoke-static {v1}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb36;

    iget-object v5, v4, Lb36;->b:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v4, v4, Lb36;->c:Ljava/lang/Object;

    check-cast v4, Lnl3;

    iget-object v6, p0, Lio/appmetrica/analytics/impl/F;->d:Lio/appmetrica/analytics/coreutils/internal/limitation/StringTrimmer;

    invoke-virtual {v6, v5}, Lio/appmetrica/analytics/coreutils/internal/limitation/StringTrimmer;->trim(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v5}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->stringToBytesForProtobuf(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v6}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->stringToBytesForProtobuf(Ljava/lang/String;)[B

    move-result-object v6

    invoke-interface {v4, v6}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v4, v5

    array-length v5, v6

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    goto :goto_0

    :cond_0
    sget-object v1, Lio/appmetrica/analytics/impl/G;->a:Ljava/util/Map;

    iget-object v4, p0, Lio/appmetrica/analytics/impl/F;->a:Lio/appmetrica/analytics/AdRevenue;

    iget-object v4, v4, Lio/appmetrica/analytics/AdRevenue;->adType:Lio/appmetrica/analytics/AdType;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_1
    iput v2, v0, Lio/appmetrica/analytics/impl/s;->d:I

    new-instance v1, Lio/appmetrica/analytics/impl/r;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/r;-><init>()V

    sget-object v2, Lio/appmetrica/analytics/coreutils/internal/proto/DecimalProtoModel;->Companion:Lio/appmetrica/analytics/coreutils/internal/proto/DecimalProtoModel$Companion;

    iget-object v4, p0, Lio/appmetrica/analytics/impl/F;->a:Lio/appmetrica/analytics/AdRevenue;

    iget-object v4, v4, Lio/appmetrica/analytics/AdRevenue;->adRevenue:Ljava/math/BigDecimal;

    invoke-virtual {v2, v4}, Lio/appmetrica/analytics/coreutils/internal/proto/DecimalProtoModel$Companion;->fromDecimal(Ljava/math/BigDecimal;)Lio/appmetrica/analytics/coreutils/internal/proto/DecimalProtoModel;

    move-result-object v2

    invoke-virtual {v2}, Lio/appmetrica/analytics/coreutils/internal/proto/DecimalProtoModel;->getMantissa()J

    move-result-wide v4

    iput-wide v4, v1, Lio/appmetrica/analytics/impl/r;->a:J

    invoke-virtual {v2}, Lio/appmetrica/analytics/coreutils/internal/proto/DecimalProtoModel;->getExponent()I

    move-result v2

    iput v2, v1, Lio/appmetrica/analytics/impl/r;->b:I

    iput-object v1, v0, Lio/appmetrica/analytics/impl/s;->b:Lio/appmetrica/analytics/impl/r;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/F;->a:Lio/appmetrica/analytics/AdRevenue;

    iget-object v1, v1, Lio/appmetrica/analytics/AdRevenue;->payload:Ljava/util/Map;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/F;->c:Lio/appmetrica/analytics/impl/u;

    if-eqz v1, :cond_2

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    goto :goto_1

    :cond_2
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    :goto_1
    invoke-interface {v2, v4}, Lio/appmetrica/analytics/impl/u;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lio/appmetrica/analytics/impl/ub;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/appmetrica/analytics/impl/F;->e:Lio/appmetrica/analytics/coreutils/internal/limitation/StringByBytesTrimmer;

    invoke-virtual {v2, v1}, Lio/appmetrica/analytics/coreutils/internal/limitation/StringByBytesTrimmer;->trim(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->stringToBytesForProtobuf(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, v0, Lio/appmetrica/analytics/impl/s;->k:[B

    invoke-static {v1}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->stringToBytesForProtobuf(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    array-length v2, v2

    sub-int/2addr v1, v2

    add-int/2addr v1, v3

    iget-boolean p0, p0, Lio/appmetrica/analytics/impl/F;->b:Z

    if-eqz p0, :cond_3

    sget-object p0, Lio/appmetrica/analytics/impl/t;->a:[Lio/appmetrica/analytics/impl/t;

    const-string p0, "autocollected"

    sget-object v2, Lha1;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    iput-object p0, v0, Lio/appmetrica/analytics/impl/s;->a:[B

    :cond_3
    invoke-static {v0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->toByteArray(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)[B

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lb36;

    invoke-direct {v1, p0, v0}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method
