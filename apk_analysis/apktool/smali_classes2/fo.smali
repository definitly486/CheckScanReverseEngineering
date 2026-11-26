.class public final synthetic Lfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Lbm3;

.field public final synthetic d:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic e:Lbm3;

.field public final synthetic f:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic g:Landroidx/compose/ui/Alignment$Horizontal;

.field public final synthetic h:Lbm3;

.field public final synthetic i:Ldm3;

.field public final synthetic j:F

.field public final synthetic k:Landroidx/compose/foundation/layout/WindowInsets;

.field public final synthetic l:Landroidx/compose/material3/TopAppBarColors;

.field public final synthetic m:Landroidx/compose/material3/TopAppBarScrollBehavior;

.field public final synthetic n:I

.field public final synthetic o:I

.field public final synthetic p:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lbm3;Landroidx/compose/ui/text/TextStyle;Lbm3;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/Alignment$Horizontal;Lbm3;Ldm3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/material3/TopAppBarScrollBehavior;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfo;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lfo;->c:Lbm3;

    iput-object p3, p0, Lfo;->d:Landroidx/compose/ui/text/TextStyle;

    iput-object p4, p0, Lfo;->e:Lbm3;

    iput-object p5, p0, Lfo;->f:Landroidx/compose/ui/text/TextStyle;

    iput-object p6, p0, Lfo;->g:Landroidx/compose/ui/Alignment$Horizontal;

    iput-object p7, p0, Lfo;->h:Lbm3;

    iput-object p8, p0, Lfo;->i:Ldm3;

    iput p9, p0, Lfo;->j:F

    iput-object p10, p0, Lfo;->k:Landroidx/compose/foundation/layout/WindowInsets;

    iput-object p11, p0, Lfo;->l:Landroidx/compose/material3/TopAppBarColors;

    iput-object p12, p0, Lfo;->m:Landroidx/compose/material3/TopAppBarScrollBehavior;

    iput p13, p0, Lfo;->n:I

    iput p14, p0, Lfo;->o:I

    iput p15, p0, Lfo;->p:I

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

    iget-object v1, v0, Lfo;->b:Landroidx/compose/ui/Modifier;

    iget-object v2, v0, Lfo;->c:Lbm3;

    iget-object v3, v0, Lfo;->d:Landroidx/compose/ui/text/TextStyle;

    iget-object v4, v0, Lfo;->e:Lbm3;

    iget-object v5, v0, Lfo;->f:Landroidx/compose/ui/text/TextStyle;

    iget-object v6, v0, Lfo;->g:Landroidx/compose/ui/Alignment$Horizontal;

    iget-object v7, v0, Lfo;->h:Lbm3;

    iget-object v8, v0, Lfo;->i:Ldm3;

    iget v9, v0, Lfo;->j:F

    iget-object v10, v0, Lfo;->k:Landroidx/compose/foundation/layout/WindowInsets;

    iget-object v11, v0, Lfo;->l:Landroidx/compose/material3/TopAppBarColors;

    iget-object v12, v0, Lfo;->m:Landroidx/compose/material3/TopAppBarScrollBehavior;

    iget v13, v0, Lfo;->n:I

    iget v14, v0, Lfo;->o:I

    iget v15, v0, Lfo;->p:I

    invoke-static/range {v1 .. v17}, Landroidx/compose/material3/AppBarKt;->A(Landroidx/compose/ui/Modifier;Lbm3;Landroidx/compose/ui/text/TextStyle;Lbm3;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/Alignment$Horizontal;Lbm3;Ldm3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/material3/TopAppBarScrollBehavior;IIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
