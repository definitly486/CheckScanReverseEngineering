.class public final synthetic Ljd7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic c:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic d:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic e:I

.field public final synthetic f:Landroidx/compose/foundation/layout/WindowInsets;

.field public final synthetic g:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

.field public final synthetic h:I

.field public final synthetic i:I

.field public final synthetic j:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic k:Landroidx/compose/material3/FabPlacement;

.field public final synthetic l:Landroidx/compose/ui/layout/Placeable;

.field public final synthetic m:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;ILandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/layout/SubcomposeMeasureScope;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/material3/FabPlacement;Landroidx/compose/ui/layout/Placeable;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljd7;->b:Landroidx/compose/ui/layout/Placeable;

    iput-object p2, p0, Ljd7;->c:Landroidx/compose/ui/layout/Placeable;

    iput-object p3, p0, Ljd7;->d:Landroidx/compose/ui/layout/Placeable;

    iput p4, p0, Ljd7;->e:I

    iput-object p5, p0, Ljd7;->f:Landroidx/compose/foundation/layout/WindowInsets;

    iput-object p6, p0, Ljd7;->g:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    iput p7, p0, Ljd7;->h:I

    iput p8, p0, Ljd7;->i:I

    iput-object p9, p0, Ljd7;->j:Landroidx/compose/ui/layout/Placeable;

    iput-object p10, p0, Ljd7;->k:Landroidx/compose/material3/FabPlacement;

    iput-object p11, p0, Ljd7;->l:Landroidx/compose/ui/layout/Placeable;

    iput-object p12, p0, Ljd7;->m:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    iget-object v11, p0, Ljd7;->m:Ljava/lang/Integer;

    move-object v12, p1

    check-cast v12, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object v0, p0, Ljd7;->b:Landroidx/compose/ui/layout/Placeable;

    iget-object v1, p0, Ljd7;->c:Landroidx/compose/ui/layout/Placeable;

    iget-object v2, p0, Ljd7;->d:Landroidx/compose/ui/layout/Placeable;

    iget v3, p0, Ljd7;->e:I

    iget-object v4, p0, Ljd7;->f:Landroidx/compose/foundation/layout/WindowInsets;

    iget-object v5, p0, Ljd7;->g:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    iget v6, p0, Ljd7;->h:I

    iget v7, p0, Ljd7;->i:I

    iget-object v8, p0, Ljd7;->j:Landroidx/compose/ui/layout/Placeable;

    iget-object v9, p0, Ljd7;->k:Landroidx/compose/material3/FabPlacement;

    iget-object v10, p0, Ljd7;->l:Landroidx/compose/ui/layout/Placeable;

    invoke-static/range {v0 .. v12}, Landroidx/compose/material3/ScaffoldKt;->d(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;ILandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/layout/SubcomposeMeasureScope;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/material3/FabPlacement;Landroidx/compose/ui/layout/Placeable;Ljava/lang/Integer;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
