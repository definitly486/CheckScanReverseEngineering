.class public final synthetic Lls8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:J

.field public final synthetic e:Landroidx/compose/foundation/text/TextAutoSize;

.field public final synthetic f:J

.field public final synthetic g:Landroidx/compose/ui/text/font/FontStyle;

.field public final synthetic h:Landroidx/compose/ui/text/font/FontWeight;

.field public final synthetic i:Landroidx/compose/ui/text/font/FontFamily;

.field public final synthetic j:J

.field public final synthetic k:Landroidx/compose/ui/text/style/TextDecoration;

.field public final synthetic l:Landroidx/compose/ui/text/style/TextAlign;

.field public final synthetic m:J

.field public final synthetic n:I

.field public final synthetic o:Z

.field public final synthetic p:I

.field public final synthetic q:I

.field public final synthetic r:Lnl3;

.field public final synthetic s:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic t:I

.field public final synthetic u:I

.field public final synthetic v:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/TextAutoSize;JLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILnl3;Landroidx/compose/ui/text/TextStyle;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lls8;->b:Ljava/lang/String;

    iput-object p2, p0, Lls8;->c:Landroidx/compose/ui/Modifier;

    iput-wide p3, p0, Lls8;->d:J

    iput-object p5, p0, Lls8;->e:Landroidx/compose/foundation/text/TextAutoSize;

    iput-wide p6, p0, Lls8;->f:J

    iput-object p8, p0, Lls8;->g:Landroidx/compose/ui/text/font/FontStyle;

    iput-object p9, p0, Lls8;->h:Landroidx/compose/ui/text/font/FontWeight;

    iput-object p10, p0, Lls8;->i:Landroidx/compose/ui/text/font/FontFamily;

    iput-wide p11, p0, Lls8;->j:J

    iput-object p13, p0, Lls8;->k:Landroidx/compose/ui/text/style/TextDecoration;

    iput-object p14, p0, Lls8;->l:Landroidx/compose/ui/text/style/TextAlign;

    move-wide p1, p15

    iput-wide p1, p0, Lls8;->m:J

    move/from16 p1, p17

    iput p1, p0, Lls8;->n:I

    move/from16 p1, p18

    iput-boolean p1, p0, Lls8;->o:Z

    move/from16 p1, p19

    iput p1, p0, Lls8;->p:I

    move/from16 p1, p20

    iput p1, p0, Lls8;->q:I

    move-object/from16 p1, p21

    iput-object p1, p0, Lls8;->r:Lnl3;

    move-object/from16 p1, p22

    iput-object p1, p0, Lls8;->s:Landroidx/compose/ui/text/TextStyle;

    move/from16 p1, p23

    iput p1, p0, Lls8;->t:I

    move/from16 p1, p24

    iput p1, p0, Lls8;->u:I

    move/from16 p1, p25

    iput p1, p0, Lls8;->v:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v26, p1

    check-cast v26, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v27

    iget-object v1, v0, Lls8;->b:Ljava/lang/String;

    iget-object v2, v0, Lls8;->c:Landroidx/compose/ui/Modifier;

    iget-wide v3, v0, Lls8;->d:J

    iget-object v5, v0, Lls8;->e:Landroidx/compose/foundation/text/TextAutoSize;

    iget-wide v6, v0, Lls8;->f:J

    iget-object v8, v0, Lls8;->g:Landroidx/compose/ui/text/font/FontStyle;

    iget-object v9, v0, Lls8;->h:Landroidx/compose/ui/text/font/FontWeight;

    iget-object v10, v0, Lls8;->i:Landroidx/compose/ui/text/font/FontFamily;

    iget-wide v11, v0, Lls8;->j:J

    iget-object v13, v0, Lls8;->k:Landroidx/compose/ui/text/style/TextDecoration;

    iget-object v14, v0, Lls8;->l:Landroidx/compose/ui/text/style/TextAlign;

    move-object v15, v1

    move-object/from16 v16, v2

    iget-wide v1, v0, Lls8;->m:J

    move-wide/from16 v17, v1

    iget v1, v0, Lls8;->n:I

    iget-boolean v2, v0, Lls8;->o:Z

    move/from16 v19, v1

    iget v1, v0, Lls8;->p:I

    move/from16 v20, v1

    iget v1, v0, Lls8;->q:I

    move/from16 v21, v1

    iget-object v1, v0, Lls8;->r:Lnl3;

    move-object/from16 v22, v1

    iget-object v1, v0, Lls8;->s:Landroidx/compose/ui/text/TextStyle;

    move-object/from16 v23, v1

    iget v1, v0, Lls8;->t:I

    move/from16 v24, v1

    iget v1, v0, Lls8;->u:I

    iget v0, v0, Lls8;->v:I

    move/from16 v25, v0

    move/from16 v28, v24

    move/from16 v24, v1

    move-object v1, v15

    move-wide/from16 v29, v17

    move/from16 v18, v2

    move-object/from16 v2, v16

    move-wide/from16 v15, v29

    move/from16 v17, v19

    move/from16 v19, v20

    move/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move/from16 v23, v28

    invoke-static/range {v1 .. v27}, Landroidx/compose/material3/TextKt;->i(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/TextAutoSize;JLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILnl3;Landroidx/compose/ui/text/TextStyle;IIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
