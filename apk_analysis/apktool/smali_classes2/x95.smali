.class public final synthetic Lx95;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Landroidx/compose/animation/core/MutableTransitionState;

.field public final synthetic d:Landroidx/compose/runtime/MutableState;

.field public final synthetic e:Landroidx/compose/foundation/ScrollState;

.field public final synthetic f:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic g:J

.field public final synthetic h:F

.field public final synthetic i:F

.field public final synthetic j:Landroidx/compose/foundation/BorderStroke;

.field public final synthetic k:Ldm3;

.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/ScrollState;Landroidx/compose/ui/graphics/Shape;JFFLandroidx/compose/foundation/BorderStroke;Ldm3;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx95;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lx95;->c:Landroidx/compose/animation/core/MutableTransitionState;

    iput-object p3, p0, Lx95;->d:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lx95;->e:Landroidx/compose/foundation/ScrollState;

    iput-object p5, p0, Lx95;->f:Landroidx/compose/ui/graphics/Shape;

    iput-wide p6, p0, Lx95;->g:J

    iput p8, p0, Lx95;->h:F

    iput p9, p0, Lx95;->i:F

    iput-object p10, p0, Lx95;->j:Landroidx/compose/foundation/BorderStroke;

    iput-object p11, p0, Lx95;->k:Ldm3;

    iput p12, p0, Lx95;->l:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    move-object v12, p1

    check-cast v12, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iget-object v0, p0, Lx95;->b:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Lx95;->c:Landroidx/compose/animation/core/MutableTransitionState;

    iget-object v2, p0, Lx95;->d:Landroidx/compose/runtime/MutableState;

    iget-object v3, p0, Lx95;->e:Landroidx/compose/foundation/ScrollState;

    iget-object v4, p0, Lx95;->f:Landroidx/compose/ui/graphics/Shape;

    iget-wide v5, p0, Lx95;->g:J

    iget v7, p0, Lx95;->h:F

    iget v8, p0, Lx95;->i:F

    iget-object v9, p0, Lx95;->j:Landroidx/compose/foundation/BorderStroke;

    iget-object v10, p0, Lx95;->k:Ldm3;

    iget v11, p0, Lx95;->l:I

    invoke-static/range {v0 .. v13}, Landroidx/compose/material3/MenuKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/ScrollState;Landroidx/compose/ui/graphics/Shape;JFFLandroidx/compose/foundation/BorderStroke;Ldm3;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
