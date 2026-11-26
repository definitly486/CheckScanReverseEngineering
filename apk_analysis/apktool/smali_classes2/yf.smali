.class public final synthetic Lyf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Lll3;

.field public final synthetic c:Lbm3;

.field public final synthetic d:Landroidx/compose/ui/Modifier;

.field public final synthetic e:Lbm3;

.field public final synthetic f:Lbm3;

.field public final synthetic g:Lbm3;

.field public final synthetic h:Lbm3;

.field public final synthetic i:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic j:J

.field public final synthetic k:J

.field public final synthetic l:J

.field public final synthetic m:J

.field public final synthetic n:F

.field public final synthetic o:Landroidx/compose/ui/window/DialogProperties;

.field public final synthetic p:I

.field public final synthetic q:I

.field public final synthetic r:I


# direct methods
.method public synthetic constructor <init>(Lll3;Lbm3;Landroidx/compose/ui/Modifier;Lbm3;Lbm3;Lbm3;Lbm3;Landroidx/compose/ui/graphics/Shape;JJJJFLandroidx/compose/ui/window/DialogProperties;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyf;->b:Lll3;

    iput-object p2, p0, Lyf;->c:Lbm3;

    iput-object p3, p0, Lyf;->d:Landroidx/compose/ui/Modifier;

    iput-object p4, p0, Lyf;->e:Lbm3;

    iput-object p5, p0, Lyf;->f:Lbm3;

    iput-object p6, p0, Lyf;->g:Lbm3;

    iput-object p7, p0, Lyf;->h:Lbm3;

    iput-object p8, p0, Lyf;->i:Landroidx/compose/ui/graphics/Shape;

    iput-wide p9, p0, Lyf;->j:J

    iput-wide p11, p0, Lyf;->k:J

    iput-wide p13, p0, Lyf;->l:J

    move-wide p1, p15

    iput-wide p1, p0, Lyf;->m:J

    move/from16 p1, p17

    iput p1, p0, Lyf;->n:F

    move-object/from16 p1, p18

    iput-object p1, p0, Lyf;->o:Landroidx/compose/ui/window/DialogProperties;

    move/from16 p1, p19

    iput p1, p0, Lyf;->p:I

    move/from16 p1, p20

    iput p1, p0, Lyf;->q:I

    move/from16 p1, p21

    iput p1, p0, Lyf;->r:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v22, p1

    check-cast v22, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v23

    iget-object v1, v0, Lyf;->b:Lll3;

    iget-object v2, v0, Lyf;->c:Lbm3;

    iget-object v3, v0, Lyf;->d:Landroidx/compose/ui/Modifier;

    iget-object v4, v0, Lyf;->e:Lbm3;

    iget-object v5, v0, Lyf;->f:Lbm3;

    iget-object v6, v0, Lyf;->g:Lbm3;

    iget-object v7, v0, Lyf;->h:Lbm3;

    iget-object v8, v0, Lyf;->i:Landroidx/compose/ui/graphics/Shape;

    iget-wide v9, v0, Lyf;->j:J

    iget-wide v11, v0, Lyf;->k:J

    iget-wide v13, v0, Lyf;->l:J

    move-object v15, v1

    move-object/from16 v16, v2

    iget-wide v1, v0, Lyf;->m:J

    move-wide/from16 v17, v1

    iget v1, v0, Lyf;->n:F

    iget-object v2, v0, Lyf;->o:Landroidx/compose/ui/window/DialogProperties;

    move/from16 v19, v1

    iget v1, v0, Lyf;->p:I

    move/from16 v20, v1

    iget v1, v0, Lyf;->q:I

    iget v0, v0, Lyf;->r:I

    move/from16 v21, v0

    move/from16 v24, v20

    move/from16 v20, v1

    move-object v1, v15

    move-wide/from16 v25, v17

    move-object/from16 v18, v2

    move-object/from16 v2, v16

    move-wide/from16 v15, v25

    move/from16 v17, v19

    move/from16 v19, v24

    invoke-static/range {v1 .. v23}, Landroidx/compose/material3/AndroidAlertDialog_androidKt;->a(Lll3;Lbm3;Landroidx/compose/ui/Modifier;Lbm3;Lbm3;Lbm3;Lbm3;Landroidx/compose/ui/graphics/Shape;JJJJFLandroidx/compose/ui/window/DialogProperties;IIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
