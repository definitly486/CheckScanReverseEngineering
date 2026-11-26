.class public final Landroidx/camera/camera2/pipe/compat/InputConfigData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final format:I

.field private final height:I

.field private final width:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/camera/camera2/pipe/compat/InputConfigData;->width:I

    iput p2, p0, Landroidx/camera/camera2/pipe/compat/InputConfigData;->height:I

    iput p3, p0, Landroidx/camera/camera2/pipe/compat/InputConfigData;->format:I

    return-void
.end method

.method public static synthetic copy$default(Landroidx/camera/camera2/pipe/compat/InputConfigData;IIIILjava/lang/Object;)Landroidx/camera/camera2/pipe/compat/InputConfigData;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Landroidx/camera/camera2/pipe/compat/InputConfigData;->width:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Landroidx/camera/camera2/pipe/compat/InputConfigData;->height:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Landroidx/camera/camera2/pipe/compat/InputConfigData;->format:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/compat/InputConfigData;->copy(III)Landroidx/camera/camera2/pipe/compat/InputConfigData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/compat/InputConfigData;->width:I

    return p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/compat/InputConfigData;->height:I

    return p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/compat/InputConfigData;->format:I

    return p0
.end method

.method public final copy(III)Landroidx/camera/camera2/pipe/compat/InputConfigData;
    .locals 0

    new-instance p0, Landroidx/camera/camera2/pipe/compat/InputConfigData;

    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/compat/InputConfigData;-><init>(III)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/camera2/pipe/compat/InputConfigData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/camera2/pipe/compat/InputConfigData;

    iget v1, p0, Landroidx/camera/camera2/pipe/compat/InputConfigData;->width:I

    iget v3, p1, Landroidx/camera/camera2/pipe/compat/InputConfigData;->width:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Landroidx/camera/camera2/pipe/compat/InputConfigData;->height:I

    iget v3, p1, Landroidx/camera/camera2/pipe/compat/InputConfigData;->height:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget p0, p0, Landroidx/camera/camera2/pipe/compat/InputConfigData;->format:I

    iget p1, p1, Landroidx/camera/camera2/pipe/compat/InputConfigData;->format:I

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getFormat()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/compat/InputConfigData;->format:I

    return p0
.end method

.method public final getHeight()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/compat/InputConfigData;->height:I

    return p0
.end method

.method public final getWidth()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/compat/InputConfigData;->width:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Landroidx/camera/camera2/pipe/compat/InputConfigData;->width:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/camera/camera2/pipe/compat/InputConfigData;->height:I

    invoke-static {v2, v0, v1}, Lej0;->b(III)I

    move-result v0

    iget p0, p0, Landroidx/camera/camera2/pipe/compat/InputConfigData;->format:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InputConfigData(width="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/camera/camera2/pipe/compat/InputConfigData;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/camera2/pipe/compat/InputConfigData;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", format="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/camera/camera2/pipe/compat/InputConfigData;->format:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Lrg;->h(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
