.class public final Landroidx/compose/material3/TimePickerColors;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I


# instance fields
.field private final clockDialColor:J

.field private final clockDialSelectedContentColor:J

.field private final clockDialUnselectedContentColor:J

.field private final containerColor:J

.field private final periodSelectorBorderColor:J

.field private final periodSelectorSelectedContainerColor:J

.field private final periodSelectorSelectedContentColor:J

.field private final periodSelectorUnselectedContainerColor:J

.field private final periodSelectorUnselectedContentColor:J

.field private final selectorColor:J

.field private final timeSelectorSelectedContainerColor:J

.field private final timeSelectorSelectedContentColor:J

.field private final timeSelectorUnselectedContainerColor:J

.field private final timeSelectorUnselectedContentColor:J


# direct methods
.method private constructor <init>(JJJJJJJJJJJJJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/compose/material3/TimePickerColors;->clockDialColor:J

    iput-wide p3, p0, Landroidx/compose/material3/TimePickerColors;->selectorColor:J

    iput-wide p5, p0, Landroidx/compose/material3/TimePickerColors;->containerColor:J

    iput-wide p7, p0, Landroidx/compose/material3/TimePickerColors;->periodSelectorBorderColor:J

    iput-wide p9, p0, Landroidx/compose/material3/TimePickerColors;->clockDialSelectedContentColor:J

    iput-wide p11, p0, Landroidx/compose/material3/TimePickerColors;->clockDialUnselectedContentColor:J

    iput-wide p13, p0, Landroidx/compose/material3/TimePickerColors;->periodSelectorSelectedContainerColor:J

    move-wide p1, p15

    iput-wide p1, p0, Landroidx/compose/material3/TimePickerColors;->periodSelectorUnselectedContainerColor:J

    move-wide/from16 p1, p17

    iput-wide p1, p0, Landroidx/compose/material3/TimePickerColors;->periodSelectorSelectedContentColor:J

    move-wide/from16 p1, p19

    iput-wide p1, p0, Landroidx/compose/material3/TimePickerColors;->periodSelectorUnselectedContentColor:J

    move-wide/from16 p1, p21

    iput-wide p1, p0, Landroidx/compose/material3/TimePickerColors;->timeSelectorSelectedContainerColor:J

    move-wide/from16 p1, p23

    iput-wide p1, p0, Landroidx/compose/material3/TimePickerColors;->timeSelectorUnselectedContainerColor:J

    move-wide/from16 p1, p25

    iput-wide p1, p0, Landroidx/compose/material3/TimePickerColors;->timeSelectorSelectedContentColor:J

    move-wide/from16 p1, p27

    iput-wide p1, p0, Landroidx/compose/material3/TimePickerColors;->timeSelectorUnselectedContentColor:J

    return-void
.end method

.method public synthetic constructor <init>(JJJJJJJJJJJJJJLjh2;)V
    .locals 0

    .line 45
    invoke-direct/range {p0 .. p28}, Landroidx/compose/material3/TimePickerColors;-><init>(JJJJJJJJJJJJJJ)V

    return-void
.end method

.method public static synthetic copy-dVHXu7A$default(Landroidx/compose/material3/TimePickerColors;JJJJJJJJJJJJJJILjava/lang/Object;)Landroidx/compose/material3/TimePickerColors;
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p29

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-wide v2, v0, Landroidx/compose/material3/TimePickerColors;->containerColor:J

    goto :goto_0

    :cond_0
    move-wide/from16 v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget-wide v4, v0, Landroidx/compose/material3/TimePickerColors;->selectorColor:J

    goto :goto_1

    :cond_1
    move-wide/from16 v4, p3

    :goto_1
    and-int/lit8 v6, v1, 0x4

    if-eqz v6, :cond_2

    iget-wide v6, v0, Landroidx/compose/material3/TimePickerColors;->containerColor:J

    goto :goto_2

    :cond_2
    move-wide/from16 v6, p5

    :goto_2
    and-int/lit8 v8, v1, 0x8

    if-eqz v8, :cond_3

    iget-wide v8, v0, Landroidx/compose/material3/TimePickerColors;->periodSelectorBorderColor:J

    goto :goto_3

    :cond_3
    move-wide/from16 v8, p7

    :goto_3
    and-int/lit8 v10, v1, 0x10

    if-eqz v10, :cond_4

    iget-wide v10, v0, Landroidx/compose/material3/TimePickerColors;->clockDialSelectedContentColor:J

    goto :goto_4

    :cond_4
    move-wide/from16 v10, p9

    :goto_4
    and-int/lit8 v12, v1, 0x20

    if-eqz v12, :cond_5

    iget-wide v12, v0, Landroidx/compose/material3/TimePickerColors;->clockDialUnselectedContentColor:J

    goto :goto_5

    :cond_5
    move-wide/from16 v12, p11

    :goto_5
    and-int/lit8 v14, v1, 0x40

    if-eqz v14, :cond_6

    iget-wide v14, v0, Landroidx/compose/material3/TimePickerColors;->periodSelectorSelectedContainerColor:J

    goto :goto_6

    :cond_6
    move-wide/from16 v14, p13

    :goto_6
    move-wide/from16 v16, v2

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_7

    iget-wide v2, v0, Landroidx/compose/material3/TimePickerColors;->periodSelectorUnselectedContainerColor:J

    goto :goto_7

    :cond_7
    move-wide/from16 v2, p15

    :goto_7
    move-wide/from16 p1, v2

    and-int/lit16 v2, v1, 0x100

    if-eqz v2, :cond_8

    iget-wide v2, v0, Landroidx/compose/material3/TimePickerColors;->periodSelectorSelectedContentColor:J

    goto :goto_8

    :cond_8
    move-wide/from16 v2, p17

    :goto_8
    move-wide/from16 p3, v2

    and-int/lit16 v2, v1, 0x200

    if-eqz v2, :cond_9

    iget-wide v2, v0, Landroidx/compose/material3/TimePickerColors;->periodSelectorUnselectedContentColor:J

    goto :goto_9

    :cond_9
    move-wide/from16 v2, p19

    :goto_9
    move-wide/from16 p5, v2

    and-int/lit16 v2, v1, 0x400

    if-eqz v2, :cond_a

    iget-wide v2, v0, Landroidx/compose/material3/TimePickerColors;->timeSelectorSelectedContainerColor:J

    goto :goto_a

    :cond_a
    move-wide/from16 v2, p21

    :goto_a
    move-wide/from16 p7, v2

    and-int/lit16 v2, v1, 0x800

    if-eqz v2, :cond_b

    iget-wide v2, v0, Landroidx/compose/material3/TimePickerColors;->timeSelectorUnselectedContainerColor:J

    goto :goto_b

    :cond_b
    move-wide/from16 v2, p23

    :goto_b
    move-wide/from16 p9, v2

    and-int/lit16 v2, v1, 0x1000

    if-eqz v2, :cond_c

    iget-wide v2, v0, Landroidx/compose/material3/TimePickerColors;->timeSelectorSelectedContentColor:J

    goto :goto_c

    :cond_c
    move-wide/from16 v2, p25

    :goto_c
    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_d

    move-wide/from16 p11, v2

    iget-wide v1, v0, Landroidx/compose/material3/TimePickerColors;->timeSelectorUnselectedContentColor:J

    move-wide/from16 p26, p11

    move-wide/from16 p28, v1

    :goto_d
    move-wide/from16 p16, p1

    move-wide/from16 p18, p3

    move-wide/from16 p20, p5

    move-wide/from16 p22, p7

    move-wide/from16 p24, p9

    move-object/from16 p1, v0

    move-wide/from16 p4, v4

    move-wide/from16 p6, v6

    move-wide/from16 p8, v8

    move-wide/from16 p10, v10

    move-wide/from16 p12, v12

    move-wide/from16 p14, v14

    move-wide/from16 p2, v16

    goto :goto_e

    :cond_d
    move-wide/from16 p28, p27

    move-wide/from16 p26, v2

    goto :goto_d

    :goto_e
    invoke-virtual/range {p1 .. p29}, Landroidx/compose/material3/TimePickerColors;->copy-dVHXu7A(JJJJJJJJJJJJJJ)Landroidx/compose/material3/TimePickerColors;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final clockDialContentColor-vNxB06k$material3(Z)J
    .locals 0

    if-eqz p1, :cond_0

    iget-wide p0, p0, Landroidx/compose/material3/TimePickerColors;->clockDialSelectedContentColor:J

    return-wide p0

    :cond_0
    iget-wide p0, p0, Landroidx/compose/material3/TimePickerColors;->clockDialUnselectedContentColor:J

    return-wide p0
.end method

.method public final copy-dVHXu7A(JJJJJJJJJJJJJJ)Landroidx/compose/material3/TimePickerColors;
    .locals 35

    move-object/from16 v0, p0

    const-wide/16 v1, 0x10

    cmp-long v3, p1, v1

    if-eqz v3, :cond_0

    move-wide/from16 v6, p1

    goto :goto_0

    :cond_0
    iget-wide v3, v0, Landroidx/compose/material3/TimePickerColors;->clockDialColor:J

    move-wide v6, v3

    :goto_0
    cmp-long v3, p3, v1

    if-eqz v3, :cond_1

    move-wide/from16 v8, p3

    goto :goto_1

    :cond_1
    iget-wide v3, v0, Landroidx/compose/material3/TimePickerColors;->selectorColor:J

    move-wide v8, v3

    :goto_1
    cmp-long v3, p5, v1

    if-eqz v3, :cond_2

    move-wide/from16 v10, p5

    goto :goto_2

    :cond_2
    iget-wide v3, v0, Landroidx/compose/material3/TimePickerColors;->containerColor:J

    move-wide v10, v3

    :goto_2
    cmp-long v3, p7, v1

    if-eqz v3, :cond_3

    move-wide/from16 v12, p7

    goto :goto_3

    :cond_3
    iget-wide v3, v0, Landroidx/compose/material3/TimePickerColors;->periodSelectorBorderColor:J

    move-wide v12, v3

    :goto_3
    cmp-long v3, p9, v1

    if-eqz v3, :cond_4

    move-wide/from16 v14, p9

    goto :goto_4

    :cond_4
    iget-wide v3, v0, Landroidx/compose/material3/TimePickerColors;->clockDialSelectedContentColor:J

    move-wide v14, v3

    :goto_4
    cmp-long v3, p11, v1

    if-eqz v3, :cond_5

    move-wide/from16 v16, p11

    goto :goto_5

    :cond_5
    iget-wide v3, v0, Landroidx/compose/material3/TimePickerColors;->clockDialUnselectedContentColor:J

    move-wide/from16 v16, v3

    :goto_5
    cmp-long v3, p13, v1

    if-eqz v3, :cond_6

    move-wide/from16 v18, p13

    goto :goto_6

    :cond_6
    iget-wide v3, v0, Landroidx/compose/material3/TimePickerColors;->periodSelectorSelectedContainerColor:J

    move-wide/from16 v18, v3

    :goto_6
    cmp-long v3, p15, v1

    if-eqz v3, :cond_7

    move-wide/from16 v20, p15

    goto :goto_7

    :cond_7
    iget-wide v3, v0, Landroidx/compose/material3/TimePickerColors;->periodSelectorUnselectedContainerColor:J

    move-wide/from16 v20, v3

    :goto_7
    cmp-long v3, p17, v1

    if-eqz v3, :cond_8

    move-wide/from16 v22, p17

    goto :goto_8

    :cond_8
    iget-wide v3, v0, Landroidx/compose/material3/TimePickerColors;->periodSelectorSelectedContentColor:J

    move-wide/from16 v22, v3

    :goto_8
    cmp-long v3, p19, v1

    if-eqz v3, :cond_9

    move-wide/from16 v24, p19

    goto :goto_9

    :cond_9
    iget-wide v3, v0, Landroidx/compose/material3/TimePickerColors;->periodSelectorUnselectedContentColor:J

    move-wide/from16 v24, v3

    :goto_9
    cmp-long v3, p21, v1

    if-eqz v3, :cond_a

    move-wide/from16 v26, p21

    goto :goto_a

    :cond_a
    iget-wide v3, v0, Landroidx/compose/material3/TimePickerColors;->timeSelectorSelectedContainerColor:J

    move-wide/from16 v26, v3

    :goto_a
    cmp-long v3, p23, v1

    if-eqz v3, :cond_b

    move-wide/from16 v28, p23

    goto :goto_b

    :cond_b
    iget-wide v3, v0, Landroidx/compose/material3/TimePickerColors;->timeSelectorUnselectedContainerColor:J

    move-wide/from16 v28, v3

    :goto_b
    cmp-long v3, p25, v1

    if-eqz v3, :cond_c

    move-wide/from16 v30, p25

    goto :goto_c

    :cond_c
    iget-wide v3, v0, Landroidx/compose/material3/TimePickerColors;->timeSelectorSelectedContentColor:J

    move-wide/from16 v30, v3

    :goto_c
    cmp-long v1, p27, v1

    if-eqz v1, :cond_d

    move-wide/from16 v32, p27

    goto :goto_d

    :cond_d
    iget-wide v0, v0, Landroidx/compose/material3/TimePickerColors;->timeSelectorUnselectedContentColor:J

    move-wide/from16 v32, v0

    :goto_d
    new-instance v5, Landroidx/compose/material3/TimePickerColors;

    const/16 v34, 0x0

    invoke-direct/range {v5 .. v34}, Landroidx/compose/material3/TimePickerColors;-><init>(JJJJJJJJJJJJJJLjh2;)V

    return-object v5
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    const-class v2, Landroidx/compose/material3/TimePickerColors;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Landroidx/compose/material3/TimePickerColors;

    iget-wide v2, p0, Landroidx/compose/material3/TimePickerColors;->clockDialColor:J

    iget-wide v4, p1, Landroidx/compose/material3/TimePickerColors;->clockDialColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-wide v2, p0, Landroidx/compose/material3/TimePickerColors;->selectorColor:J

    iget-wide v4, p1, Landroidx/compose/material3/TimePickerColors;->selectorColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-wide v2, p0, Landroidx/compose/material3/TimePickerColors;->containerColor:J

    iget-wide v4, p1, Landroidx/compose/material3/TimePickerColors;->containerColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-wide v2, p0, Landroidx/compose/material3/TimePickerColors;->periodSelectorBorderColor:J

    iget-wide v4, p1, Landroidx/compose/material3/TimePickerColors;->periodSelectorBorderColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-wide v2, p0, Landroidx/compose/material3/TimePickerColors;->periodSelectorSelectedContainerColor:J

    iget-wide v4, p1, Landroidx/compose/material3/TimePickerColors;->periodSelectorSelectedContainerColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    :cond_7
    iget-wide v2, p0, Landroidx/compose/material3/TimePickerColors;->periodSelectorUnselectedContainerColor:J

    iget-wide v4, p1, Landroidx/compose/material3/TimePickerColors;->periodSelectorUnselectedContainerColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    :cond_8
    iget-wide v2, p0, Landroidx/compose/material3/TimePickerColors;->periodSelectorSelectedContentColor:J

    iget-wide v4, p1, Landroidx/compose/material3/TimePickerColors;->periodSelectorSelectedContentColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    :cond_9
    iget-wide v2, p0, Landroidx/compose/material3/TimePickerColors;->periodSelectorUnselectedContentColor:J

    iget-wide v4, p1, Landroidx/compose/material3/TimePickerColors;->periodSelectorUnselectedContentColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    :cond_a
    iget-wide v2, p0, Landroidx/compose/material3/TimePickerColors;->timeSelectorSelectedContainerColor:J

    iget-wide v4, p1, Landroidx/compose/material3/TimePickerColors;->timeSelectorSelectedContainerColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    :cond_b
    iget-wide v2, p0, Landroidx/compose/material3/TimePickerColors;->timeSelectorUnselectedContainerColor:J

    iget-wide v4, p1, Landroidx/compose/material3/TimePickerColors;->timeSelectorUnselectedContainerColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_c

    return v1

    :cond_c
    iget-wide v2, p0, Landroidx/compose/material3/TimePickerColors;->timeSelectorSelectedContentColor:J

    iget-wide v4, p1, Landroidx/compose/material3/TimePickerColors;->timeSelectorSelectedContentColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_d

    return v1

    :cond_d
    iget-wide v2, p0, Landroidx/compose/material3/TimePickerColors;->timeSelectorUnselectedContentColor:J

    iget-wide p0, p1, Landroidx/compose/material3/TimePickerColors;->timeSelectorUnselectedContentColor:J

    invoke-static {v2, v3, p0, p1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result p0

    if-nez p0, :cond_e

    return v1

    :cond_e
    return v0
.end method

.method public final getClockDialColor-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/TimePickerColors;->clockDialColor:J

    return-wide v0
.end method

.method public final getClockDialSelectedContentColor-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/TimePickerColors;->clockDialSelectedContentColor:J

    return-wide v0
.end method

.method public final getClockDialUnselectedContentColor-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/TimePickerColors;->clockDialUnselectedContentColor:J

    return-wide v0
.end method

.method public final getContainerColor-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/TimePickerColors;->containerColor:J

    return-wide v0
.end method

.method public final getPeriodSelectorBorderColor-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/TimePickerColors;->periodSelectorBorderColor:J

    return-wide v0
.end method

.method public final getPeriodSelectorSelectedContainerColor-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/TimePickerColors;->periodSelectorSelectedContainerColor:J

    return-wide v0
.end method

.method public final getPeriodSelectorSelectedContentColor-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/TimePickerColors;->periodSelectorSelectedContentColor:J

    return-wide v0
.end method

.method public final getPeriodSelectorUnselectedContainerColor-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/TimePickerColors;->periodSelectorUnselectedContainerColor:J

    return-wide v0
.end method

.method public final getPeriodSelectorUnselectedContentColor-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/TimePickerColors;->periodSelectorUnselectedContentColor:J

    return-wide v0
.end method

.method public final getSelectorColor-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/TimePickerColors;->selectorColor:J

    return-wide v0
.end method

.method public final getTimeSelectorSelectedContainerColor-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/TimePickerColors;->timeSelectorSelectedContainerColor:J

    return-wide v0
.end method

.method public final getTimeSelectorSelectedContentColor-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/TimePickerColors;->timeSelectorSelectedContentColor:J

    return-wide v0
.end method

.method public final getTimeSelectorUnselectedContainerColor-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/TimePickerColors;->timeSelectorUnselectedContainerColor:J

    return-wide v0
.end method

.method public final getTimeSelectorUnselectedContentColor-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/TimePickerColors;->timeSelectorUnselectedContentColor:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Landroidx/compose/material3/TimePickerColors;->clockDialColor:J

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Landroidx/compose/material3/TimePickerColors;->selectorColor:J

    invoke-static {v0, v1, v2, v3}, Lr01;->b(IIJ)I

    move-result v0

    iget-wide v2, p0, Landroidx/compose/material3/TimePickerColors;->containerColor:J

    invoke-static {v0, v1, v2, v3}, Lr01;->b(IIJ)I

    move-result v0

    iget-wide v2, p0, Landroidx/compose/material3/TimePickerColors;->periodSelectorBorderColor:J

    invoke-static {v0, v1, v2, v3}, Lr01;->b(IIJ)I

    move-result v0

    iget-wide v2, p0, Landroidx/compose/material3/TimePickerColors;->periodSelectorSelectedContainerColor:J

    invoke-static {v0, v1, v2, v3}, Lr01;->b(IIJ)I

    move-result v0

    iget-wide v2, p0, Landroidx/compose/material3/TimePickerColors;->periodSelectorUnselectedContainerColor:J

    invoke-static {v0, v1, v2, v3}, Lr01;->b(IIJ)I

    move-result v0

    iget-wide v2, p0, Landroidx/compose/material3/TimePickerColors;->periodSelectorSelectedContentColor:J

    invoke-static {v0, v1, v2, v3}, Lr01;->b(IIJ)I

    move-result v0

    iget-wide v2, p0, Landroidx/compose/material3/TimePickerColors;->periodSelectorUnselectedContentColor:J

    invoke-static {v0, v1, v2, v3}, Lr01;->b(IIJ)I

    move-result v0

    iget-wide v2, p0, Landroidx/compose/material3/TimePickerColors;->timeSelectorSelectedContainerColor:J

    invoke-static {v0, v1, v2, v3}, Lr01;->b(IIJ)I

    move-result v0

    iget-wide v2, p0, Landroidx/compose/material3/TimePickerColors;->timeSelectorUnselectedContainerColor:J

    invoke-static {v0, v1, v2, v3}, Lr01;->b(IIJ)I

    move-result v0

    iget-wide v2, p0, Landroidx/compose/material3/TimePickerColors;->timeSelectorSelectedContentColor:J

    invoke-static {v0, v1, v2, v3}, Lr01;->b(IIJ)I

    move-result v0

    iget-wide v1, p0, Landroidx/compose/material3/TimePickerColors;->timeSelectorUnselectedContentColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final periodSelectorContainerColor-vNxB06k$material3(Z)J
    .locals 0

    if-eqz p1, :cond_0

    iget-wide p0, p0, Landroidx/compose/material3/TimePickerColors;->periodSelectorSelectedContainerColor:J

    return-wide p0

    :cond_0
    iget-wide p0, p0, Landroidx/compose/material3/TimePickerColors;->periodSelectorUnselectedContainerColor:J

    return-wide p0
.end method

.method public final periodSelectorContentColor-vNxB06k$material3(Z)J
    .locals 0

    if-eqz p1, :cond_0

    iget-wide p0, p0, Landroidx/compose/material3/TimePickerColors;->periodSelectorSelectedContentColor:J

    return-wide p0

    :cond_0
    iget-wide p0, p0, Landroidx/compose/material3/TimePickerColors;->periodSelectorUnselectedContentColor:J

    return-wide p0
.end method

.method public final timeSelectorContainerColor-vNxB06k$material3(Z)J
    .locals 0

    if-eqz p1, :cond_0

    iget-wide p0, p0, Landroidx/compose/material3/TimePickerColors;->timeSelectorSelectedContainerColor:J

    return-wide p0

    :cond_0
    iget-wide p0, p0, Landroidx/compose/material3/TimePickerColors;->timeSelectorUnselectedContainerColor:J

    return-wide p0
.end method

.method public final timeSelectorContentColor-vNxB06k$material3(Z)J
    .locals 0

    if-eqz p1, :cond_0

    iget-wide p0, p0, Landroidx/compose/material3/TimePickerColors;->timeSelectorSelectedContentColor:J

    return-wide p0

    :cond_0
    iget-wide p0, p0, Landroidx/compose/material3/TimePickerColors;->timeSelectorUnselectedContentColor:J

    return-wide p0
.end method
