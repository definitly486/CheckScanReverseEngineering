.class public final Lio/appmetrica/analytics/coreutils/internal/proto/DecimalProtoModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appmetrica/analytics/coreutils/internal/proto/DecimalProtoModel$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/appmetrica/analytics/coreutils/internal/proto/DecimalProtoModel$Companion;

.field private static final c:Ljava/math/BigInteger;

.field private static final d:Ljava/math/BigInteger;


# instance fields
.field private final a:J

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/proto/DecimalProtoModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/proto/DecimalProtoModel$Companion;-><init>(Ljh2;)V

    sput-object v0, Lio/appmetrica/analytics/coreutils/internal/proto/DecimalProtoModel;->Companion:Lio/appmetrica/analytics/coreutils/internal/proto/DecimalProtoModel$Companion;

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lio/appmetrica/analytics/coreutils/internal/proto/DecimalProtoModel;->c:Ljava/math/BigInteger;

    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lio/appmetrica/analytics/coreutils/internal/proto/DecimalProtoModel;->d:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lio/appmetrica/analytics/coreutils/internal/proto/DecimalProtoModel;->a:J

    iput p3, p0, Lio/appmetrica/analytics/coreutils/internal/proto/DecimalProtoModel;->b:I

    return-void
.end method

.method public static final synthetic access$getMAX_LONG$cp()Ljava/math/BigInteger;
    .locals 1

    sget-object v0, Lio/appmetrica/analytics/coreutils/internal/proto/DecimalProtoModel;->c:Ljava/math/BigInteger;

    return-object v0
.end method

.method public static final synthetic access$getMIN_LONG$cp()Ljava/math/BigInteger;
    .locals 1

    sget-object v0, Lio/appmetrica/analytics/coreutils/internal/proto/DecimalProtoModel;->d:Ljava/math/BigInteger;

    return-object v0
.end method

.method public static synthetic copy$default(Lio/appmetrica/analytics/coreutils/internal/proto/DecimalProtoModel;JIILjava/lang/Object;)Lio/appmetrica/analytics/coreutils/internal/proto/DecimalProtoModel;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-wide p1, p0, Lio/appmetrica/analytics/coreutils/internal/proto/DecimalProtoModel;->a:J

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    iget p3, p0, Lio/appmetrica/analytics/coreutils/internal/proto/DecimalProtoModel;->b:I

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lio/appmetrica/analytics/coreutils/internal/proto/DecimalProtoModel;->copy(JI)Lio/appmetrica/analytics/coreutils/internal/proto/DecimalProtoModel;

    move-result-object p0

    return-object p0
.end method

.method public static final fromDecimal(Ljava/math/BigDecimal;)Lio/appmetrica/analytics/coreutils/internal/proto/DecimalProtoModel;
    .locals 1

    sget-object v0, Lio/appmetrica/analytics/coreutils/internal/proto/DecimalProtoModel;->Companion:Lio/appmetrica/analytics/coreutils/internal/proto/DecimalProtoModel$Companion;

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/coreutils/internal/proto/DecimalProtoModel$Companion;->fromDecimal(Ljava/math/BigDecimal;)Lio/appmetrica/analytics/coreutils/internal/proto/DecimalProtoModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lio/appmetrica/analytics/coreutils/internal/proto/DecimalProtoModel;->a:J

    return-wide v0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Lio/appmetrica/analytics/coreutils/internal/proto/DecimalProtoModel;->b:I

    return p0
.end method

.method public final copy(JI)Lio/appmetrica/analytics/coreutils/internal/proto/DecimalProtoModel;
    .locals 0

    new-instance p0, Lio/appmetrica/analytics/coreutils/internal/proto/DecimalProtoModel;

    invoke-direct {p0, p1, p2, p3}, Lio/appmetrica/analytics/coreutils/internal/proto/DecimalProtoModel;-><init>(JI)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/appmetrica/analytics/coreutils/internal/proto/DecimalProtoModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lio/appmetrica/analytics/coreutils/internal/proto/DecimalProtoModel;

    iget-wide v3, p0, Lio/appmetrica/analytics/coreutils/internal/proto/DecimalProtoModel;->a:J

    iget-wide v5, p1, Lio/appmetrica/analytics/coreutils/internal/proto/DecimalProtoModel;->a:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget p0, p0, Lio/appmetrica/analytics/coreutils/internal/proto/DecimalProtoModel;->b:I

    iget p1, p1, Lio/appmetrica/analytics/coreutils/internal/proto/DecimalProtoModel;->b:I

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getExponent()I
    .locals 0

    iget p0, p0, Lio/appmetrica/analytics/coreutils/internal/proto/DecimalProtoModel;->b:I

    return p0
.end method

.method public final getMantissa()J
    .locals 2

    iget-wide v0, p0, Lio/appmetrica/analytics/coreutils/internal/proto/DecimalProtoModel;->a:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lio/appmetrica/analytics/coreutils/internal/proto/DecimalProtoModel;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lio/appmetrica/analytics/coreutils/internal/proto/DecimalProtoModel;->b:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DecimalProtoModel(mantissa="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lio/appmetrica/analytics/coreutils/internal/proto/DecimalProtoModel;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", exponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lio/appmetrica/analytics/coreutils/internal/proto/DecimalProtoModel;->b:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Lrg;->h(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
