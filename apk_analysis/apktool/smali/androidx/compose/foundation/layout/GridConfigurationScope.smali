.class public interface abstract Landroidx/compose/foundation/layout/GridConfigurationScope;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/unit/Density;


# annotations
.annotation runtime Landroidx/compose/foundation/layout/LayoutScopeMarker;
.end annotation


# direct methods
.method public static synthetic getFr-9P9H2UQ$annotations(D)V
    .locals 0

    return-void
.end method

.method public static synthetic getFr-9P9H2UQ$annotations(F)V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getFr-9P9H2UQ$annotations(I)V
    .locals 0

    .line 2
    return-void
.end method


# virtual methods
.method public abstract column(F)V
.end method

.method public abstract column-0680j_4(F)V
.end method

.method public abstract column-118E5d0(J)V
.end method

.method public abstract column-XZblgos(F)V
.end method

.method public abstract columnGap-0680j_4(F)V
.end method

.method public abstract gap-0680j_4(F)V
.end method

.method public abstract gap-YgX7TsA(FF)V
.end method

.method public abstract getConstraints-msEJaDk()J
.end method

.method public abstract getFlow-ITJdzs4()I
.end method

.method public getFr-9P9H2UQ(D)F
    .locals 0

    double-to-float p0, p1

    .line 7
    invoke-static {p0}, Landroidx/compose/foundation/layout/Fr;->constructor-impl(F)F

    move-result p0

    return p0
.end method

.method public getFr-9P9H2UQ(F)F
    .locals 0

    .line 6
    invoke-static {p1}, Landroidx/compose/foundation/layout/Fr;->constructor-impl(F)F

    move-result p0

    return p0
.end method

.method public getFr-9P9H2UQ(I)F
    .locals 0

    int-to-float p0, p1

    invoke-static {p0}, Landroidx/compose/foundation/layout/Fr;->constructor-impl(F)F

    move-result p0

    return p0
.end method

.method public minmax-1z8F7YY(FF)J
    .locals 0

    sget-object p0, Landroidx/compose/foundation/layout/GridTrackSize;->Companion:Landroidx/compose/foundation/layout/GridTrackSize$Companion;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/layout/GridTrackSize$Companion;->MinMax-1z8F7YY(FF)J

    move-result-wide p0

    return-wide p0
.end method

.method public abstract row(F)V
.end method

.method public abstract row-0680j_4(F)V
.end method

.method public abstract row-118E5d0(J)V
.end method

.method public abstract row-XZblgos(F)V
.end method

.method public abstract rowGap-0680j_4(F)V
.end method

.method public abstract setFlow-4t4_IgM(I)V
.end method
