.class public final synthetic Lpa1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/state/ToggleableState;

.field public final synthetic c:Lll3;

.field public final synthetic d:Landroidx/compose/ui/graphics/drawscope/Stroke;

.field public final synthetic e:Landroidx/compose/ui/graphics/drawscope/Stroke;

.field public final synthetic f:Landroidx/compose/ui/Modifier;

.field public final synthetic g:Z

.field public final synthetic h:Landroidx/compose/material3/CheckboxColors;

.field public final synthetic i:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic j:I

.field public final synthetic k:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/state/ToggleableState;Lll3;Landroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/CheckboxColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpa1;->b:Landroidx/compose/ui/state/ToggleableState;

    iput-object p2, p0, Lpa1;->c:Lll3;

    iput-object p3, p0, Lpa1;->d:Landroidx/compose/ui/graphics/drawscope/Stroke;

    iput-object p4, p0, Lpa1;->e:Landroidx/compose/ui/graphics/drawscope/Stroke;

    iput-object p5, p0, Lpa1;->f:Landroidx/compose/ui/Modifier;

    iput-boolean p6, p0, Lpa1;->g:Z

    iput-object p7, p0, Lpa1;->h:Landroidx/compose/material3/CheckboxColors;

    iput-object p8, p0, Lpa1;->i:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput p9, p0, Lpa1;->j:I

    iput p10, p0, Lpa1;->k:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    move-object v10, p1

    check-cast v10, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v0, p0, Lpa1;->b:Landroidx/compose/ui/state/ToggleableState;

    iget-object v1, p0, Lpa1;->c:Lll3;

    iget-object v2, p0, Lpa1;->d:Landroidx/compose/ui/graphics/drawscope/Stroke;

    iget-object v3, p0, Lpa1;->e:Landroidx/compose/ui/graphics/drawscope/Stroke;

    iget-object v4, p0, Lpa1;->f:Landroidx/compose/ui/Modifier;

    iget-boolean v5, p0, Lpa1;->g:Z

    iget-object v6, p0, Lpa1;->h:Landroidx/compose/material3/CheckboxColors;

    iget-object v7, p0, Lpa1;->i:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget v8, p0, Lpa1;->j:I

    iget v9, p0, Lpa1;->k:I

    invoke-static/range {v0 .. v11}, Landroidx/compose/material3/CheckboxKt;->c(Landroidx/compose/ui/state/ToggleableState;Lll3;Landroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/CheckboxColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
