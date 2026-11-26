.class public final synthetic Loa1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Landroidx/compose/ui/state/ToggleableState;

.field public final synthetic d:Landroidx/compose/ui/Modifier;

.field public final synthetic e:Landroidx/compose/material3/CheckboxColors;

.field public final synthetic f:Landroidx/compose/ui/graphics/drawscope/Stroke;

.field public final synthetic g:Landroidx/compose/ui/graphics/drawscope/Stroke;

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(ZLandroidx/compose/ui/state/ToggleableState;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/CheckboxColors;Landroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/drawscope/Stroke;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Loa1;->b:Z

    iput-object p2, p0, Loa1;->c:Landroidx/compose/ui/state/ToggleableState;

    iput-object p3, p0, Loa1;->d:Landroidx/compose/ui/Modifier;

    iput-object p4, p0, Loa1;->e:Landroidx/compose/material3/CheckboxColors;

    iput-object p5, p0, Loa1;->f:Landroidx/compose/ui/graphics/drawscope/Stroke;

    iput-object p6, p0, Loa1;->g:Landroidx/compose/ui/graphics/drawscope/Stroke;

    iput p7, p0, Loa1;->h:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-boolean v0, p0, Loa1;->b:Z

    iget-object v1, p0, Loa1;->c:Landroidx/compose/ui/state/ToggleableState;

    iget-object v2, p0, Loa1;->d:Landroidx/compose/ui/Modifier;

    iget-object v3, p0, Loa1;->e:Landroidx/compose/material3/CheckboxColors;

    iget-object v4, p0, Loa1;->f:Landroidx/compose/ui/graphics/drawscope/Stroke;

    iget-object v5, p0, Loa1;->g:Landroidx/compose/ui/graphics/drawscope/Stroke;

    iget v6, p0, Loa1;->h:I

    invoke-static/range {v0 .. v8}, Landroidx/compose/material3/CheckboxKt;->h(ZLandroidx/compose/ui/state/ToggleableState;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/CheckboxColors;Landroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/drawscope/Stroke;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
