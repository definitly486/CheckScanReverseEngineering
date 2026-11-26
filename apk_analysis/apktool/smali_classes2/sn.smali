.class public final synthetic Lsn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Ldm3;

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Ldm3;

.field public final synthetic e:Lbm3;

.field public final synthetic f:Ldm3;

.field public final synthetic g:Landroidx/compose/ui/Alignment$Horizontal;

.field public final synthetic h:F

.field public final synthetic i:F

.field public final synthetic j:Landroidx/compose/foundation/layout/WindowInsets;

.field public final synthetic k:Landroidx/compose/material3/TopAppBarColors;

.field public final synthetic l:Landroidx/compose/material3/TopAppBarScrollBehavior;

.field public final synthetic m:I

.field public final synthetic n:I

.field public final synthetic o:I


# direct methods
.method public synthetic constructor <init>(Ldm3;Landroidx/compose/ui/Modifier;Ldm3;Lbm3;Ldm3;Landroidx/compose/ui/Alignment$Horizontal;FFLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/material3/TopAppBarScrollBehavior;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsn;->b:Ldm3;

    iput-object p2, p0, Lsn;->c:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Lsn;->d:Ldm3;

    iput-object p4, p0, Lsn;->e:Lbm3;

    iput-object p5, p0, Lsn;->f:Ldm3;

    iput-object p6, p0, Lsn;->g:Landroidx/compose/ui/Alignment$Horizontal;

    iput p7, p0, Lsn;->h:F

    iput p8, p0, Lsn;->i:F

    iput-object p9, p0, Lsn;->j:Landroidx/compose/foundation/layout/WindowInsets;

    iput-object p10, p0, Lsn;->k:Landroidx/compose/material3/TopAppBarColors;

    iput-object p11, p0, Lsn;->l:Landroidx/compose/material3/TopAppBarScrollBehavior;

    iput p12, p0, Lsn;->m:I

    iput p13, p0, Lsn;->n:I

    iput p14, p0, Lsn;->o:I

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

    iget-object v1, v0, Lsn;->b:Ldm3;

    iget-object v2, v0, Lsn;->c:Landroidx/compose/ui/Modifier;

    iget-object v3, v0, Lsn;->d:Ldm3;

    iget-object v4, v0, Lsn;->e:Lbm3;

    iget-object v5, v0, Lsn;->f:Ldm3;

    iget-object v6, v0, Lsn;->g:Landroidx/compose/ui/Alignment$Horizontal;

    iget v7, v0, Lsn;->h:F

    iget v8, v0, Lsn;->i:F

    iget-object v9, v0, Lsn;->j:Landroidx/compose/foundation/layout/WindowInsets;

    iget-object v10, v0, Lsn;->k:Landroidx/compose/material3/TopAppBarColors;

    iget-object v11, v0, Lsn;->l:Landroidx/compose/material3/TopAppBarScrollBehavior;

    iget v12, v0, Lsn;->m:I

    iget v13, v0, Lsn;->n:I

    iget v14, v0, Lsn;->o:I

    invoke-static/range {v1 .. v16}, Landroidx/compose/material3/AppBarKt;->K(Ldm3;Landroidx/compose/ui/Modifier;Ldm3;Lbm3;Ldm3;Landroidx/compose/ui/Alignment$Horizontal;FFLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/material3/TopAppBarScrollBehavior;IIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
