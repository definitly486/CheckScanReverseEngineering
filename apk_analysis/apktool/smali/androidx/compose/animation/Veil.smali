.class public final Landroidx/compose/animation/Veil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I


# instance fields
.field private final animationSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation
.end field

.field private final initialColor:J

.field private final matchParentSize:Z

.field private final targetColor:J


# direct methods
.method private constructor <init>(JJLandroidx/compose/animation/core/FiniteAnimationSpec;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/compose/animation/Veil;->initialColor:J

    iput-wide p3, p0, Landroidx/compose/animation/Veil;->targetColor:J

    iput-object p5, p0, Landroidx/compose/animation/Veil;->animationSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    iput-boolean p6, p0, Landroidx/compose/animation/Veil;->matchParentSize:Z

    return-void
.end method

.method public synthetic constructor <init>(JJLandroidx/compose/animation/core/FiniteAnimationSpec;ZLjh2;)V
    .locals 0

    .line 12
    invoke-direct/range {p0 .. p6}, Landroidx/compose/animation/Veil;-><init>(JJLandroidx/compose/animation/core/FiniteAnimationSpec;Z)V

    return-void
.end method

.method public static synthetic copy-RFnl5yQ$default(Landroidx/compose/animation/Veil;JJLandroidx/compose/animation/core/FiniteAnimationSpec;ZILjava/lang/Object;)Landroidx/compose/animation/Veil;
    .locals 7

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-wide p1, p0, Landroidx/compose/animation/Veil;->initialColor:J

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    iget-wide p3, p0, Landroidx/compose/animation/Veil;->targetColor:J

    :cond_1
    move-wide v3, p3

    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    iget-object p5, p0, Landroidx/compose/animation/Veil;->animationSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    :cond_2
    move-object v5, p5

    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_3

    iget-boolean p6, p0, Landroidx/compose/animation/Veil;->matchParentSize:Z

    :cond_3
    move-object v0, p0

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroidx/compose/animation/Veil;->copy-RFnl5yQ(JJLandroidx/compose/animation/core/FiniteAnimationSpec;Z)Landroidx/compose/animation/Veil;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/animation/Veil;->initialColor:J

    return-wide v0
.end method

.method public final component2-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/animation/Veil;->targetColor:J

    return-wide v0
.end method

.method public final component3()Landroidx/compose/animation/core/FiniteAnimationSpec;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/animation/Veil;->animationSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    return-object p0
.end method

.method public final component4()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/animation/Veil;->matchParentSize:Z

    return p0
.end method

.method public final copy-RFnl5yQ(JJLandroidx/compose/animation/core/FiniteAnimationSpec;Z)Landroidx/compose/animation/Veil;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;Z)",
            "Landroidx/compose/animation/Veil;"
        }
    .end annotation

    new-instance v0, Landroidx/compose/animation/Veil;

    const/4 v7, 0x0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Landroidx/compose/animation/Veil;-><init>(JJLandroidx/compose/animation/core/FiniteAnimationSpec;ZLjh2;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/animation/Veil;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/animation/Veil;

    iget-wide v3, p0, Landroidx/compose/animation/Veil;->initialColor:J

    iget-wide v5, p1, Landroidx/compose/animation/Veil;->initialColor:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Landroidx/compose/animation/Veil;->targetColor:J

    iget-wide v5, p1, Landroidx/compose/animation/Veil;->targetColor:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Landroidx/compose/animation/Veil;->animationSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    iget-object v3, p1, Landroidx/compose/animation/Veil;->animationSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean p0, p0, Landroidx/compose/animation/Veil;->matchParentSize:Z

    iget-boolean p1, p1, Landroidx/compose/animation/Veil;->matchParentSize:Z

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getAnimationSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/animation/Veil;->animationSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    return-object p0
.end method

.method public final getInitialColor-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/animation/Veil;->initialColor:J

    return-wide v0
.end method

.method public final getMatchParentSize()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/animation/Veil;->matchParentSize:Z

    return p0
.end method

.method public final getTargetColor-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/animation/Veil;->targetColor:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Landroidx/compose/animation/Veil;->initialColor:J

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Landroidx/compose/animation/Veil;->targetColor:J

    invoke-static {v0, v1, v2, v3}, Lr01;->b(IIJ)I

    move-result v0

    iget-object v2, p0, Landroidx/compose/animation/Veil;->animationSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-boolean p0, p0, Landroidx/compose/animation/Veil;->matchParentSize:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v2

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Veil(initialColor="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Landroidx/compose/animation/Veil;->initialColor:J

    const-string v3, ", targetColor="

    invoke-static {v1, v2, v3, v0}, Lln;->g(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroidx/compose/animation/Veil;->targetColor:J

    const-string v3, ", animationSpec="

    invoke-static {v1, v2, v3, v0}, Lln;->g(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Landroidx/compose/animation/Veil;->animationSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", matchParentSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Landroidx/compose/animation/Veil;->matchParentSize:Z

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Lsg;->d(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
