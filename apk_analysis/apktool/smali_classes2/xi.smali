.class public final synthetic Lxi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lll3;

.field public final synthetic d:Landroidx/compose/ui/Modifier;

.field public final synthetic e:J

.field public final synthetic f:Landroidx/compose/foundation/ScrollState;

.field public final synthetic g:Landroidx/compose/ui/window/PopupProperties;

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
.method public synthetic constructor <init>(ZLll3;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/ScrollState;Landroidx/compose/ui/window/PopupProperties;Landroidx/compose/ui/graphics/Shape;JFFLandroidx/compose/foundation/BorderStroke;Ldm3;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lxi;->b:Z

    iput-object p2, p0, Lxi;->c:Lll3;

    iput-object p3, p0, Lxi;->d:Landroidx/compose/ui/Modifier;

    iput-wide p4, p0, Lxi;->e:J

    iput-object p6, p0, Lxi;->f:Landroidx/compose/foundation/ScrollState;

    iput-object p7, p0, Lxi;->g:Landroidx/compose/ui/window/PopupProperties;

    iput-object p8, p0, Lxi;->h:Landroidx/compose/ui/graphics/Shape;

    iput-wide p9, p0, Lxi;->i:J

    iput p11, p0, Lxi;->j:F

    iput p12, p0, Lxi;->k:F

    iput-object p13, p0, Lxi;->l:Landroidx/compose/foundation/BorderStroke;

    iput-object p14, p0, Lxi;->m:Ldm3;

    iput p15, p0, Lxi;->n:I

    move/from16 p1, p16

    iput p1, p0, Lxi;->o:I

    move/from16 p1, p17

    iput p1, p0, Lxi;->p:I

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

    iget-boolean v1, v0, Lxi;->b:Z

    iget-object v2, v0, Lxi;->c:Lll3;

    iget-object v3, v0, Lxi;->d:Landroidx/compose/ui/Modifier;

    iget-wide v4, v0, Lxi;->e:J

    iget-object v6, v0, Lxi;->f:Landroidx/compose/foundation/ScrollState;

    iget-object v7, v0, Lxi;->g:Landroidx/compose/ui/window/PopupProperties;

    iget-object v8, v0, Lxi;->h:Landroidx/compose/ui/graphics/Shape;

    iget-wide v9, v0, Lxi;->i:J

    iget v11, v0, Lxi;->j:F

    iget v12, v0, Lxi;->k:F

    iget-object v13, v0, Lxi;->l:Landroidx/compose/foundation/BorderStroke;

    iget-object v14, v0, Lxi;->m:Ldm3;

    iget v15, v0, Lxi;->n:I

    move/from16 v16, v1

    iget v1, v0, Lxi;->o:I

    iget v0, v0, Lxi;->p:I

    move/from16 v17, v16

    move/from16 v16, v1

    move/from16 v1, v17

    move/from16 v17, v0

    invoke-static/range {v1 .. v19}, Landroidx/compose/material3/AndroidMenu_androidKt;->a(ZLll3;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/ScrollState;Landroidx/compose/ui/window/PopupProperties;Landroidx/compose/ui/graphics/Shape;JFFLandroidx/compose/foundation/BorderStroke;Ldm3;IIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
