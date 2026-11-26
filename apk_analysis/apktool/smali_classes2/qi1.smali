.class public final synthetic Lqi1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Lbm3;

.field public final synthetic c:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic d:J

.field public final synthetic e:Lbm3;

.field public final synthetic f:Lbm3;

.field public final synthetic g:Lbm3;

.field public final synthetic h:J

.field public final synthetic i:J

.field public final synthetic j:F

.field public final synthetic k:Landroidx/compose/foundation/layout/PaddingValues;

.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(Lbm3;Landroidx/compose/ui/text/TextStyle;JLbm3;Lbm3;Lbm3;JJFLandroidx/compose/foundation/layout/PaddingValues;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqi1;->b:Lbm3;

    iput-object p2, p0, Lqi1;->c:Landroidx/compose/ui/text/TextStyle;

    iput-wide p3, p0, Lqi1;->d:J

    iput-object p5, p0, Lqi1;->e:Lbm3;

    iput-object p6, p0, Lqi1;->f:Lbm3;

    iput-object p7, p0, Lqi1;->g:Lbm3;

    iput-wide p8, p0, Lqi1;->h:J

    iput-wide p10, p0, Lqi1;->i:J

    iput p12, p0, Lqi1;->j:F

    iput-object p13, p0, Lqi1;->k:Landroidx/compose/foundation/layout/PaddingValues;

    iput p14, p0, Lqi1;->l:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    check-cast v15, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v16

    iget-object v1, v0, Lqi1;->b:Lbm3;

    iget-object v2, v0, Lqi1;->c:Landroidx/compose/ui/text/TextStyle;

    iget-wide v3, v0, Lqi1;->d:J

    iget-object v5, v0, Lqi1;->e:Lbm3;

    iget-object v6, v0, Lqi1;->f:Lbm3;

    iget-object v7, v0, Lqi1;->g:Lbm3;

    iget-wide v8, v0, Lqi1;->h:J

    iget-wide v10, v0, Lqi1;->i:J

    iget v12, v0, Lqi1;->j:F

    iget-object v13, v0, Lqi1;->k:Landroidx/compose/foundation/layout/PaddingValues;

    iget v14, v0, Lqi1;->l:I

    invoke-static/range {v1 .. v16}, Landroidx/compose/material3/ChipKt;->b(Lbm3;Landroidx/compose/ui/text/TextStyle;JLbm3;Lbm3;Lbm3;JJFLandroidx/compose/foundation/layout/PaddingValues;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
