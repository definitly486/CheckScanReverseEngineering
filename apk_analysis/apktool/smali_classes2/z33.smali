.class public final synthetic Lz33;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/ExposedDropdownMenuBoxScope;

.field public final synthetic c:Z

.field public final synthetic d:Lll3;

.field public final synthetic e:Landroidx/compose/ui/Modifier;

.field public final synthetic f:Landroidx/compose/foundation/ScrollState;

.field public final synthetic g:Z

.field public final synthetic h:Z

.field public final synthetic i:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic j:J

.field public final synthetic k:F

.field public final synthetic l:F

.field public final synthetic m:Landroidx/compose/foundation/BorderStroke;

.field public final synthetic n:Ldm3;

.field public final synthetic o:I

.field public final synthetic p:I

.field public final synthetic q:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/ExposedDropdownMenuBoxScope;ZLll3;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZZLandroidx/compose/ui/graphics/Shape;JFFLandroidx/compose/foundation/BorderStroke;Ldm3;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz33;->b:Landroidx/compose/material3/ExposedDropdownMenuBoxScope;

    iput-boolean p2, p0, Lz33;->c:Z

    iput-object p3, p0, Lz33;->d:Lll3;

    iput-object p4, p0, Lz33;->e:Landroidx/compose/ui/Modifier;

    iput-object p5, p0, Lz33;->f:Landroidx/compose/foundation/ScrollState;

    iput-boolean p6, p0, Lz33;->g:Z

    iput-boolean p7, p0, Lz33;->h:Z

    iput-object p8, p0, Lz33;->i:Landroidx/compose/ui/graphics/Shape;

    iput-wide p9, p0, Lz33;->j:J

    iput p11, p0, Lz33;->k:F

    iput p12, p0, Lz33;->l:F

    iput-object p13, p0, Lz33;->m:Landroidx/compose/foundation/BorderStroke;

    iput-object p14, p0, Lz33;->n:Ldm3;

    iput p15, p0, Lz33;->o:I

    move/from16 p1, p16

    iput p1, p0, Lz33;->p:I

    move/from16 p1, p17

    iput p1, p0, Lz33;->q:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v18, p1

    check-cast v18, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v19

    iget-object v1, v0, Lz33;->b:Landroidx/compose/material3/ExposedDropdownMenuBoxScope;

    iget-boolean v2, v0, Lz33;->c:Z

    iget-object v3, v0, Lz33;->d:Lll3;

    iget-object v4, v0, Lz33;->e:Landroidx/compose/ui/Modifier;

    iget-object v5, v0, Lz33;->f:Landroidx/compose/foundation/ScrollState;

    iget-boolean v6, v0, Lz33;->g:Z

    iget-boolean v7, v0, Lz33;->h:Z

    iget-object v8, v0, Lz33;->i:Landroidx/compose/ui/graphics/Shape;

    iget-wide v9, v0, Lz33;->j:J

    iget v11, v0, Lz33;->k:F

    iget v12, v0, Lz33;->l:F

    iget-object v13, v0, Lz33;->m:Landroidx/compose/foundation/BorderStroke;

    iget-object v14, v0, Lz33;->n:Ldm3;

    iget v15, v0, Lz33;->o:I

    move-object/from16 v16, v1

    iget v1, v0, Lz33;->p:I

    iget v0, v0, Lz33;->q:I

    move-object/from16 v17, v16

    move/from16 v16, v1

    move-object/from16 v1, v17

    move/from16 v17, v0

    invoke-static/range {v1 .. v19}, Landroidx/compose/material3/ExposedDropdownMenuBoxScope;->b(Landroidx/compose/material3/ExposedDropdownMenuBoxScope;ZLll3;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZZLandroidx/compose/ui/graphics/Shape;JFFLandroidx/compose/foundation/BorderStroke;Ldm3;IIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
