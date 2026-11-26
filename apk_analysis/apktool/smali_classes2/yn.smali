.class public final synthetic Lyn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Lbm3;

.field public final synthetic c:Lbm3;

.field public final synthetic d:Landroidx/compose/ui/Modifier;

.field public final synthetic e:Lbm3;

.field public final synthetic f:Ldm3;

.field public final synthetic g:Landroidx/compose/ui/Alignment$Horizontal;

.field public final synthetic h:F

.field public final synthetic i:Landroidx/compose/foundation/layout/WindowInsets;

.field public final synthetic j:Landroidx/compose/material3/TopAppBarColors;

.field public final synthetic k:Landroidx/compose/material3/TopAppBarScrollBehavior;

.field public final synthetic l:I

.field public final synthetic m:I


# direct methods
.method public synthetic constructor <init>(Lbm3;Lbm3;Landroidx/compose/ui/Modifier;Lbm3;Ldm3;Landroidx/compose/ui/Alignment$Horizontal;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/material3/TopAppBarScrollBehavior;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyn;->b:Lbm3;

    iput-object p2, p0, Lyn;->c:Lbm3;

    iput-object p3, p0, Lyn;->d:Landroidx/compose/ui/Modifier;

    iput-object p4, p0, Lyn;->e:Lbm3;

    iput-object p5, p0, Lyn;->f:Ldm3;

    iput-object p6, p0, Lyn;->g:Landroidx/compose/ui/Alignment$Horizontal;

    iput p7, p0, Lyn;->h:F

    iput-object p8, p0, Lyn;->i:Landroidx/compose/foundation/layout/WindowInsets;

    iput-object p9, p0, Lyn;->j:Landroidx/compose/material3/TopAppBarColors;

    iput-object p10, p0, Lyn;->k:Landroidx/compose/material3/TopAppBarScrollBehavior;

    iput p11, p0, Lyn;->l:I

    iput p12, p0, Lyn;->m:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    move-object v12, p1

    check-cast v12, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iget-object v0, p0, Lyn;->b:Lbm3;

    iget-object v1, p0, Lyn;->c:Lbm3;

    iget-object v2, p0, Lyn;->d:Landroidx/compose/ui/Modifier;

    iget-object v3, p0, Lyn;->e:Lbm3;

    iget-object v4, p0, Lyn;->f:Ldm3;

    iget-object v5, p0, Lyn;->g:Landroidx/compose/ui/Alignment$Horizontal;

    iget v6, p0, Lyn;->h:F

    iget-object v7, p0, Lyn;->i:Landroidx/compose/foundation/layout/WindowInsets;

    iget-object v8, p0, Lyn;->j:Landroidx/compose/material3/TopAppBarColors;

    iget-object v9, p0, Lyn;->k:Landroidx/compose/material3/TopAppBarScrollBehavior;

    iget v10, p0, Lyn;->l:I

    iget v11, p0, Lyn;->m:I

    invoke-static/range {v0 .. v13}, Landroidx/compose/material3/AppBarKt;->I(Lbm3;Lbm3;Landroidx/compose/ui/Modifier;Lbm3;Ldm3;Landroidx/compose/ui/Alignment$Horizontal;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/material3/TopAppBarScrollBehavior;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
