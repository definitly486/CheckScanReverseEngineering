.class public final Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:F


# direct methods
.method public constructor <init>(IIIF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;->a:I

    iput p2, p0, Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;->b:I

    iput p3, p0, Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;->c:I

    iput p4, p0, Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;->d:F

    return-void
.end method

.method public static synthetic copy$default(Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;IIIFILjava/lang/Object;)Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;->a:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;->b:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;->c:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;->d:F

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;->copy(IIIF)Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;->a:I

    return p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;->b:I

    return p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;->c:I

    return p0
.end method

.method public final component4()F
    .locals 0

    iget p0, p0, Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;->d:F

    return p0
.end method

.method public final copy(IIIF)Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;
    .locals 0

    new-instance p0, Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;

    invoke-direct {p0, p1, p2, p3, p4}, Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;-><init>(IIIF)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;

    iget v1, p0, Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;->a:I

    iget v3, p1, Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;->b:I

    iget v3, p1, Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;->b:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;->c:I

    iget v3, p1, Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;->c:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget p0, p0, Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;->d:F

    iget p1, p1, Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;->d:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getDpi()I
    .locals 0

    iget p0, p0, Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;->c:I

    return p0
.end method

.method public final getHeight()I
    .locals 0

    iget p0, p0, Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;->b:I

    return p0
.end method

.method public final getScaleFactor()F
    .locals 0

    iget p0, p0, Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;->d:F

    return p0
.end method

.method public final getWidth()I
    .locals 0

    iget p0, p0, Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;->a:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;->b:I

    invoke-static {v2, v0, v1}, Lej0;->b(III)I

    move-result v0

    iget v2, p0, Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;->c:I

    invoke-static {v2, v0, v1}, Lej0;->b(III)I

    move-result v0

    iget p0, p0, Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;->d:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ScreenInfo(width="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dpi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", scaleFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;->d:F

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Ljs2;->b(Ljava/lang/StringBuilder;FC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
