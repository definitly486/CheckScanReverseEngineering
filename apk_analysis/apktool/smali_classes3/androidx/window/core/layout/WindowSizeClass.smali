.class public final Landroidx/window/core/layout/WindowSizeClass;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/core/layout/WindowSizeClass$Companion;
    }
.end annotation


# static fields
.field public static final BREAKPOINTS_V1:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/window/core/layout/WindowSizeClass;",
            ">;"
        }
    .end annotation
.end field

.field public static final BREAKPOINTS_V2:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/window/core/layout/WindowSizeClass;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Landroidx/window/core/layout/WindowSizeClass$Companion;

.field private static final HEIGHT_DP_BREAKPOINTS_V1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final HEIGHT_DP_BREAKPOINTS_V2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final HEIGHT_DP_EXPANDED_LOWER_BOUND:I = 0x384

.field public static final HEIGHT_DP_MEDIUM_LOWER_BOUND:I = 0x1e0

.field private static final WIDTH_DP_BREAKPOINTS_V1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final WIDTH_DP_BREAKPOINTS_V2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final WIDTH_DP_EXPANDED_LOWER_BOUND:I = 0x348

.field public static final WIDTH_DP_EXTRA_LARGE_LOWER_BOUND:I = 0x640

.field public static final WIDTH_DP_LARGE_LOWER_BOUND:I = 0x4b0

.field public static final WIDTH_DP_MEDIUM_LOWER_BOUND:I = 0x258


# instance fields
.field private final minHeightDp:I

