.class public final synthetic Lrj7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/SearchBarState;

.field public final synthetic c:Landroidx/compose/material3/internal/PredictiveBackState;

.field public final synthetic d:Lbm3;

.field public final synthetic e:Landroidx/compose/ui/Modifier;

.field public final synthetic f:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic g:Landroidx/compose/material3/SearchBarColors;

.field public final synthetic h:F

.field public final synthetic i:F

.field public final synthetic j:Landroidx/compose/foundation/layout/WindowInsets;

.field public final synthetic k:Ldm3;

.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/SearchBarState;Landroidx/compose/material3/internal/PredictiveBackState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/layout/WindowInsets;Ldm3;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrj7;->b:Landroidx/compose/material3/SearchBarState;

    iput-object p2, p0, Lrj7;->c:Landroidx/compose/material3/internal/PredictiveBackState;

    iput-object p3, p0, Lrj7;->d:Lbm3;

    iput-object p4, p0, Lrj7;->e:Landroidx/compose/ui/Modifier;

    iput-object p5, p0, Lrj7;->f:Landroidx/compose/ui/graphics/Shape;

    iput-object p6, p0, Lrj7;->g:Landroidx/compose/material3/SearchBarColors;

    iput p7, p0, Lrj7;->h:F

    iput p8, p0, Lrj7;->i:F

    iput-object p9, p0, Lrj7;->j:Landroidx/compose/foundation/layout/WindowInsets;

    iput-object p10, p0, Lrj7;->k:Ldm3;

    iput p11, p0, Lrj7;->l:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    move-object v11, p1

    check-cast v11, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v0, p0, Lrj7;->b:Landroidx/compose/material3/SearchBarState;

    iget-object v1, p0, Lrj7;->c:Landroidx/compose/material3/internal/PredictiveBackState;

    iget-object v2, p0, Lrj7;->d:Lbm3;

    iget-object v3, p0, Lrj7;->e:Landroidx/compose/ui/Modifier;

    iget-object v4, p0, Lrj7;->f:Landroidx/compose/ui/graphics/Shape;

    iget-object v5, p0, Lrj7;->g:Landroidx/compose/material3/SearchBarColors;

    iget v6, p0, Lrj7;->h:F

    iget v7, p0, Lrj7;->i:F

    iget-object v8, p0, Lrj7;->j:Landroidx/compose/foundation/layout/WindowInsets;

    iget-object v9, p0, Lrj7;->k:Ldm3;

    iget v10, p0, Lrj7;->l:I

    invoke-static/range {v0 .. v12}, Landroidx/compose/material3/SearchBarKt;->n(Landroidx/compose/material3/SearchBarState;Landroidx/compose/material3/internal/PredictiveBackState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/layout/WindowInsets;Ldm3;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
