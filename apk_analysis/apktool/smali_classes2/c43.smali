.class public final synthetic Lc43;
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

.field public final synthetic h:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic i:J

.field public final synthetic j:F

.field public final synthetic k:F

.field public final synthetic l:Landroidx/compose/foundation/BorderStroke;

.field public final synthetic m:Ldm3;

.field public final synthetic n:I

.field public final synthetic o:I

.field public final synthetic p:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/ExposedDropdownMenuBoxScope;ZLll3;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZLandroidx/compose/ui/graphics/Shape;JFFLandroidx/compose/foundation/BorderStroke;Ldm3;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc43;->b:Landroidx/compose/material3/ExposedDropdownMenuBoxScope;

    iput-boolean p2, p0, Lc43;->c:Z

    iput-object p3, p0, Lc43;->d:Lll3;

    iput-object p4, p0, Lc43;->e:Landroidx/compose/ui/Modifier;

    iput-object p5, p0, Lc43;->f:Landroidx/compose/foundation/ScrollState;

    iput-boolean p6, p0, Lc43;->g:Z

    iput-object p7, p0, Lc43;->h:Landroidx/compose/ui/graphics/Shape;

    iput-wide p8, p0, Lc43;->i:J

    iput p10, p0, Lc43;->j:F

    iput p11, p0, Lc43;->k:F

    iput-object p12, p0, Lc43;->l:Landroidx/compose/foundation/BorderStroke;

    iput-object p13, p0, Lc43;->m:Ldm3;

    iput p14, p0, Lc43;->n:I

    iput p15, p0, Lc43;->o:I

    move/from16 p1, p16

    iput p1, p0, Lc43;->p:I

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

    iget-object v1, v0, Lc43;->b:Landroidx/compose/material3/ExposedDropdownMenuBoxScope;

    iget-boolean v2, v0, Lc43;->c:Z

    iget-object v3, v0, Lc43;->d:Lll3;

    iget-object v4, v0, Lc43;->e:Landroidx/compose/ui/Modifier;

    iget-object v5, v0, Lc43;->f:Landroidx/compose/foundation/ScrollState;

    iget-boolean v6, v0, Lc43;->g:Z

    iget-object v7, v0, Lc43;->h:Landroidx/compose/ui/graphics/Shape;

    iget-wide v8, v0, Lc43;->i:J

    iget v10, v0, Lc43;->j:F

    iget v11, v0, Lc43;->k:F

    iget-object v12, v0, Lc43;->l:Landroidx/compose/foundation/BorderStroke;

    iget-object v13, v0, Lc43;->m:Ldm3;

    iget v14, v0, Lc43;->n:I

    iget v15, v0, Lc43;->o:I

    iget v0, v0, Lc43;->p:I

    move/from16 v16, v0

    invoke-static/range {v1 .. v18}, Landroidx/compose/material3/ExposedDropdownMenuBoxScope;->d(Landroidx/compose/material3/ExposedDropdownMenuBoxScope;ZLll3;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZLandroidx/compose/ui/graphics/Shape;JFFLandroidx/compose/foundation/BorderStroke;Ldm3;IIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
