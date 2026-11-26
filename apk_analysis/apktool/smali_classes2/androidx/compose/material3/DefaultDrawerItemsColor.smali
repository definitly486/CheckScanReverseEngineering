.class final Landroidx/compose/material3/DefaultDrawerItemsColor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/material3/NavigationDrawerItemColors;


# instance fields
.field private final selectedBadgeColor:J

.field private final selectedContainerColor:J

.field private final selectedIconColor:J

.field private final selectedTextColor:J

.field private final unselectedBadgeColor:J

.field private final unselectedContainerColor:J

.field private final unselectedIconColor:J

.field private final unselectedTextColor:J


# direct methods
.method private constructor <init>(JJJJJJJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/compose/material3/DefaultDrawerItemsColor;->selectedIconColor:J

    iput-wide p3, p0, Landroidx/compose/material3/DefaultDrawerItemsColor;->unselectedIconColor:J

    iput-wide p5, p0, Landroidx/compose/material3/DefaultDrawerItemsColor;->selectedTextColor:J

    iput-wide p7, p0, Landroidx/compose/material3/DefaultDrawerItemsColor;->unselectedTextColor:J

    iput-wide p9, p0, Landroidx/compose/material3/DefaultDrawerItemsColor;->selectedContainerColor:J

    iput-wide p11, p0, Landroidx/compose/material3/DefaultDrawerItemsColor;->unselectedContainerColor:J

    iput-wide p13, p0, Landroidx/compose/material3/DefaultDrawerItemsColor;->selectedBadgeColor:J

    move-wide p1, p15

    iput-wide p1, p0, Landroidx/compose/material3/DefaultDrawerItemsColor;->unselectedBadgeColor:J

    return-void
.end method

.method public synthetic constructor <init>(JJJJJJJJLjh2;)V
    .locals 0

    .line 21
    invoke-direct/range {p0 .. p16}, Landroidx/compose/material3/DefaultDrawerItemsColor;-><init>(JJJJJJJJ)V

    return-void
.end method


# virtual methods
.method public badgeColor(ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation

    const v0, -0x217a7b24

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.material3.DefaultDrawerItemsColor.badgeColor (NavigationDrawer.kt:1249)"

    invoke-static {v0, p3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-wide p0, p0, Landroidx/compose/material3/DefaultDrawerItemsColor;->selectedBadgeColor:J

    goto :goto_0

    :cond_1
    iget-wide p0, p0, Landroidx/compose/material3/DefaultDrawerItemsColor;->unselectedBadgeColor:J

    :goto_0
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p2, p1}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    return-object p0
.end method

.method public containerColor(ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation

    const v0, -0x19d6e142

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.material3.DefaultDrawerItemsColor.containerColor (NavigationDrawer.kt:1242)"

    invoke-static {v0, p3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-wide p0, p0, Landroidx/compose/material3/DefaultDrawerItemsColor;->selectedContainerColor:J

    goto :goto_0

    :cond_1
    iget-wide p0, p0, Landroidx/compose/material3/DefaultDrawerItemsColor;->unselectedContainerColor:J

    :goto_0
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p2, p1}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Landroidx/compose/material3/DefaultDrawerItemsColor;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-wide v2, p0, Landroidx/compose/material3/DefaultDrawerItemsColor;->selectedIconColor:J

    check-cast p1, Landroidx/compose/material3/DefaultDrawerItemsColor;

    iget-wide v4, p1, Landroidx/compose/material3/DefaultDrawerItemsColor;->selectedIconColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-wide v2, p0, Landroidx/compose/material3/DefaultDrawerItemsColor;->unselectedIconColor:J

    iget-wide v4, p1, Landroidx/compose/material3/DefaultDrawerItemsColor;->unselectedIconColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-wide v2, p0, Landroidx/compose/material3/DefaultDrawerItemsColor;->selectedTextColor:J

    iget-wide v4, p1, Landroidx/compose/material3/DefaultDrawerItemsColor;->selectedTextColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    iget-wide v2, p0, Landroidx/compose/material3/DefaultDrawerItemsColor;->unselectedTextColor:J

    iget-wide v4, p1, Landroidx/compose/material3/DefaultDrawerItemsColor;->unselectedTextColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    :cond_5
    iget-wide v2, p0, Landroidx/compose/material3/DefaultDrawerItemsColor;->selectedContainerColor:J

    iget-wide v4, p1, Landroidx/compose/material3/DefaultDrawerItemsColor;->selectedContainerColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget-wide v2, p0, Landroidx/compose/material3/DefaultDrawerItemsColor;->unselectedContainerColor:J

    iget-wide v4, p1, Landroidx/compose/material3/DefaultDrawerItemsColor;->unselectedContainerColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_7

    return v1

    :cond_7
    iget-wide v2, p0, Landroidx/compose/material3/DefaultDrawerItemsColor;->selectedBadgeColor:J

    iget-wide v4, p1, Landroidx/compose/material3/DefaultDrawerItemsColor;->selectedBadgeColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_8

    return v1

    :cond_8
    iget-wide v0, p0, Landroidx/compose/material3/DefaultDrawerItemsColor;->unselectedBadgeColor:J

    iget-wide p0, p1, Landroidx/compose/material3/DefaultDrawerItemsColor;->unselectedBadgeColor:J

    invoke-static {v0, v1, p0, p1}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result p0

    return p0
.end method

.method public final getSelectedBadgeColor-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/DefaultDrawerItemsColor;->selectedBadgeColor:J

    return-wide v0
.end method

.method public final getSelectedContainerColor-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/DefaultDrawerItemsColor;->selectedContainerColor:J

    return-wide v0
.end method

.method public final getSelectedIconColor-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/DefaultDrawerItemsColor;->selectedIconColor:J

    return-wide v0
.end method

.method public final getSelectedTextColor-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/DefaultDrawerItemsColor;->selectedTextColor:J

    return-wide v0
.end method

.method public final getUnselectedBadgeColor-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/DefaultDrawerItemsColor;->unselectedBadgeColor:J

    return-wide v0
.end method

.method public final getUnselectedContainerColor-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/DefaultDrawerItemsColor;->unselectedContainerColor:J

    return-wide v0
.end method

.method public final getUnselectedIconColor-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/DefaultDrawerItemsColor;->unselectedIconColor:J

    return-wide v0
.end method

.method public final getUnselectedTextColor-0d7_KjU()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material3/DefaultDrawerItemsColor;->unselectedTextColor:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Landroidx/compose/material3/DefaultDrawerItemsColor;->selectedIconColor:J

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Landroidx/compose/material3/DefaultDrawerItemsColor;->unselectedIconColor:J

    invoke-static {v0, v1, v2, v3}, Lr01;->b(IIJ)I

    move-result v0

    iget-wide v2, p0, Landroidx/compose/material3/DefaultDrawerItemsColor;->selectedTextColor:J

    invoke-static {v0, v1, v2, v3}, Lr01;->b(IIJ)I

    move-result v0

    iget-wide v2, p0, Landroidx/compose/material3/DefaultDrawerItemsColor;->unselectedTextColor:J

    invoke-static {v0, v1, v2, v3}, Lr01;->b(IIJ)I

    move-result v0

    iget-wide v2, p0, Landroidx/compose/material3/DefaultDrawerItemsColor;->selectedContainerColor:J

    invoke-static {v0, v1, v2, v3}, Lr01;->b(IIJ)I

    move-result v0

    iget-wide v2, p0, Landroidx/compose/material3/DefaultDrawerItemsColor;->unselectedContainerColor:J

    invoke-static {v0, v1, v2, v3}, Lr01;->b(IIJ)I

    move-result v0

    iget-wide v2, p0, Landroidx/compose/material3/DefaultDrawerItemsColor;->selectedBadgeColor:J

    invoke-static {v0, v1, v2, v3}, Lr01;->b(IIJ)I

    move-result v0

    iget-wide v1, p0, Landroidx/compose/material3/DefaultDrawerItemsColor;->unselectedBadgeColor:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public iconColor(ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation

    const v0, 0x4407aeea

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.material3.DefaultDrawerItemsColor.iconColor (NavigationDrawer.kt:1232)"

    invoke-static {v0, p3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-wide p0, p0, Landroidx/compose/material3/DefaultDrawerItemsColor;->selectedIconColor:J

    goto :goto_0

    :cond_1
    iget-wide p0, p0, Landroidx/compose/material3/DefaultDrawerItemsColor;->unselectedIconColor:J

    :goto_0
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p2, p1}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    return-object p0
.end method

.method public textColor(ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation

    const v0, 0x4c00a0b6    # 3.3719E7f

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.material3.DefaultDrawerItemsColor.textColor (NavigationDrawer.kt:1237)"

    invoke-static {v0, p3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-wide p0, p0, Landroidx/compose/material3/DefaultDrawerItemsColor;->selectedTextColor:J

    goto :goto_0

    :cond_1
    iget-wide p0, p0, Landroidx/compose/material3/DefaultDrawerItemsColor;->unselectedTextColor:J

    :goto_0
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p2, p1}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    return-object p0
.end method
