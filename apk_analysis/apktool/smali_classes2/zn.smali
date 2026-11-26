.class public final synthetic Lzn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Lbm3;

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Lbm3;

.field public final synthetic e:Ldm3;

.field public final synthetic f:F

.field public final synthetic g:F

.field public final synthetic h:Landroidx/compose/foundation/layout/WindowInsets;

.field public final synthetic i:Landroidx/compose/material3/TopAppBarColors;

.field public final synthetic j:Landroidx/compose/material3/TopAppBarScrollBehavior;

.field public final synthetic k:I

.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(Lbm3;Landroidx/compose/ui/Modifier;Lbm3;Ldm3;FFLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/material3/TopAppBarScrollBehavior;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzn;->b:Lbm3;

    iput-object p2, p0, Lzn;->c:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Lzn;->d:Lbm3;

    iput-object p4, p0, Lzn;->e:Ldm3;

    iput p5, p0, Lzn;->f:F

    iput p6, p0, Lzn;->g:F

    iput-object p7, p0, Lzn;->h:Landroidx/compose/foundation/layout/WindowInsets;

    iput-object p8, p0, Lzn;->i:Landroidx/compose/material3/TopAppBarColors;

    iput-object p9, p0, Lzn;->j:Landroidx/compose/material3/TopAppBarScrollBehavior;

    iput p10, p0, Lzn;->k:I

    iput p11, p0, Lzn;->l:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    move-object v11, p1

    check-cast v11, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v0, p0, Lzn;->b:Lbm3;

    iget-object v1, p0, Lzn;->c:Landroidx/compose/ui/Modifier;

    iget-object v2, p0, Lzn;->d:Lbm3;

    iget-object v3, p0, Lzn;->e:Ldm3;

    iget v4, p0, Lzn;->f:F

    iget v5, p0, Lzn;->g:F

    iget-object v6, p0, Lzn;->h:Landroidx/compose/foundation/layout/WindowInsets;

    iget-object v7, p0, Lzn;->i:Landroidx/compose/material3/TopAppBarColors;

    iget-object v8, p0, Lzn;->j:Landroidx/compose/material3/TopAppBarScrollBehavior;

    iget v9, p0, Lzn;->k:I

    iget v10, p0, Lzn;->l:I

    invoke-static/range {v0 .. v12}, Landroidx/compose/material3/AppBarKt;->j(Lbm3;Landroidx/compose/ui/Modifier;Lbm3;Ldm3;FFLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/material3/TopAppBarScrollBehavior;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
