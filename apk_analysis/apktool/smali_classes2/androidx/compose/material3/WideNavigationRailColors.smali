.class public final Landroidx/compose/material3/WideNavigationRailColors;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I


# instance fields
.field private final containerColor:J

.field private final contentColor:J

.field private final modalContainerColor:J

.field private final modalContentColor:J

.field private final modalScrimColor:J


# direct methods
.method private constructor <init>(JJJJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/compose/material3/WideNavigationRailColors;->containerColor:J

    iput-wide p3, p0, Landroidx/compose/material3/WideNavigationRailColors;->contentColor:J

    iput-wide p5, p0, Landroidx/compose/material3/WideNavigationRailColors;->modalContainerColor:J

    iput-wide p7, p0, Landroidx/compose/material3/WideNavigationRailColors;->modalScrimColor:J

    iput-wide p9, p0, Landroidx/compose/material3/WideNavigationRailColors;->modalContentColor:J

    return-void
.end method

.method public synthetic constructor <init>(JJJJJLjh2;)V
    .locals 0

    .line 14
    invoke-direct/range {p0 .. p10}, Landroidx/compose/material3/WideNavigationRailColors;-><init>(JJJJJ)V

    return-void
.end method

.method public static synthetic copy-t635Npw$default(Landroidx/compose/material3/WideNavigationRailColors;JJJJJILjava/lang/Object;)Landroidx/compose/material3/WideNavigationRailColors;
    .locals 11

    and-int/lit8 v0, p11, 0x1

    if-eqz v0, :cond_0

    iget-wide p1, p0, Landroidx/compose/material3/WideNavigationRailColors;->containerColor:J

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p11, 0x2

    if-eqz p1, :cond_1

    iget-wide p3, p0, Landroidx/compose/material3/WideNavigationRailColors;->contentColor:J

    :cond_1
    move-wide v3, p3

    and-int/lit8 p1, p11, 0x4

    if-eqz p1, :cond_2

    iget-wide p1, p0, Landroidx/compose/material3/WideNavigationRailColors;->modalContainerColor:J

    move-wide v5, p1

    goto :goto_0

    :cond_2
    move-wide/from16 v5, p5

    :goto_0
    and-int/lit8 p1, p11, 0x8

    if-eqz p1, :cond_3

    iget-wide p1, p0, Landroidx/compose/material3/WideNavigationRailColors;->modalScrimColor:J

    move-wide v7, p1

    goto :goto_1

    :cond_3
    move-wide/from16 v7, p7

    :goto_1
    and-int/lit8 p1, p11, 0x10

    if-eqz p1, :cond_4

    iget-wide p1, p0, Landroidx/compose/material3/WideNavigationRailColors;->modalContentColor:J

    move-wide v9, p1

    :goto_2
    move-object v0, p0

    goto :goto_3

    :cond_4
    move-wide/from16 v9, p9

    goto :goto_2

    :goto_3
    invoke-virtual/range {v0 .. v10}, Landroidx/compose/material3/WideNavigationRailColors;->copy-t635Npw(JJJJJ)Landroidx/compose/material3/WideNavigationRailColors;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy-t635Npw(JJJJJ)Landroidx/compose/material3/WideNavigationRailColors;
    .locals 17

    move-object/from16 v0, p0

    const-wide/16 v1, 0x10

    cmp-long v3, p1, v1

    if-eqz v3, :cond_0

    move-wide/from16 v6, p1

    goto :goto_0

    :cond_0
    iget-wide v3, v0, Landroidx/compose/material3/WideNavigationRailColors;->containerColor:J

    move-wide v6, v3

    :goto_0
    cmp-long v3, p3, v1

    if-eqz v3, :cond_1

    move-wide/from16 v8, p3

    goto :goto_1

    :cond_1
    iget-wide v3, v0, Landroidx/compose/material3/WideNavigationRailColors;->contentColor:J

    move-wide v8, v3

    :goto_1
    cmp-long v3, p5, v1

    if-eqz v3, :cond_2

    move-wide/from16 v10, p5

    goto :goto_2

    :cond_2
    iget-wide v3, v0, Landroidx/compose/material3/WideNavigationRailColors;->modalContainerColor:J

    move-wide v10, v3

    :goto_2
    cmp-long v3, p7, v1

    if-eqz v3, :cond_3

    move-wide/from16 v12, p7

    goto :goto_3

    :cond_3
    iget-wide v3, v0, Landroidx/compose/material3/WideNavigationRailColors;->modalScrimColor:J

    move-wide v12, v3

    :goto_3
    cmp-long v1, p9, v1

    if-eqz v1, :cond_4

    move-wide/from16 v14, p9

    goto :goto_4

    :cond_4
    iget-wide v0, v0, Landroidx/compose/material3/WideNavigationRailColors;->modalContentColor:J

    move-wide v14, v0

    :goto_4
    new-instance v5, Landroidx/compose/material3/WideNavigationRailColors;

    const/16 v16, 0x0

    invoke-direct/range {v5 .. v16}, Landroidx/compose/material3/WideNavigationRailColors;-><init>(JJJJJLjh2;)V

    return-object v5
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    instance-of v2, p1, Landroidx/compose/material3/WideNavigationRailColors;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Landroidx/compose/material3/WideNavigationRailColors;->containerColor:J

    check-cast p1, Landroidx/compose/material3/WideNavigationRailColors;

    iget-wide v4, p1, Landroidx/compose/material3/WideNavigationRailColors;->containerColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-wide v2, p0, Landroidx/compose/material3/WideNavigationRailColors;->contentColor:J

    iget-wide v4, p1, Landroidx/compose/material3/WideNavigationRailColors;->contentColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-wide v2, p0, Landroidx/compose/material3/WideNavigationRailColors;->modalContainerColor:J

    iget-wide v4, p1, Landroidx/compose/material3/WideNavigationRailColors;->modalContainerColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-wide v2, p0, Landroidx/compose/material3/WideNavigationRailColors;->modalScrimColor:J

    iget-wide p0, p1, Landroidx/compose/material3/WideNavigationRailColors;->modalScrimColor:J

    invoke-static {v2, v3, p0, p1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result p0

    if-nez p0, :cond_5

    return v1

    :cond_5
    return v0

    :cond_6
    :goto_0
    return v1
.end method

.method public final getContainerColor-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/WideNavigationRailColors;->containerColor:J

    return-wide v0
.end method

.method public final getContentColor-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/WideNavigationRailColors;->contentColor:J

    return-wide v0
.end method

.method public final getModalContainerColor-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/WideNavigationRailColors;->modalContainerColor:J

    return-wide v0
.end method

.method public final getModalContentColor-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/WideNavigationRailColors;->modalContentColor:J

    return-wide v0
.end method

.method public final getModalScrimColor-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/WideNavigationRailColors;->modalScrimColor:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Landroidx/compose/material3/WideNavigationRailColors;->containerColor:J

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Landroidx/compose/material3/WideNavigationRailColors;->contentColor:J

    invoke-static {v0, v1, v2, v3}, Lr01;->b(IIJ)I

    move-result v0

    iget-wide v2, p0, Landroidx/compose/material3/WideNavigationRailColors;->modalContainerColor:J

    invoke-static {v0, v1, v2, v3}, Lr01;->b(IIJ)I

    move-result v0

    iget-wide v2, p0, Landroidx/compose/material3/WideNavigationRailColors;->modalScrimColor:J

    invoke-static {v0, v1, v2, v3}, Lr01;->b(IIJ)I

    move-result v0

    iget-wide v1, p0, Landroidx/compose/material3/WideNavigationRailColors;->modalContentColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
