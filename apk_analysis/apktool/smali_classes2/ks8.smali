.class public final synthetic Lks8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:J

.field public final synthetic e:J

.field public final synthetic f:Landroidx/compose/ui/text/font/FontStyle;

.field public final synthetic g:Landroidx/compose/ui/text/font/FontWeight;

.field public final synthetic h:Landroidx/compose/ui/text/font/FontFamily;

.field public final synthetic i:J

.field public final synthetic j:Landroidx/compose/ui/text/style/TextDecoration;

.field public final synthetic k:Landroidx/compose/ui/text/style/TextAlign;

.field public final synthetic l:J

.field public final synthetic m:I

.field public final synthetic n:Z

.field public final synthetic o:I

.field public final synthetic p:I

.field public final synthetic q:Lnl3;

.field public final synthetic r:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic s:I

.field public final synthetic t:I

.field public final synthetic u:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILnl3;Landroidx/compose/ui/text/TextStyle;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lks8;->b:Ljava/lang/String;

    iput-object p2, p0, Lks8;->c:Landroidx/compose/ui/Modifier;

    iput-wide p3, p0, Lks8;->d:J

    iput-wide p5, p0, Lks8;->e:J

    iput-object p7, p0, Lks8;->f:Landroidx/compose/ui/text/font/FontStyle;

    iput-object p8, p0, Lks8;->g:Landroidx/compose/ui/text/font/FontWeight;

    iput-object p9, p0, Lks8;->h:Landroidx/compose/ui/text/font/FontFamily;

    iput-wide p10, p0, Lks8;->i:J

    iput-object p12, p0, Lks8;->j:Landroidx/compose/ui/text/style/TextDecoration;

    iput-object p13, p0, Lks8;->k:Landroidx/compose/ui/text/style/TextAlign;

    iput-wide p14, p0, Lks8;->l:J

    move/from16 p1, p16

    iput p1, p0, Lks8;->m:I

    move/from16 p1, p17

    iput-boolean p1, p0, Lks8;->n:Z

    move/from16 p1, p18

    iput p1, p0, Lks8;->o:I

    move/from16 p1, p19

    iput p1, p0, Lks8;->p:I

    move-object/from16 p1, p20

    iput-object p1, p0, Lks8;->q:Lnl3;

    move-object/from16 p1, p21

    iput-object p1, p0, Lks8;->r:Landroidx/compose/ui/text/TextStyle;

    move/from16 p1, p22

    iput p1, p0, Lks8;->s:I

    move/from16 p1, p23

    iput p1, p0, Lks8;->t:I

    move/from16 p1, p24

    iput p1, p0, Lks8;->u:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v25, p1

    check-cast v25, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v26

    iget-object v1, v0, Lks8;->b:Ljava/lang/String;

    iget-object v2, v0, Lks8;->c:Landroidx/compose/ui/Modifier;

    iget-wide v3, v0, Lks8;->d:J

    iget-wide v5, v0, Lks8;->e:J

    iget-object v7, v0, Lks8;->f:Landroidx/compose/ui/text/font/FontStyle;

    iget-object v8, v0, Lks8;->g:Landroidx/compose/ui/text/font/FontWeight;

    iget-object v9, v0, Lks8;->h:Landroidx/compose/ui/text/font/FontFamily;

    iget-wide v10, v0, Lks8;->i:J

    iget-object v12, v0, Lks8;->j:Landroidx/compose/ui/text/style/TextDecoration;

    iget-object v13, v0, Lks8;->k:Landroidx/compose/ui/text/style/TextAlign;

    iget-wide v14, v0, Lks8;->l:J

    move-object/from16 v16, v1

    iget v1, v0, Lks8;->m:I

    move/from16 v17, v1

    iget-boolean v1, v0, Lks8;->n:Z

    move/from16 v18, v1

    iget v1, v0, Lks8;->o:I

    move/from16 v19, v1

    iget v1, v0, Lks8;->p:I

    move/from16 v20, v1

    iget-object v1, v0, Lks8;->q:Lnl3;

    move-object/from16 v21, v1

    iget-object v1, v0, Lks8;->r:Landroidx/compose/ui/text/TextStyle;

    move-object/from16 v22, v1

    iget v1, v0, Lks8;->s:I

    move/from16 v23, v1

    iget v1, v0, Lks8;->t:I

    iget v0, v0, Lks8;->u:I

    move/from16 v24, v23

    move/from16 v23, v1

    move-object/from16 v1, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move/from16 v22, v24

    move/from16 v24, v0

    invoke-static/range {v1 .. v26}, Landroidx/compose/material3/TextKt;->k(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILnl3;Landroidx/compose/ui/text/TextStyle;IIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
