.class public final Landroidx/compose/material3/SliderColors;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I


# instance fields
.field private final activeTickColor:J

.field private final activeTrackColor:J

.field private final disabledActiveTickColor:J

.field private final disabledActiveTrackColor:J

.field private final disabledInactiveTickColor:J

.field private final disabledInactiveTrackColor:J

.field private final disabledThumbColor:J

.field private final inactiveTickColor:J

.field private final inactiveTrackColor:J

.field private final thumbColor:J


# direct methods
.method private constructor <init>(JJJJJJJJJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/compose/material3/SliderColors;->thumbColor:J

    iput-wide p3, p0, Landroidx/compose/material3/SliderColors;->activeTrackColor:J

    iput-wide p5, p0, Landroidx/compose/material3/SliderColors;->activeTickColor:J

    iput-wide p7, p0, Landroidx/compose/material3/SliderColors;->inactiveTrackColor:J

    iput-wide p9, p0, Landroidx/compose/material3/SliderColors;->inactiveTickColor:J

    iput-wide p11, p0, Landroidx/compose/material3/SliderColors;->disabledThumbColor:J

    iput-wide p13, p0, Landroidx/compose/material3/SliderColors;->disabledActiveTrackColor:J

    move-wide p1, p15

    iput-wide p1, p0, Landroidx/compose/material3/SliderColors;->disabledActiveTickColor:J

    move-wide/from16 p1, p17

    iput-wide p1, p0, Landroidx/compose/material3/SliderColors;->disabledInactiveTrackColor:J

    move-wide/from16 p1, p19

    iput-wide p1, p0, Landroidx/compose/material3/SliderColors;->disabledInactiveTickColor:J

    return-void
.end method

.method public synthetic constructor <init>(JJJJJJJJJJLjh2;)V
    .locals 0

    .line 29
    invoke-direct/range {p0 .. p20}, Landroidx/compose/material3/SliderColors;-><init>(JJJJJJJJJJ)V

    return-void
.end method

.method public static synthetic copy--K518z4$default(Landroidx/compose/material3/SliderColors;JJJJJJJJJJILjava/lang/Object;)Landroidx/compose/material3/SliderColors;
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p21

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-wide v2, v0, Landroidx/compose/material3/SliderColors;->thumbColor:J

    goto :goto_0

    :cond_0
    move-wide/from16 v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget-wide v4, v0, Landroidx/compose/material3/SliderColors;->activeTrackColor:J

    goto :goto_1

    :cond_1
    move-wide/from16 v4, p3

    :goto_1
    and-int/lit8 v6, v1, 0x4

    if-eqz v6, :cond_2

    iget-wide v6, v0, Landroidx/compose/material3/SliderColors;->activeTickColor:J

    goto :goto_2

    :cond_2
    move-wide/from16 v6, p5

    :goto_2
    and-int/lit8 v8, v1, 0x8

    if-eqz v8, :cond_3

    iget-wide v8, v0, Landroidx/compose/material3/SliderColors;->inactiveTrackColor:J

    goto :goto_3

    :cond_3
    move-wide/from16 v8, p7

    :goto_3
    and-int/lit8 v10, v1, 0x10

    if-eqz v10, :cond_4

    iget-wide v10, v0, Landroidx/compose/material3/SliderColors;->inactiveTickColor:J

    goto :goto_4

    :cond_4
    move-wide/from16 v10, p9

    :goto_4
    and-int/lit8 v12, v1, 0x20

    if-eqz v12, :cond_5

    iget-wide v12, v0, Landroidx/compose/material3/SliderColors;->disabledThumbColor:J

    goto :goto_5

    :cond_5
    move-wide/from16 v12, p11

    :goto_5
    and-int/lit8 v14, v1, 0x40

    if-eqz v14, :cond_6

    iget-wide v14, v0, Landroidx/compose/material3/SliderColors;->disabledActiveTrackColor:J

    goto :goto_6

    :cond_6
    move-wide/from16 v14, p13

    :goto_6
    move-wide/from16 v16, v2

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_7

    iget-wide v2, v0, Landroidx/compose/material3/SliderColors;->disabledActiveTickColor:J

    goto :goto_7

    :cond_7
    move-wide/from16 v2, p15

    :goto_7
    move-wide/from16 p1, v2

    and-int/lit16 v2, v1, 0x100

    if-eqz v2, :cond_8

    iget-wide v2, v0, Landroidx/compose/material3/SliderColors;->disabledInactiveTrackColor:J

    goto :goto_8

    :cond_8
    move-wide/from16 v2, p17

    :goto_8
    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    move-wide/from16 p3, v2

    iget-wide v1, v0, Landroidx/compose/material3/SliderColors;->disabledInactiveTickColor:J

    move-wide/from16 p18, p3

    move-wide/from16 p20, v1

    :goto_9
    move-wide/from16 p16, p1

    move-object/from16 p1, v0

    move-wide/from16 p4, v4

    move-wide/from16 p6, v6

    move-wide/from16 p8, v8

    move-wide/from16 p10, v10

    move-wide/from16 p12, v12

    move-wide/from16 p14, v14

    move-wide/from16 p2, v16

    goto :goto_a

    :cond_9
    move-wide/from16 p20, p19

    move-wide/from16 p18, v2

    goto :goto_9

    :goto_a
    invoke-virtual/range {p1 .. p21}, Landroidx/compose/material3/SliderColors;->copy--K518z4(JJJJJJJJJJ)Landroidx/compose/material3/SliderColors;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final copy--K518z4(JJJJJJJJJJ)Landroidx/compose/material3/SliderColors;
    .locals 27

    move-object/from16 v0, p0

    const-wide/16 v1, 0x10

    cmp-long v3, p1, v1

    if-eqz v3, :cond_0

    move-wide/from16 v6, p1

    goto :goto_0

    :cond_0
    iget-wide v3, v0, Landroidx/compose/material3/SliderColors;->thumbColor:J

    move-wide v6, v3

    :goto_0
    cmp-long v3, p3, v1

    if-eqz v3, :cond_1

    move-wide/from16 v8, p3

    goto :goto_1

    :cond_1
    iget-wide v3, v0, Landroidx/compose/material3/SliderColors;->activeTrackColor:J

    move-wide v8, v3

    :goto_1
    cmp-long v3, p5, v1

    if-eqz v3, :cond_2

    move-wide/from16 v10, p5

    goto :goto_2

    :cond_2
    iget-wide v3, v0, Landroidx/compose/material3/SliderColors;->activeTickColor:J

    move-wide v10, v3

    :goto_2
    cmp-long v3, p7, v1

    if-eqz v3, :cond_3

    move-wide/from16 v12, p7

    goto :goto_3

    :cond_3
    iget-wide v3, v0, Landroidx/compose/material3/SliderColors;->inactiveTrackColor:J

    move-wide v12, v3

    :goto_3
    cmp-long v3, p9, v1

    if-eqz v3, :cond_4

    move-wide/from16 v14, p9

    goto :goto_4

    :cond_4
    iget-wide v3, v0, Landroidx/compose/material3/SliderColors;->inactiveTickColor:J

    move-wide v14, v3

    :goto_4
    cmp-long v3, p11, v1

    if-eqz v3, :cond_5

    move-wide/from16 v16, p11

    goto :goto_5

    :cond_5
    iget-wide v3, v0, Landroidx/compose/material3/SliderColors;->disabledThumbColor:J

    move-wide/from16 v16, v3

    :goto_5
    cmp-long v3, p13, v1

    if-eqz v3, :cond_6

    move-wide/from16 v18, p13

    goto :goto_6

    :cond_6
    iget-wide v3, v0, Landroidx/compose/material3/SliderColors;->disabledActiveTrackColor:J

    move-wide/from16 v18, v3

    :goto_6
    cmp-long v3, p15, v1

    if-eqz v3, :cond_7

    move-wide/from16 v20, p15

    goto :goto_7

    :cond_7
    iget-wide v3, v0, Landroidx/compose/material3/SliderColors;->disabledActiveTickColor:J

    move-wide/from16 v20, v3

    :goto_7
    cmp-long v3, p17, v1

    if-eqz v3, :cond_8

    move-wide/from16 v22, p17

    goto :goto_8

    :cond_8
    iget-wide v3, v0, Landroidx/compose/material3/SliderColors;->disabledInactiveTrackColor:J

    move-wide/from16 v22, v3

    :goto_8
    cmp-long v1, p19, v1

    if-eqz v1, :cond_9

    move-wide/from16 v24, p19

    goto :goto_9

    :cond_9
    iget-wide v0, v0, Landroidx/compose/material3/SliderColors;->disabledInactiveTickColor:J

    move-wide/from16 v24, v0

    :goto_9
    new-instance v5, Landroidx/compose/material3/SliderColors;

    const/16 v26, 0x0

    invoke-direct/range {v5 .. v26}, Landroidx/compose/material3/SliderColors;-><init>(JJJJJJJJJJLjh2;)V

    return-object v5
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_c

    instance-of v2, p1, Landroidx/compose/material3/SliderColors;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Landroidx/compose/material3/SliderColors;->thumbColor:J

    check-cast p1, Landroidx/compose/material3/SliderColors;

    iget-wide v4, p1, Landroidx/compose/material3/SliderColors;->thumbColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-wide v2, p0, Landroidx/compose/material3/SliderColors;->activeTrackColor:J

    iget-wide v4, p1, Landroidx/compose/material3/SliderColors;->activeTrackColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-wide v2, p0, Landroidx/compose/material3/SliderColors;->activeTickColor:J

    iget-wide v4, p1, Landroidx/compose/material3/SliderColors;->activeTickColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-wide v2, p0, Landroidx/compose/material3/SliderColors;->inactiveTrackColor:J

    iget-wide v4, p1, Landroidx/compose/material3/SliderColors;->inactiveTrackColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-wide v2, p0, Landroidx/compose/material3/SliderColors;->inactiveTickColor:J

    iget-wide v4, p1, Landroidx/compose/material3/SliderColors;->inactiveTickColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-wide v2, p0, Landroidx/compose/material3/SliderColors;->disabledThumbColor:J

    iget-wide v4, p1, Landroidx/compose/material3/SliderColors;->disabledThumbColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    :cond_7
    iget-wide v2, p0, Landroidx/compose/material3/SliderColors;->disabledActiveTrackColor:J

    iget-wide v4, p1, Landroidx/compose/material3/SliderColors;->disabledActiveTrackColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    :cond_8
    iget-wide v2, p0, Landroidx/compose/material3/SliderColors;->disabledActiveTickColor:J

    iget-wide v4, p1, Landroidx/compose/material3/SliderColors;->disabledActiveTickColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    :cond_9
    iget-wide v2, p0, Landroidx/compose/material3/SliderColors;->disabledInactiveTrackColor:J

    iget-wide v4, p1, Landroidx/compose/material3/SliderColors;->disabledInactiveTrackColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    :cond_a
    iget-wide v2, p0, Landroidx/compose/material3/SliderColors;->disabledInactiveTickColor:J

    iget-wide p0, p1, Landroidx/compose/material3/SliderColors;->disabledInactiveTickColor:J

    invoke-static {v2, v3, p0, p1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result p0

    if-nez p0, :cond_b

    return v1

    :cond_b
    return v0

    :cond_c
    :goto_0
    return v1
.end method

.method public final getActiveTickColor-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/SliderColors;->activeTickColor:J

    return-wide v0
.end method

.method public final getActiveTrackColor-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/SliderColors;->activeTrackColor:J

    return-wide v0
.end method

.method public final getDisabledActiveTickColor-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/SliderColors;->disabledActiveTickColor:J

    return-wide v0
.end method

.method public final getDisabledActiveTrackColor-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/SliderColors;->disabledActiveTrackColor:J

    return-wide v0
.end method

.method public final getDisabledInactiveTickColor-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/SliderColors;->disabledInactiveTickColor:J

    return-wide v0
.end method

.method public final getDisabledInactiveTrackColor-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/SliderColors;->disabledInactiveTrackColor:J

    return-wide v0
.end method

.method public final getDisabledThumbColor-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/SliderColors;->disabledThumbColor:J

    return-wide v0
.end method

.method public final getInactiveTickColor-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/SliderColors;->inactiveTickColor:J

    return-wide v0
.end method

.method public final getInactiveTrackColor-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/SliderColors;->inactiveTrackColor:J

    return-wide v0
.end method

.method public final getThumbColor-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/SliderColors;->thumbColor:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Landroidx/compose/material3/SliderColors;->thumbColor:J

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Landroidx/compose/material3/SliderColors;->activeTrackColor:J

    invoke-static {v0, v1, v2, v3}, Lr01;->b(IIJ)I

    move-result v0

    iget-wide v2, p0, Landroidx/compose/material3/SliderColors;->activeTickColor:J

    invoke-static {v0, v1, v2, v3}, Lr01;->b(IIJ)I

    move-result v0

    iget-wide v2, p0, Landroidx/compose/material3/SliderColors;->inactiveTrackColor:J

    invoke-static {v0, v1, v2, v3}, Lr01;->b(IIJ)I

    move-result v0

    iget-wide v2, p0, Landroidx/compose/material3/SliderColors;->inactiveTickColor:J

    invoke-static {v0, v1, v2, v3}, Lr01;->b(IIJ)I

    move-result v0

    iget-wide v2, p0, Landroidx/compose/material3/SliderColors;->disabledThumbColor:J

    invoke-static {v0, v1, v2, v3}, Lr01;->b(IIJ)I

    move-result v0

    iget-wide v2, p0, Landroidx/compose/material3/SliderColors;->disabledActiveTrackColor:J

    invoke-static {v0, v1, v2, v3}, Lr01;->b(IIJ)I

    move-result v0

    iget-wide v2, p0, Landroidx/compose/material3/SliderColors;->disabledActiveTickColor:J

    invoke-static {v0, v1, v2, v3}, Lr01;->b(IIJ)I

    move-result v0

    iget-wide v2, p0, Landroidx/compose/material3/SliderColors;->disabledInactiveTrackColor:J

    invoke-static {v0, v1, v2, v3}, Lr01;->b(IIJ)I

    move-result v0

    iget-wide v1, p0, Landroidx/compose/material3/SliderColors;->disabledInactiveTickColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final thumbColor-vNxB06k$material3(Z)J
    .locals 0

    if-eqz p1, :cond_0

    iget-wide p0, p0, Landroidx/compose/material3/SliderColors;->thumbColor:J

    return-wide p0

    :cond_0
    iget-wide p0, p0, Landroidx/compose/material3/SliderColors;->disabledThumbColor:J

    return-wide p0
.end method

.method public final tickColor-WaAFU9c$material3(ZZ)J
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iget-wide p0, p0, Landroidx/compose/material3/SliderColors;->activeTickColor:J

    return-wide p0

    :cond_0
    iget-wide p0, p0, Landroidx/compose/material3/SliderColors;->inactiveTickColor:J

    return-wide p0

    :cond_1
    if-eqz p2, :cond_2

    iget-wide p0, p0, Landroidx/compose/material3/SliderColors;->disabledActiveTickColor:J

    return-wide p0

    :cond_2
    iget-wide p0, p0, Landroidx/compose/material3/SliderColors;->disabledInactiveTickColor:J

    return-wide p0
.end method

.method public final trackColor-WaAFU9c$material3(ZZ)J
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iget-wide p0, p0, Landroidx/compose/material3/SliderColors;->activeTrackColor:J

    return-wide p0

    :cond_0
    iget-wide p0, p0, Landroidx/compose/material3/SliderColors;->inactiveTrackColor:J

    return-wide p0

    :cond_1
    if-eqz p2, :cond_2

    iget-wide p0, p0, Landroidx/compose/material3/SliderColors;->disabledActiveTrackColor:J

    return-wide p0

    :cond_2
    iget-wide p0, p0, Landroidx/compose/material3/SliderColors;->disabledInactiveTrackColor:J

    return-wide p0
.end method
