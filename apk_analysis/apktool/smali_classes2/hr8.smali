.class public final synthetic Lhr8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Lbm3;

.field public final synthetic d:Lbm3;

.field public final synthetic e:Ldm3;

.field public final synthetic f:Lbm3;

.field public final synthetic g:Lbm3;

.field public final synthetic h:Lbm3;

.field public final synthetic i:Lbm3;

.field public final synthetic j:Z

.field public final synthetic k:Landroidx/compose/material3/TextFieldLabelPosition;

.field public final synthetic l:Landroidx/compose/material3/internal/FloatProducer;

.field public final synthetic m:Lbm3;

.field public final synthetic n:Lbm3;

.field public final synthetic o:Landroidx/compose/foundation/layout/PaddingValues;

.field public final synthetic p:I

.field public final synthetic q:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lbm3;Lbm3;Ldm3;Lbm3;Lbm3;Lbm3;Lbm3;ZLandroidx/compose/material3/TextFieldLabelPosition;Landroidx/compose/material3/internal/FloatProducer;Lbm3;Lbm3;Landroidx/compose/foundation/layout/PaddingValues;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhr8;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lhr8;->c:Lbm3;

    iput-object p3, p0, Lhr8;->d:Lbm3;

    iput-object p4, p0, Lhr8;->e:Ldm3;

    iput-object p5, p0, Lhr8;->f:Lbm3;

    iput-object p6, p0, Lhr8;->g:Lbm3;

    iput-object p7, p0, Lhr8;->h:Lbm3;

    iput-object p8, p0, Lhr8;->i:Lbm3;

    iput-boolean p9, p0, Lhr8;->j:Z

    iput-object p10, p0, Lhr8;->k:Landroidx/compose/material3/TextFieldLabelPosition;

    iput-object p11, p0, Lhr8;->l:Landroidx/compose/material3/internal/FloatProducer;

    iput-object p12, p0, Lhr8;->m:Lbm3;

    iput-object p13, p0, Lhr8;->n:Lbm3;

    iput-object p14, p0, Lhr8;->o:Landroidx/compose/foundation/layout/PaddingValues;

    iput p15, p0, Lhr8;->p:I

    move/from16 p1, p16

    iput p1, p0, Lhr8;->q:I

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

    iget-object v1, v0, Lhr8;->b:Landroidx/compose/ui/Modifier;

    iget-object v2, v0, Lhr8;->c:Lbm3;

    iget-object v3, v0, Lhr8;->d:Lbm3;

    iget-object v4, v0, Lhr8;->e:Ldm3;

    iget-object v5, v0, Lhr8;->f:Lbm3;

    iget-object v6, v0, Lhr8;->g:Lbm3;

    iget-object v7, v0, Lhr8;->h:Lbm3;

    iget-object v8, v0, Lhr8;->i:Lbm3;

    iget-boolean v9, v0, Lhr8;->j:Z

    iget-object v10, v0, Lhr8;->k:Landroidx/compose/material3/TextFieldLabelPosition;

    iget-object v11, v0, Lhr8;->l:Landroidx/compose/material3/internal/FloatProducer;

    iget-object v12, v0, Lhr8;->m:Lbm3;

    iget-object v13, v0, Lhr8;->n:Lbm3;

    iget-object v14, v0, Lhr8;->o:Landroidx/compose/foundation/layout/PaddingValues;

    iget v15, v0, Lhr8;->p:I

    iget v0, v0, Lhr8;->q:I

    move/from16 v16, v0

    invoke-static/range {v1 .. v18}, Landroidx/compose/material3/TextFieldKt;->b(Landroidx/compose/ui/Modifier;Lbm3;Lbm3;Ldm3;Lbm3;Lbm3;Lbm3;Lbm3;ZLandroidx/compose/material3/TextFieldLabelPosition;Landroidx/compose/material3/internal/FloatProducer;Lbm3;Lbm3;Landroidx/compose/foundation/layout/PaddingValues;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
