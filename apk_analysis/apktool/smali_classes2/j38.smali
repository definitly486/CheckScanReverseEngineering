.class public final synthetic Lj38;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Lnm1;

.field public final synthetic c:Lnl3;

.field public final synthetic d:Landroidx/compose/ui/Modifier;

.field public final synthetic e:Z

.field public final synthetic f:Lnm1;

.field public final synthetic g:Lll3;

.field public final synthetic h:Landroidx/compose/material3/SliderColors;

.field public final synthetic i:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic j:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic k:Ldm3;

.field public final synthetic l:Ldm3;

.field public final synthetic m:Ldm3;

.field public final synthetic n:I

.field public final synthetic o:I

.field public final synthetic p:I

.field public final synthetic q:I


# direct methods
.method public synthetic constructor <init>(Lnm1;Lnl3;Landroidx/compose/ui/Modifier;ZLnm1;Lll3;Landroidx/compose/material3/SliderColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/MutableInteractionSource;Ldm3;Ldm3;Ldm3;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj38;->b:Lnm1;

    iput-object p2, p0, Lj38;->c:Lnl3;

    iput-object p3, p0, Lj38;->d:Landroidx/compose/ui/Modifier;

    iput-boolean p4, p0, Lj38;->e:Z

    iput-object p5, p0, Lj38;->f:Lnm1;

    iput-object p6, p0, Lj38;->g:Lll3;

    iput-object p7, p0, Lj38;->h:Landroidx/compose/material3/SliderColors;

    iput-object p8, p0, Lj38;->i:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p9, p0, Lj38;->j:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p10, p0, Lj38;->k:Ldm3;

    iput-object p11, p0, Lj38;->l:Ldm3;

    iput-object p12, p0, Lj38;->m:Ldm3;

    iput p13, p0, Lj38;->n:I

    iput p14, p0, Lj38;->o:I

    iput p15, p0, Lj38;->p:I

    move/from16 p1, p16

    iput p1, p0, Lj38;->q:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v17, p1

    check-cast v17, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v18

    iget-object v1, v0, Lj38;->b:Lnm1;

    iget-object v2, v0, Lj38;->c:Lnl3;

    iget-object v3, v0, Lj38;->d:Landroidx/compose/ui/Modifier;

    iget-boolean v4, v0, Lj38;->e:Z

    iget-object v5, v0, Lj38;->f:Lnm1;

    iget-object v6, v0, Lj38;->g:Lll3;

    iget-object v7, v0, Lj38;->h:Landroidx/compose/material3/SliderColors;

    iget-object v8, v0, Lj38;->i:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v9, v0, Lj38;->j:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v10, v0, Lj38;->k:Ldm3;

    iget-object v11, v0, Lj38;->l:Ldm3;

    iget-object v12, v0, Lj38;->m:Ldm3;

    iget v13, v0, Lj38;->n:I

    iget v14, v0, Lj38;->o:I

    iget v15, v0, Lj38;->p:I

    iget v0, v0, Lj38;->q:I

    move/from16 v16, v0

    invoke-static/range {v1 .. v18}, Landroidx/compose/material3/SliderKt;->n(Lnm1;Lnl3;Landroidx/compose/ui/Modifier;ZLnm1;Lll3;Landroidx/compose/material3/SliderColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/MutableInteractionSource;Ldm3;Ldm3;Ldm3;IIIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
