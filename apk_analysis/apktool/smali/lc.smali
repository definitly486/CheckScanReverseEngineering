.class public final synthetic Llc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/layout/AlignmentLine;

.field public final synthetic c:F

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/layout/AlignmentLine;FIIILandroidx/compose/ui/layout/Placeable;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llc;->b:Landroidx/compose/ui/layout/AlignmentLine;

    iput p2, p0, Llc;->c:F

    iput p3, p0, Llc;->d:I

    iput p4, p0, Llc;->e:I

    iput p5, p0, Llc;->f:I

    iput-object p6, p0, Llc;->g:Landroidx/compose/ui/layout/Placeable;

    iput p7, p0, Llc;->h:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget v6, p0, Llc;->h:I

    move-object v7, p1

    check-cast v7, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v0, p0, Llc;->b:Landroidx/compose/ui/layout/AlignmentLine;

    iget v1, p0, Llc;->c:F

    iget v2, p0, Llc;->d:I

    iget v3, p0, Llc;->e:I

    iget v4, p0, Llc;->f:I

    iget-object v5, p0, Llc;->g:Landroidx/compose/ui/layout/Placeable;

    invoke-static/range {v0 .. v7}, Landroidx/compose/foundation/layout/AlignmentLineKt;->a(Landroidx/compose/ui/layout/AlignmentLine;FIIILandroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
