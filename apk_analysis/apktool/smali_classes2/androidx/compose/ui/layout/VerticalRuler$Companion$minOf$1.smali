.class final Landroidx/compose/ui/layout/VerticalRuler$Companion$minOf$1;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/layout/VerticalRuler$Companion;->minOf([Landroidx/compose/ui/layout/VerticalRuler;)Landroidx/compose/ui/layout/VerticalRuler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lbm3<",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "Ljava/lang/Float;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $rulers:[Landroidx/compose/ui/layout/VerticalRuler;


# direct methods
.method public constructor <init>([Landroidx/compose/ui/layout/VerticalRuler;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/layout/VerticalRuler$Companion$minOf$1;->$rulers:[Landroidx/compose/ui/layout/VerticalRuler;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;F)Ljava/lang/Float;
    .locals 1

    const/4 v0, 0x0

    .line 13
    iget-object p0, p0, Landroidx/compose/ui/layout/VerticalRuler$Companion$minOf$1;->$rulers:[Landroidx/compose/ui/layout/VerticalRuler;

    invoke-static {p1, v0, p0, p2}, Landroidx/compose/ui/layout/RulerKt;->access$mergeRulerValues(Landroidx/compose/ui/layout/Placeable$PlacementScope;Z[Landroidx/compose/ui/layout/Ruler;F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/layout/VerticalRuler$Companion$minOf$1;->invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
