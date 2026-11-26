.class public final synthetic Lc48;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Lbm3;

.field public final synthetic d:Lbm3;

.field public final synthetic e:Z

.field public final synthetic f:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic g:J

.field public final synthetic h:J

.field public final synthetic i:J

.field public final synthetic j:J

.field public final synthetic k:Lbm3;

.field public final synthetic l:I

.field public final synthetic m:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lbm3;Lbm3;ZLandroidx/compose/ui/graphics/Shape;JJJJLbm3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc48;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lc48;->c:Lbm3;

    iput-object p3, p0, Lc48;->d:Lbm3;

    iput-boolean p4, p0, Lc48;->e:Z

    iput-object p5, p0, Lc48;->f:Landroidx/compose/ui/graphics/Shape;

    iput-wide p6, p0, Lc48;->g:J

    iput-wide p8, p0, Lc48;->h:J

    iput-wide p10, p0, Lc48;->i:J

    iput-wide p12, p0, Lc48;->j:J

    iput-object p14, p0, Lc48;->k:Lbm3;

    iput p15, p0, Lc48;->l:I

    move/from16 p1, p16

    iput p1, p0, Lc48;->m:I

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

    iget-object v1, v0, Lc48;->b:Landroidx/compose/ui/Modifier;

    iget-object v2, v0, Lc48;->c:Lbm3;

    iget-object v3, v0, Lc48;->d:Lbm3;

    iget-boolean v4, v0, Lc48;->e:Z

    iget-object v5, v0, Lc48;->f:Landroidx/compose/ui/graphics/Shape;

    iget-wide v6, v0, Lc48;->g:J

    iget-wide v8, v0, Lc48;->h:J

    iget-wide v10, v0, Lc48;->i:J

    iget-wide v12, v0, Lc48;->j:J

    iget-object v14, v0, Lc48;->k:Lbm3;

    iget v15, v0, Lc48;->l:I

    iget v0, v0, Lc48;->m:I

    move/from16 v16, v0

    invoke-static/range {v1 .. v18}, Landroidx/compose/material3/SnackbarKt;->d(Landroidx/compose/ui/Modifier;Lbm3;Lbm3;ZLandroidx/compose/ui/graphics/Shape;JJJJLbm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
