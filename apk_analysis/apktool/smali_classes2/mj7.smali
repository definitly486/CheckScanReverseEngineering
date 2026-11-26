.class public final synthetic Lmj7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/animation/core/Animatable;

.field public final synthetic c:Landroidx/compose/runtime/MutableFloatState;

.field public final synthetic d:Landroidx/compose/runtime/MutableState;

.field public final synthetic e:Landroidx/compose/runtime/MutableState;

.field public final synthetic f:Landroidx/compose/ui/Modifier;

.field public final synthetic g:Landroidx/compose/foundation/layout/WindowInsets;

.field public final synthetic h:Lbm3;

.field public final synthetic i:Lbm3;

.field public final synthetic j:Lbm3;

.field public final synthetic k:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/animation/core/Animatable;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/WindowInsets;Lbm3;Lbm3;Lbm3;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmj7;->b:Landroidx/compose/animation/core/Animatable;

    iput-object p2, p0, Lmj7;->c:Landroidx/compose/runtime/MutableFloatState;

    iput-object p3, p0, Lmj7;->d:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lmj7;->e:Landroidx/compose/runtime/MutableState;

    iput-object p5, p0, Lmj7;->f:Landroidx/compose/ui/Modifier;

    iput-object p6, p0, Lmj7;->g:Landroidx/compose/foundation/layout/WindowInsets;

    iput-object p7, p0, Lmj7;->h:Lbm3;

    iput-object p8, p0, Lmj7;->i:Lbm3;

    iput-object p9, p0, Lmj7;->j:Lbm3;

    iput p10, p0, Lmj7;->k:I

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

    iget-object v0, p0, Lmj7;->b:Landroidx/compose/animation/core/Animatable;

    iget-object v1, p0, Lmj7;->c:Landroidx/compose/runtime/MutableFloatState;

    iget-object v2, p0, Lmj7;->d:Landroidx/compose/runtime/MutableState;

    iget-object v3, p0, Lmj7;->e:Landroidx/compose/runtime/MutableState;

    iget-object v4, p0, Lmj7;->f:Landroidx/compose/ui/Modifier;

    iget-object v5, p0, Lmj7;->g:Landroidx/compose/foundation/layout/WindowInsets;

    iget-object v6, p0, Lmj7;->h:Lbm3;

    iget-object v7, p0, Lmj7;->i:Lbm3;

    iget-object v8, p0, Lmj7;->j:Lbm3;

    iget v9, p0, Lmj7;->k:I

    invoke-static/range {v0 .. v11}, Landroidx/compose/material3/SearchBarKt;->l(Landroidx/compose/animation/core/Animatable;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/WindowInsets;Lbm3;Lbm3;Lbm3;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