.field private final minWidthDp:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Landroidx/window/core/layout/WindowSizeClass$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/window/core/layout/WindowSizeClass$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/window/core/layout/WindowSizeClass;->Companion:Landroidx/window/core/layout/WindowSizeClass$Companion;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x258

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x348

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Landroidx/window/core/layout/WindowSizeClass;->WIDTH_DP_BREAKPOINTS_V1:Ljava/util/List;

    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    const/16 v4, 0x4b0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x640

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v4, v3}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v3

    sput-object v3, Landroidx/window/core/layout/WindowSizeClass;->WIDTH_DP_BREAKPOINTS_V2:Ljava/util/List;

    const/16 v4, 0x1e0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x384

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v1, v4, v5}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Landroidx/window/core/layout/WindowSizeClass;->HEIGHT_DP_BREAKPOINTS_V1:Ljava/util/List;

    sput-object v1, Landroidx/window/core/layout/WindowSizeClass;->HEIGHT_DP_BREAKPOINTS_V2:Ljava/util/List;

    invoke-static {v0, v2, v1}, Landroidx/window/core/layout/WindowSizeClass$Companion;->access$createBreakpointSet(Landroidx/window/core/layout/WindowSizeClass$Companion;Ljava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v2

    sput-object v2, Landroidx/window/core/layout/WindowSizeClass;->BREAKPOINTS_V1:Ljava/util/Set;

    invoke-static {v0, v3, v1}, Landroidx/window/core/layout/WindowSizeClass$Companion;->access$createBreakpointSet(Landroidx/window/core/layout/WindowSizeClass$Companion;Ljava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroidx/window/core/layout/WindowSizeClass;->BREAKPOINTS_V2:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    float-to-int p1, p1

    float-to-int p2, p2

    .line 36
    invoke-direct {p0, p1, p2}, Landroidx/window/core/layout/WindowSizeClass;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/window/core/layout/WindowSizeClass;->minWidthDp:I

    iput p2, p0, Landroidx/window/core/layout/WindowSizeClass;->minHeightDp:I

    const/16 p0, 0x2e

    if-ltz p1, :cond_1

    if-ltz p2, :cond_0

    return-void

    :cond_0
    const-string p1, "Expected minHeightDp to be at least 0, minHeightDp: "

    invoke-static {p1, p2, p0}, Lqz0;->d(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc9;->f(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    const-string p2, "Expected minWidthDp to be at least 0, minWidthDp: "

    invoke-static {p2, p1, p0}, Lqz0;->d(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc9;->f(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final compute(FF)Landroidx/window/core/layout/WindowSizeClass;
    .locals 1
    .annotation runtime Lul2;
    .end annotation

    sget-object v0, Landroidx/window/core/layout/WindowSizeClass;->Companion:Landroidx/window/core/layout/WindowSizeClass$Companion;

    invoke-virtual {v0, p0, p1}, Landroidx/window/core/layout/WindowSizeClass$Companion;->compute(FF)Landroidx/window/core/layout/WindowSizeClass;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getWindowHeightSizeClass$annotations()V
    .locals 0
    .annotation runtime Lul2;
    .end annotation

    return-void
.end method

.method public static synthetic getWindowWidthSizeClass$annotations()V
    .locals 0
    .annotation runtime Lul2;
    .end annotation

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    const-class v2, Landroidx/window/core/layout/WindowSizeClass;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroidx/window/core/layout/WindowSizeClass;

    iget v2, p0, Landroidx/window/core/layout/WindowSizeClass;->minWidthDp:I

    iget v3, p1, Landroidx/window/core/layout/WindowSizeClass;->minWidthDp:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget p0, p0, Landroidx/window/core/layout/WindowSizeClass;->minHeightDp:I

    iget p1, p1, Landroidx/window/core/layout/WindowSizeClass;->minHeightDp:I

    if-eq p0, p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public final getMinHeightDp()I
    .locals 0

    iget p0, p0, Landroidx/window/core/layout/WindowSizeClass;->minHeightDp:I

    return p0
.end method

.method public final getMinWidthDp()I
    .locals 0

    iget p0, p0, Landroidx/window/core/layout/WindowSizeClass;->minWidthDp:I

    return p0
.end method

.method public final getWindowHeightSizeClass()Landroidx/window/core/layout/WindowHeightSizeClass;
    .locals 1

    sget-object v0, Landroidx/window/core/layout/WindowHeightSizeClass;->Companion:Landroidx/window/core/layout/WindowHeightSizeClass$Companion;

    iget p0, p0, Landroidx/window/core/layout/WindowSizeClass;->minHeightDp:I

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroidx/window/core/layout/WindowHeightSizeClass$Companion;->compute$window_core(F)Landroidx/window/core/layout/WindowHeightSizeClass;

    move-result-object p0

    return-object p0
.end method

.method public final getWindowWidthSizeClass()Landroidx/window/core/layout/WindowWidthSizeClass;
    .locals 1

    sget-object v0, Landroidx/window/core/layout/WindowWidthSizeClass;->Companion:Landroidx/window/core/layout/WindowWidthSizeClass$Companion;

    iget p0, p0, Landroidx/window/core/layout/WindowSizeClass;->minWidthDp:I

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroidx/window/core/layout/WindowWidthSizeClass$Companion;->compute$window_core(F)Landroidx/window/core/layout/WindowWidthSizeClass;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroidx/window/core/layout/WindowSizeClass;->minWidthDp:I

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Landroidx/window/core/layout/WindowSizeClass;->minHeightDp:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final isAtLeastBreakpoint(II)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/window/core/layout/WindowSizeClass;->isWidthAtLeastBreakpoint(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Landroidx/window/core/layout/WindowSizeClass;->isHeightAtLeastBreakpoint(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isHeightAtLeastBreakpoint(I)Z
    .locals 0

    iget p0, p0, Landroidx/window/core/layout/WindowSizeClass;->minHeightDp:I

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isWidthAtLeastBreakpoint(I)Z
    .locals 0

    iget p0, p0, Landroidx/window/core/layout/WindowSizeClass;->minWidthDp:I

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WindowSizeClass(minWidthDp="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/window/core/layout/WindowSizeClass;->minWidthDp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", minHeightDp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/window/core/layout/WindowSizeClass;->minHeightDp:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Lrg;->h(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
