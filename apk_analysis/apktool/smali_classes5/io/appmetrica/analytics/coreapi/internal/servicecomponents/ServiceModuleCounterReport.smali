.class public final Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceModuleCounterReport;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceModuleCounterReport$Builder;,
        Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceModuleCounterReport$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceModuleCounterReport$Companion;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:[B

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceModuleCounterReport$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceModuleCounterReport$Companion;-><init>(Ljh2;)V

    sput-object v0, Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceModuleCounterReport;->Companion:Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceModuleCounterReport$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceModuleCounterReport;->a:Ljava/lang/String;

    iput-object p2, p0, Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceModuleCounterReport;->b:Ljava/lang/String;

    iput-object p3, p0, Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceModuleCounterReport;->c:[B

    iput p4, p0, Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceModuleCounterReport;->d:I

    return-void
.end method

.method public static synthetic copy$default(Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceModuleCounterReport;Ljava/lang/String;Ljava/lang/String;[BIILjava/lang/Object;)Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceModuleCounterReport;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceModuleCounterReport;->a:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceModuleCounterReport;->b:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceModuleCounterReport;->c:[B

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceModuleCounterReport;->d:I

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceModuleCounterReport;->copy(Ljava/lang/String;Ljava/lang/String;[BI)Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceModuleCounterReport;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceModuleCounterReport;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceModuleCounterReport;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()[B
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceModuleCounterReport;->c:[B

    return-object p0
.end method

.method public final component4()I
    .locals 0

    iget p0, p0, Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceModuleCounterReport;->d:I

    return p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;[BI)Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceModuleCounterReport;
    .locals 0

    new-instance p0, Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceModuleCounterReport;

    invoke-direct {p0, p1, p2, p3, p4}, Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceModuleCounterReport;-><init>(Ljava/lang/String;Ljava/lang/String;[BI)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceModuleCounterReport;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget v1, p0, Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceModuleCounterReport;->d:I

    check-cast p1, Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceModuleCounterReport;

    iget v3, p1, Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceModuleCounterReport;->d:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceModuleCounterReport;->a:Ljava/lang/String;

    iget-object v3, p1, Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceModuleCounterReport;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceModuleCounterReport;->b:Ljava/lang/String;

    iget-object v3, p1, Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceModuleCounterReport;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceModuleCounterReport;->c:[B

    iget-object p1, p1, Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceModuleCounterReport;->c:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceModuleCounterReport;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final getType()I
    .locals 0

    iget p0, p0, Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceModuleCounterReport;->d:I

    return p0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceModuleCounterReport;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getValueBytes()[B
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceModuleCounterReport;->c:[B

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceModuleCounterReport;->d:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceModuleCounterReport;->a:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceModuleCounterReport;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceModuleCounterReport;->c:[B

    if-eqz p0, :cond_2

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ServiceModuleCounterReport(name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceModuleCounterReport;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceModuleCounterReport;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", valueBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceModuleCounterReport;->c:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceModuleCounterReport;->d:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Lrg;->h(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
