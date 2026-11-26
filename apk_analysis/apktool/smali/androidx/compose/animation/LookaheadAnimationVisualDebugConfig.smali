.class public final Landroidx/compose/animation/LookaheadAnimationVisualDebugConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I


# instance fields
.field private final isEnabled:Z

.field private final isShowKeyLabelEnabled:Z

.field private final multipleMatchesColor:J

.field private final overlayColor:J

.field private final unmatchedElementColor:J


# direct methods
.method private constructor <init>(ZJJJZ)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-boolean p1, p0, Landroidx/compose/animation/LookaheadAnimationVisualDebugConfig;->isEnabled:Z

    .line 77
    iput-wide p2, p0, Landroidx/compose/animation/LookaheadAnimationVisualDebugConfig;->overlayColor:J

    .line 78
    iput-wide p4, p0, Landroidx/compose/animation/LookaheadAnimationVisualDebugConfig;->multipleMatchesColor:J

    .line 79
    iput-wide p6, p0, Landroidx/compose/animation/LookaheadAnimationVisualDebugConfig;->unmatchedElementColor:J

    .line 80
    iput-boolean p8, p0, Landroidx/compose/animation/LookaheadAnimationVisualDebugConfig;->isShowKeyLabelEnabled:Z

    return-void
.end method

.method public synthetic constructor <init>(ZJJJZILjh2;)V
    .locals 9

    and-int/lit8 v0, p9, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    and-int/lit8 v1, p9, 0x2

    if-eqz v1, :cond_1

    const-wide v1, 0x8034a853L

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v1

    goto :goto_1

    :cond_1
    move-wide v1, p2

    :goto_1
    and-int/lit8 v3, p9, 0x4

    if-eqz v3, :cond_2

    const-wide v3, 0xffea4335L

    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v3

    goto :goto_2

    :cond_2
    move-wide v3, p4

    :goto_2
    and-int/lit8 v5, p9, 0x8

    if-eqz v5, :cond_3

    const-wide v5, 0xff9aa0a6L

    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v5

    goto :goto_3

    :cond_3
    move-wide v5, p6

    :goto_3
    and-int/lit8 v7, p9, 0x10

    if-eqz v7, :cond_4

    const/4 v7, 0x0

    goto :goto_4

    :cond_4
    move/from16 v7, p8

    :goto_4
    const/4 v8, 0x0

    move-object p1, p0

    move p2, v0

    move-wide p3, v1

    move-wide p5, v3

    move-wide/from16 p7, v5

    move/from16 p9, v7

    move-object/from16 p10, v8

    invoke-direct/range {p1 .. p10}, Landroidx/compose/animation/LookaheadAnimationVisualDebugConfig;-><init>(ZJJJZLjh2;)V

    return-void
.end method

.method public synthetic constructor <init>(ZJJJZLjh2;)V
    .locals 0

    .line 81
    invoke-direct/range {p0 .. p8}, Landroidx/compose/animation/LookaheadAnimationVisualDebugConfig;-><init>(ZJJJZ)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/animation/LookaheadAnimationVisualDebugConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-boolean v1, p0, Landroidx/compose/animation/LookaheadAnimationVisualDebugConfig;->isEnabled:Z

    check-cast p1, Landroidx/compose/animation/LookaheadAnimationVisualDebugConfig;

    iget-boolean v3, p1, Landroidx/compose/animation/LookaheadAnimationVisualDebugConfig;->isEnabled:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Landroidx/compose/animation/LookaheadAnimationVisualDebugConfig;->overlayColor:J

    iget-wide v5, p1, Landroidx/compose/animation/LookaheadAnimationVisualDebugConfig;->overlayColor:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Landroidx/compose/animation/LookaheadAnimationVisualDebugConfig;->multipleMatchesColor:J

    iget-wide v5, p1, Landroidx/compose/animation/LookaheadAnimationVisualDebugConfig;->multipleMatchesColor:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Landroidx/compose/animation/LookaheadAnimationVisualDebugConfig;->unmatchedElementColor:J

    iget-wide v5, p1, Landroidx/compose/animation/LookaheadAnimationVisualDebugConfig;->unmatchedElementColor:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-boolean p0, p0, Landroidx/compose/animation/LookaheadAnimationVisualDebugConfig;->isShowKeyLabelEnabled:Z

    iget-boolean p1, p1, Landroidx/compose/animation/LookaheadAnimationVisualDebugConfig;->isShowKeyLabelEnabled:Z

    if-eq p0, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getMultipleMatchesColor-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/animation/LookaheadAnimationVisualDebugConfig;->multipleMatchesColor:J

    return-wide v0
.end method

.method public final getOverlayColor-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/animation/LookaheadAnimationVisualDebugConfig;->overlayColor:J

    return-wide v0
.end method

.method public final getUnmatchedElementColor-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/animation/LookaheadAnimationVisualDebugConfig;->unmatchedElementColor:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    iget-boolean v0, p0, Landroidx/compose/animation/LookaheadAnimationVisualDebugConfig;->isEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Landroidx/compose/animation/LookaheadAnimationVisualDebugConfig;->overlayColor:J

    invoke-static {v0, v1, v2, v3}, Lr01;->b(IIJ)I

    move-result v0

    iget-wide v2, p0, Landroidx/compose/animation/LookaheadAnimationVisualDebugConfig;->multipleMatchesColor:J

    invoke-static {v0, v1, v2, v3}, Lr01;->b(IIJ)I

    move-result v0

    iget-wide v2, p0, Landroidx/compose/animation/LookaheadAnimationVisualDebugConfig;->unmatchedElementColor:J

    invoke-static {v0, v1, v2, v3}, Lr01;->b(IIJ)I

    move-result v0

    iget-boolean p0, p0, Landroidx/compose/animation/LookaheadAnimationVisualDebugConfig;->isShowKeyLabelEnabled:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final isEnabled()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/animation/LookaheadAnimationVisualDebugConfig;->isEnabled:Z

    return p0
.end method

.method public final isShowKeyLabelEnabled()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/animation/LookaheadAnimationVisualDebugConfig;->isShowKeyLabelEnabled:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LookaheadAnimationVisualDebugConfig(isEnabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroidx/compose/animation/LookaheadAnimationVisualDebugConfig;->isEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", overlayColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/compose/animation/LookaheadAnimationVisualDebugConfig;->overlayColor:J

    const-string v3, ", multipleMatchesColor="

    invoke-static {v1, v2, v3, v0}, Lln;->g(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/animation/LookaheadAnimationVisualDebugConfig;->multipleMatchesColor:J

    const-string v3, ", unmatchedElementColor="

    invoke-static {v1, v2, v3, v0}, Lln;->g(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/animation/LookaheadAnimationVisualDebugConfig;->unmatchedElementColor:J

    const-string v3, ", isShowKeyLabelEnabled="

    invoke-static {v1, v2, v3, v0}, Lln;->g(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-boolean p0, p0, Landroidx/compose/animation/LookaheadAnimationVisualDebugConfig;->isShowKeyLabelEnabled:Z

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Lsg;->d(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
