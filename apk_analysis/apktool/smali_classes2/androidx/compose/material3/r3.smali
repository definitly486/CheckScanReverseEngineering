.class public final synthetic Landroidx/compose/material3/r3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/runtime/MutableState;

.field public final synthetic c:F

.field public final synthetic d:Landroidx/compose/material3/SearchBarState;

.field public final synthetic e:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic f:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic g:I

.field public final synthetic h:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic i:I

.field public final synthetic j:J

.field public final synthetic k:Landroidx/compose/ui/layout/MeasureScope;

.field public final synthetic l:I

.field public final synthetic m:Landroidx/compose/runtime/MutableState;

.field public final synthetic n:I

.field public final synthetic o:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/MutableState;FLandroidx/compose/material3/SearchBarState;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/Placeable;IJLandroidx/compose/ui/layout/MeasureScope;ILandroidx/compose/runtime/MutableState;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/r3;->b:Landroidx/compose/runtime/MutableState;

    iput p2, p0, Landroidx/compose/material3/r3;->c:F

    iput-object p3, p0, Landroidx/compose/material3/r3;->d:Landroidx/compose/material3/SearchBarState;

    iput-object p4, p0, Landroidx/compose/material3/r3;->e:Landroidx/compose/ui/layout/Placeable;

    iput-object p5, p0, Landroidx/compose/material3/r3;->f:Landroidx/compose/ui/layout/Placeable;

    iput p6, p0, Landroidx/compose/material3/r3;->g:I

    iput-object p7, p0, Landroidx/compose/material3/r3;->h:Landroidx/compose/ui/layout/Placeable;

    iput p8, p0, Landroidx/compose/material3/r3;->i:I

    iput-wide p9, p0, Landroidx/compose/material3/r3;->j:J

    iput-object p11, p0, Landroidx/compose/material3/r3;->k:Landroidx/compose/ui/layout/MeasureScope;

    iput p12, p0, Landroidx/compose/material3/r3;->l:I

    iput-object p13, p0, Landroidx/compose/material3/r3;->m:Landroidx/compose/runtime/MutableState;

    iput p14, p0, Landroidx/compose/material3/r3;->n:I

    iput p15, p0, Landroidx/compose/material3/r3;->o:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    iget v15, v0, Landroidx/compose/material3/r3;->o:I

    move-object/from16 v16, p1

    check-cast v16, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v1, v0, Landroidx/compose/material3/r3;->b:Landroidx/compose/runtime/MutableState;

    iget v2, v0, Landroidx/compose/material3/r3;->c:F

    iget-object v3, v0, Landroidx/compose/material3/r3;->d:Landroidx/compose/material3/SearchBarState;

    iget-object v4, v0, Landroidx/compose/material3/r3;->e:Landroidx/compose/ui/layout/Placeable;

    iget-object v5, v0, Landroidx/compose/material3/r3;->f:Landroidx/compose/ui/layout/Placeable;

    iget v6, v0, Landroidx/compose/material3/r3;->g:I

    iget-object v7, v0, Landroidx/compose/material3/r3;->h:Landroidx/compose/ui/layout/Placeable;

    iget v8, v0, Landroidx/compose/material3/r3;->i:I

    iget-wide v9, v0, Landroidx/compose/material3/r3;->j:J

    iget-object v11, v0, Landroidx/compose/material3/r3;->k:Landroidx/compose/ui/layout/MeasureScope;

    iget v12, v0, Landroidx/compose/material3/r3;->l:I

    iget-object v13, v0, Landroidx/compose/material3/r3;->m:Landroidx/compose/runtime/MutableState;

    iget v14, v0, Landroidx/compose/material3/r3;->n:I

    invoke-static/range {v1 .. v16}, Landroidx/compose/material3/SearchBarKt$FullScreenSearchBarLayout$2$1;->a(Landroidx/compose/runtime/MutableState;FLandroidx/compose/material3/SearchBarState;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/Placeable;IJLandroidx/compose/ui/layout/MeasureScope;ILandroidx/compose/runtime/MutableState;IILandroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object v0

    return-object v0
.end method
