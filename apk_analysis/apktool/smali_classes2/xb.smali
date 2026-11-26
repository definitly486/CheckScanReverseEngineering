.class public final synthetic Lxb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Lbm3;

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Lbm3;

.field public final synthetic e:Lbm3;

.field public final synthetic f:Lbm3;

.field public final synthetic g:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic h:J

.field public final synthetic i:F

.field public final synthetic j:J

.field public final synthetic k:J

.field public final synthetic l:J

.field public final synthetic m:J

.field public final synthetic n:I

.field public final synthetic o:I

.field public final synthetic p:I


# direct methods
.method public synthetic constructor <init>(Lbm3;Landroidx/compose/ui/Modifier;Lbm3;Lbm3;Lbm3;Landroidx/compose/ui/graphics/Shape;JFJJJJIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxb;->b:Lbm3;

    iput-object p2, p0, Lxb;->c:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Lxb;->d:Lbm3;

    iput-object p4, p0, Lxb;->e:Lbm3;

    iput-object p5, p0, Lxb;->f:Lbm3;

    iput-object p6, p0, Lxb;->g:Landroidx/compose/ui/graphics/Shape;

    iput-wide p7, p0, Lxb;->h:J

    iput p9, p0, Lxb;->i:F

    iput-wide p10, p0, Lxb;->j:J

    iput-wide p12, p0, Lxb;->k:J

    iput-wide p14, p0, Lxb;->l:J

    move-wide/from16 p1, p16

    iput-wide p1, p0, Lxb;->m:J

    move/from16 p1, p18

    iput p1, p0, Lxb;->n:I

    move/from16 p1, p19

    iput p1, p0, Lxb;->o:I

    move/from16 p1, p20

    iput p1, p0, Lxb;->p:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v21, p1

    check-cast v21, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v22

    iget-object v1, v0, Lxb;->b:Lbm3;

    iget-object v2, v0, Lxb;->c:Landroidx/compose/ui/Modifier;

    iget-object v3, v0, Lxb;->d:Lbm3;

    iget-object v4, v0, Lxb;->e:Lbm3;

    iget-object v5, v0, Lxb;->f:Lbm3;

    iget-object v6, v0, Lxb;->g:Landroidx/compose/ui/graphics/Shape;

    iget-wide v7, v0, Lxb;->h:J

    iget v9, v0, Lxb;->i:F

    iget-wide v10, v0, Lxb;->j:J

    iget-wide v12, v0, Lxb;->k:J

    iget-wide v14, v0, Lxb;->l:J

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    iget-wide v1, v0, Lxb;->m:J

    move-wide/from16 v18, v1

    iget v1, v0, Lxb;->n:I

    iget v2, v0, Lxb;->o:I

    iget v0, v0, Lxb;->p:I

    move/from16 v20, v0

    move-wide/from16 v23, v18

    move/from16 v18, v1

    move/from16 v19, v2

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-wide/from16 v16, v23

    invoke-static/range {v1 .. v22}, Landroidx/compose/material3/AlertDialogKt;->d(Lbm3;Landroidx/compose/ui/Modifier;Lbm3;Lbm3;Lbm3;Landroidx/compose/ui/graphics/Shape;JFJJJJIIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
