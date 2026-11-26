.class public final synthetic Lhl5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/interaction/InteractionSource;

.field public final synthetic c:J

.field public final synthetic d:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic e:Lbm3;

.field public final synthetic f:I

.field public final synthetic g:Lbm3;

.field public final synthetic h:Lll3;

.field public final synthetic i:F

.field public final synthetic j:F

.field public final synthetic k:F

.field public final synthetic l:F

.field public final synthetic m:F

.field public final synthetic n:I

.field public final synthetic o:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/interaction/InteractionSource;JLandroidx/compose/ui/graphics/Shape;Lbm3;ILbm3;Lll3;FFFFFII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhl5;->b:Landroidx/compose/foundation/interaction/InteractionSource;

    iput-wide p2, p0, Lhl5;->c:J

    iput-object p4, p0, Lhl5;->d:Landroidx/compose/ui/graphics/Shape;

    iput-object p5, p0, Lhl5;->e:Lbm3;

    iput p6, p0, Lhl5;->f:I

    iput-object p7, p0, Lhl5;->g:Lbm3;

    iput-object p8, p0, Lhl5;->h:Lll3;

    iput p9, p0, Lhl5;->i:F

    iput p10, p0, Lhl5;->j:F

    iput p11, p0, Lhl5;->k:F

    iput p12, p0, Lhl5;->l:F

    iput p13, p0, Lhl5;->m:F

    iput p14, p0, Lhl5;->n:I

    iput p15, p0, Lhl5;->o:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v16, p1

    check-cast v16, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v17

    iget-object v1, v0, Lhl5;->b:Landroidx/compose/foundation/interaction/InteractionSource;

    iget-wide v2, v0, Lhl5;->c:J

    iget-object v4, v0, Lhl5;->d:Landroidx/compose/ui/graphics/Shape;

    iget-object v5, v0, Lhl5;->e:Lbm3;

    iget v6, v0, Lhl5;->f:I

    iget-object v7, v0, Lhl5;->g:Lbm3;

    iget-object v8, v0, Lhl5;->h:Lll3;

    iget v9, v0, Lhl5;->i:F

    iget v10, v0, Lhl5;->j:F

    iget v11, v0, Lhl5;->k:F

    iget v12, v0, Lhl5;->l:F

    iget v13, v0, Lhl5;->m:F

    iget v14, v0, Lhl5;->n:I

    iget v15, v0, Lhl5;->o:I

    invoke-static/range {v1 .. v17}, Landroidx/compose/material3/NavigationItemKt;->b(Landroidx/compose/foundation/interaction/InteractionSource;JLandroidx/compose/ui/graphics/Shape;Lbm3;ILbm3;Lll3;FFFFFIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
