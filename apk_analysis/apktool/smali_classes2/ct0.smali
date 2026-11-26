.class public final synthetic Lct0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/SheetState;

.field public final synthetic c:F

.field public final synthetic d:F

.field public final synthetic e:Z

.field public final synthetic f:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic g:J

.field public final synthetic h:J

.field public final synthetic i:F

.field public final synthetic j:F

.field public final synthetic k:Lbm3;

.field public final synthetic l:Ldm3;

.field public final synthetic m:I

.field public final synthetic n:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/SheetState;FFZLandroidx/compose/ui/graphics/Shape;JJFFLbm3;Ldm3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lct0;->b:Landroidx/compose/material3/SheetState;

    iput p2, p0, Lct0;->c:F

    iput p3, p0, Lct0;->d:F

    iput-boolean p4, p0, Lct0;->e:Z

    iput-object p5, p0, Lct0;->f:Landroidx/compose/ui/graphics/Shape;

    iput-wide p6, p0, Lct0;->g:J

    iput-wide p8, p0, Lct0;->h:J

    iput p10, p0, Lct0;->i:F

    iput p11, p0, Lct0;->j:F

    iput-object p12, p0, Lct0;->k:Lbm3;

    iput-object p13, p0, Lct0;->l:Ldm3;

    iput p14, p0, Lct0;->m:I

    iput p15, p0, Lct0;->n:I

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

    iget-object v1, v0, Lct0;->b:Landroidx/compose/material3/SheetState;

    iget v2, v0, Lct0;->c:F

    iget v3, v0, Lct0;->d:F

    iget-boolean v4, v0, Lct0;->e:Z

    iget-object v5, v0, Lct0;->f:Landroidx/compose/ui/graphics/Shape;

    iget-wide v6, v0, Lct0;->g:J

    iget-wide v8, v0, Lct0;->h:J

    iget v10, v0, Lct0;->i:F

    iget v11, v0, Lct0;->j:F

    iget-object v12, v0, Lct0;->k:Lbm3;

    iget-object v13, v0, Lct0;->l:Ldm3;

    iget v14, v0, Lct0;->m:I

    iget v15, v0, Lct0;->n:I

    invoke-static/range {v1 .. v17}, Landroidx/compose/material3/BottomSheetScaffoldKt;->a(Landroidx/compose/material3/SheetState;FFZLandroidx/compose/ui/graphics/Shape;JJFFLbm3;Ldm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
