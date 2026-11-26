.class public final synthetic Ls06;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Lbm3;

.field public final synthetic d:Ldm3;

.field public final synthetic e:Lbm3;

.field public final synthetic f:Lbm3;

.field public final synthetic g:Lbm3;

.field public final synthetic h:Lbm3;

.field public final synthetic i:Lbm3;

.field public final synthetic j:Z

.field public final synthetic k:Landroidx/compose/material3/TextFieldLabelPosition;

.field public final synthetic l:Landroidx/compose/material3/internal/FloatProducer;

.field public final synthetic m:Lnl3;

.field public final synthetic n:Lbm3;

.field public final synthetic o:Lbm3;

.field public final synthetic p:Landroidx/compose/foundation/layout/PaddingValues;

.field public final synthetic q:I

.field public final synthetic r:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lbm3;Ldm3;Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;ZLandroidx/compose/material3/TextFieldLabelPosition;Landroidx/compose/material3/internal/FloatProducer;Lnl3;Lbm3;Lbm3;Landroidx/compose/foundation/layout/PaddingValues;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls06;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Ls06;->c:Lbm3;

    iput-object p3, p0, Ls06;->d:Ldm3;

    iput-object p4, p0, Ls06;->e:Lbm3;

    iput-object p5, p0, Ls06;->f:Lbm3;

    iput-object p6, p0, Ls06;->g:Lbm3;

    iput-object p7, p0, Ls06;->h:Lbm3;

    iput-object p8, p0, Ls06;->i:Lbm3;

    iput-boolean p9, p0, Ls06;->j:Z

    iput-object p10, p0, Ls06;->k:Landroidx/compose/material3/TextFieldLabelPosition;

    iput-object p11, p0, Ls06;->l:Landroidx/compose/material3/internal/FloatProducer;

    iput-object p12, p0, Ls06;->m:Lnl3;

    iput-object p13, p0, Ls06;->n:Lbm3;

    iput-object p14, p0, Ls06;->o:Lbm3;

    iput-object p15, p0, Ls06;->p:Landroidx/compose/foundation/layout/PaddingValues;

    move/from16 p1, p16

    iput p1, p0, Ls06;->q:I

    move/from16 p1, p17

    iput p1, p0, Ls06;->r:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v18, p1

    check-cast v18, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v19

    iget-object v1, v0, Ls06;->b:Landroidx/compose/ui/Modifier;

    iget-object v2, v0, Ls06;->c:Lbm3;

    iget-object v3, v0, Ls06;->d:Ldm3;

    iget-object v4, v0, Ls06;->e:Lbm3;

    iget-object v5, v0, Ls06;->f:Lbm3;

    iget-object v6, v0, Ls06;->g:Lbm3;

    iget-object v7, v0, Ls06;->h:Lbm3;

    iget-object v8, v0, Ls06;->i:Lbm3;

    iget-boolean v9, v0, Ls06;->j:Z

    iget-object v10, v0, Ls06;->k:Landroidx/compose/material3/TextFieldLabelPosition;

    iget-object v11, v0, Ls06;->l:Landroidx/compose/material3/internal/FloatProducer;

    iget-object v12, v0, Ls06;->m:Lnl3;

    iget-object v13, v0, Ls06;->n:Lbm3;

    iget-object v14, v0, Ls06;->o:Lbm3;

    iget-object v15, v0, Ls06;->p:Landroidx/compose/foundation/layout/PaddingValues;

    move-object/from16 v16, v1

    iget v1, v0, Ls06;->q:I

    iget v0, v0, Ls06;->r:I

    move-object/from16 v17, v16

    move/from16 v16, v1

    move-object/from16 v1, v17

    move/from16 v17, v0

    invoke-static/range {v1 .. v19}, Landroidx/compose/material3/OutlinedTextFieldKt;->a(Landroidx/compose/ui/Modifier;Lbm3;Ldm3;Lbm3;Lbm3;Lbm3;Lbm3;Lbm3;ZLandroidx/compose/material3/TextFieldLabelPosition;Landroidx/compose/material3/internal/FloatProducer;Lnl3;Lbm3;Lbm3;Landroidx/compose/foundation/layout/PaddingValues;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
