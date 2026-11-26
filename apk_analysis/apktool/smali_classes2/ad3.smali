.class public final synthetic Lad3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Lll3;

.field public final synthetic c:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic d:F

.field public final synthetic e:F

.field public final synthetic f:Landroidx/compose/ui/Modifier;

.field public final synthetic g:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic h:J

.field public final synthetic i:J

.field public final synthetic j:Landroidx/compose/material3/FloatingActionButtonElevation;

.field public final synthetic k:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic l:Lbm3;

.field public final synthetic m:I

.field public final synthetic n:I

.field public final synthetic o:I


# direct methods
.method public synthetic constructor <init>(Lll3;Landroidx/compose/ui/text/TextStyle;FFLandroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lbm3;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lad3;->b:Lll3;

    iput-object p2, p0, Lad3;->c:Landroidx/compose/ui/text/TextStyle;

    iput p3, p0, Lad3;->d:F

    iput p4, p0, Lad3;->e:F

    iput-object p5, p0, Lad3;->f:Landroidx/compose/ui/Modifier;

    iput-object p6, p0, Lad3;->g:Landroidx/compose/ui/graphics/Shape;

    iput-wide p7, p0, Lad3;->h:J

    iput-wide p9, p0, Lad3;->i:J

    iput-object p11, p0, Lad3;->j:Landroidx/compose/material3/FloatingActionButtonElevation;

    iput-object p12, p0, Lad3;->k:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p13, p0, Lad3;->l:Lbm3;

    iput p14, p0, Lad3;->m:I

    iput p15, p0, Lad3;->n:I

    move/from16 p1, p16

    iput p1, p0, Lad3;->o:I

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

    iget-object v1, v0, Lad3;->b:Lll3;

    iget-object v2, v0, Lad3;->c:Landroidx/compose/ui/text/TextStyle;

    iget v3, v0, Lad3;->d:F

    iget v4, v0, Lad3;->e:F

    iget-object v5, v0, Lad3;->f:Landroidx/compose/ui/Modifier;

    iget-object v6, v0, Lad3;->g:Landroidx/compose/ui/graphics/Shape;

    iget-wide v7, v0, Lad3;->h:J

    iget-wide v9, v0, Lad3;->i:J

    iget-object v11, v0, Lad3;->j:Landroidx/compose/material3/FloatingActionButtonElevation;

    iget-object v12, v0, Lad3;->k:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v13, v0, Lad3;->l:Lbm3;

    iget v14, v0, Lad3;->m:I

    iget v15, v0, Lad3;->n:I

    iget v0, v0, Lad3;->o:I

    move/from16 v16, v0

    invoke-static/range {v1 .. v18}, Landroidx/compose/material3/FloatingActionButtonKt;->f(Lll3;Landroidx/compose/ui/text/TextStyle;FFLandroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lbm3;IIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
