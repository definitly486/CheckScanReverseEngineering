.class public final Landroidx/compose/ui/input/pointer/HistoricalChange;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I


# instance fields
.field private originalEventPosition:J

.field private final panOffset:J

.field private final position:J

.field private final scaleFactor:F

.field private final uptimeMillis:J


# direct methods
.method private constructor <init>(JJ)V
    .locals 10

    .line 37
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v7

    const/4 v9, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    .line 38
    invoke-direct/range {v1 .. v9}, Landroidx/compose/ui/input/pointer/HistoricalChange;-><init>(JJFJLjh2;)V

    return-void
.end method

.method private constructor <init>(JJFJ)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-wide p1, p0, Landroidx/compose/ui/input/pointer/HistoricalChange;->uptimeMillis:J

    .line 32
    iput-wide p3, p0, Landroidx/compose/ui/input/pointer/HistoricalChange;->position:J

    .line 33
    iput p5, p0, Landroidx/compose/ui/input/pointer/HistoricalChange;->scaleFactor:F

    .line 34
    iput-wide p6, p0, Landroidx/compose/ui/input/pointer/HistoricalChange;->panOffset:J

    .line 35
    sget-object p1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/ui/input/pointer/HistoricalChange;->originalEventPosition:J

    return-void
.end method

.method public synthetic constructor <init>(JJFJILjh2;)V
    .locals 9

    and-int/lit8 v0, p8, 0x4

    if-eqz v0, :cond_0

    const/high16 p5, 0x3f800000    # 1.0f

    :cond_0
    move v5, p5

    and-int/lit8 p5, p8, 0x8

    if-eqz p5, :cond_1

    sget-object p5, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p5}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    move-wide v6, v0

    goto :goto_0

    :cond_1
    move-wide v6, p6

    :goto_0
    const/4 v8, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v8}, Landroidx/compose/ui/input/pointer/HistoricalChange;-><init>(JJFJLjh2;)V

    return-void
.end method

.method private constructor <init>(JJFJJ)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move-wide v6, p6

    .line 39
    invoke-direct/range {v0 .. v8}, Landroidx/compose/ui/input/pointer/HistoricalChange;-><init>(JJFJLjh2;)V

    move-wide/from16 p1, p8

    .line 40
    iput-wide p1, p0, Landroidx/compose/ui/input/pointer/HistoricalChange;->originalEventPosition:J

    return-void
.end method

.method public synthetic constructor <init>(JJFJJLjh2;)V
    .locals 0

    .line 36
    invoke-direct/range {p0 .. p9}, Landroidx/compose/ui/input/pointer/HistoricalChange;-><init>(JJFJJ)V

    return-void
.end method

.method public synthetic constructor <init>(JJFJLjh2;)V
    .locals 0

    .line 28
    invoke-direct/range {p0 .. p7}, Landroidx/compose/ui/input/pointer/HistoricalChange;-><init>(JJFJ)V

    return-void
.end method

.method public synthetic constructor <init>(JJLjh2;)V
    .locals 0
    .annotation runtime Lul2;
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/ui/input/pointer/HistoricalChange;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final getOriginalEventPosition-F1C5BW0$ui()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/input/pointer/HistoricalChange;->originalEventPosition:J

    return-wide v0
.end method

.method public final getPanOffset-F1C5BW0()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/input/pointer/HistoricalChange;->panOffset:J

    return-wide v0
.end method

.method public final getPosition-F1C5BW0()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/input/pointer/HistoricalChange;->position:J

    return-wide v0
.end method

.method public final getScaleFactor()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/input/pointer/HistoricalChange;->scaleFactor:F

    return p0
.end method

.method public final getUptimeMillis()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/input/pointer/HistoricalChange;->uptimeMillis:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HistoricalChange(uptimeMillis="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Landroidx/compose/ui/input/pointer/HistoricalChange;->uptimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/compose/ui/input/pointer/HistoricalChange;->position:J

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", scaleFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/input/pointer/HistoricalChange;->scaleFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", panOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/compose/ui/input/pointer/HistoricalChange;->panOffset:J

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->toString-impl(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
