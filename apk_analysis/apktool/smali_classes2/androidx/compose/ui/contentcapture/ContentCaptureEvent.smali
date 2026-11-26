.class final Landroidx/compose/ui/contentcapture/ContentCaptureEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final id:I

.field private final structureCompat:Landroidx/compose/ui/platform/coreshims/ViewStructureCompat;

.field private final timestamp:J

.field private final type:Landroidx/compose/ui/contentcapture/ContentCaptureEventType;


# direct methods
.method public constructor <init>(IJLandroidx/compose/ui/contentcapture/ContentCaptureEventType;Landroidx/compose/ui/platform/coreshims/ViewStructureCompat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/contentcapture/ContentCaptureEvent;->id:I

    iput-wide p2, p0, Landroidx/compose/ui/contentcapture/ContentCaptureEvent;->timestamp:J

    iput-object p4, p0, Landroidx/compose/ui/contentcapture/ContentCaptureEvent;->type:Landroidx/compose/ui/contentcapture/ContentCaptureEventType;

    iput-object p5, p0, Landroidx/compose/ui/contentcapture/ContentCaptureEvent;->structureCompat:Landroidx/compose/ui/platform/coreshims/ViewStructureCompat;

    return-void
.end method

.method public static synthetic copy$default(Landroidx/compose/ui/contentcapture/ContentCaptureEvent;IJLandroidx/compose/ui/contentcapture/ContentCaptureEventType;Landroidx/compose/ui/platform/coreshims/ViewStructureCompat;ILjava/lang/Object;)Landroidx/compose/ui/contentcapture/ContentCaptureEvent;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget p1, p0, Landroidx/compose/ui/contentcapture/ContentCaptureEvent;->id:I

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-wide p2, p0, Landroidx/compose/ui/contentcapture/ContentCaptureEvent;->timestamp:J

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    iget-object p4, p0, Landroidx/compose/ui/contentcapture/ContentCaptureEvent;->type:Landroidx/compose/ui/contentcapture/ContentCaptureEventType;

    :cond_2
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_3

    iget-object p5, p0, Landroidx/compose/ui/contentcapture/ContentCaptureEvent;->structureCompat:Landroidx/compose/ui/platform/coreshims/ViewStructureCompat;

    :cond_3
    move-object p6, p4

    move-object p7, p5

    move-wide p4, p2

    move-object p2, p0

    move p3, p1

    invoke-virtual/range {p2 .. p7}, Landroidx/compose/ui/contentcapture/ContentCaptureEvent;->copy(IJLandroidx/compose/ui/contentcapture/ContentCaptureEventType;Landroidx/compose/ui/platform/coreshims/ViewStructureCompat;)Landroidx/compose/ui/contentcapture/ContentCaptureEvent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/contentcapture/ContentCaptureEvent;->id:I

    return p0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/contentcapture/ContentCaptureEvent;->timestamp:J

    return-wide v0
.end method

.method public final component3()Landroidx/compose/ui/contentcapture/ContentCaptureEventType;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/contentcapture/ContentCaptureEvent;->type:Landroidx/compose/ui/contentcapture/ContentCaptureEventType;

    return-object p0
.end method

.method public final component4()Landroidx/compose/ui/platform/coreshims/ViewStructureCompat;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/contentcapture/ContentCaptureEvent;->structureCompat:Landroidx/compose/ui/platform/coreshims/ViewStructureCompat;

    return-object p0
.end method

.method public final copy(IJLandroidx/compose/ui/contentcapture/ContentCaptureEventType;Landroidx/compose/ui/platform/coreshims/ViewStructureCompat;)Landroidx/compose/ui/contentcapture/ContentCaptureEvent;
    .locals 0

    new-instance p0, Landroidx/compose/ui/contentcapture/ContentCaptureEvent;

    invoke-direct/range {p0 .. p5}, Landroidx/compose/ui/contentcapture/ContentCaptureEvent;-><init>(IJLandroidx/compose/ui/contentcapture/ContentCaptureEventType;Landroidx/compose/ui/platform/coreshims/ViewStructureCompat;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/contentcapture/ContentCaptureEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/ui/contentcapture/ContentCaptureEvent;

    iget v1, p0, Landroidx/compose/ui/contentcapture/ContentCaptureEvent;->id:I

    iget v3, p1, Landroidx/compose/ui/contentcapture/ContentCaptureEvent;->id:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Landroidx/compose/ui/contentcapture/ContentCaptureEvent;->timestamp:J

    iget-wide v5, p1, Landroidx/compose/ui/contentcapture/ContentCaptureEvent;->timestamp:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Landroidx/compose/ui/contentcapture/ContentCaptureEvent;->type:Landroidx/compose/ui/contentcapture/ContentCaptureEventType;

    iget-object v3, p1, Landroidx/compose/ui/contentcapture/ContentCaptureEvent;->type:Landroidx/compose/ui/contentcapture/ContentCaptureEventType;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Landroidx/compose/ui/contentcapture/ContentCaptureEvent;->structureCompat:Landroidx/compose/ui/platform/coreshims/ViewStructureCompat;

    iget-object p1, p1, Landroidx/compose/ui/contentcapture/ContentCaptureEvent;->structureCompat:Landroidx/compose/ui/platform/coreshims/ViewStructureCompat;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getId()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/contentcapture/ContentCaptureEvent;->id:I

    return p0
.end method

.method public final getStructureCompat()Landroidx/compose/ui/platform/coreshims/ViewStructureCompat;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/contentcapture/ContentCaptureEvent;->structureCompat:Landroidx/compose/ui/platform/coreshims/ViewStructureCompat;

    return-object p0
.end method

.method public final getTimestamp()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/contentcapture/ContentCaptureEvent;->timestamp:J

    return-wide v0
.end method

.method public final getType()Landroidx/compose/ui/contentcapture/ContentCaptureEventType;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/contentcapture/ContentCaptureEvent;->type:Landroidx/compose/ui/contentcapture/ContentCaptureEventType;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Landroidx/compose/ui/contentcapture/ContentCaptureEvent;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Landroidx/compose/ui/contentcapture/ContentCaptureEvent;->timestamp:J

    invoke-static {v0, v1, v2, v3}, Lvg;->b(IIJ)I

    move-result v0

    iget-object v2, p0, Landroidx/compose/ui/contentcapture/ContentCaptureEvent;->type:Landroidx/compose/ui/contentcapture/ContentCaptureEventType;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object p0, p0, Landroidx/compose/ui/contentcapture/ContentCaptureEvent;->structureCompat:Landroidx/compose/ui/platform/coreshims/ViewStructureCompat;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v2, p0

    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ContentCaptureEvent(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/compose/ui/contentcapture/ContentCaptureEvent;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/compose/ui/contentcapture/ContentCaptureEvent;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/ui/contentcapture/ContentCaptureEvent;->type:Landroidx/compose/ui/contentcapture/ContentCaptureEventType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", structureCompat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/compose/ui/contentcapture/ContentCaptureEvent;->structureCompat:Landroidx/compose/ui/platform/coreshims/ViewStructureCompat;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
