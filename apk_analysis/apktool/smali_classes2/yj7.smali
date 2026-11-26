.class public final synthetic Lyj7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/SearchBarState;

.field public final synthetic c:Lbm3;

.field public final synthetic d:Landroidx/compose/ui/Modifier;

.field public final synthetic e:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic f:Landroidx/compose/material3/SearchBarColors;

.field public final synthetic g:F

.field public final synthetic h:F

.field public final synthetic i:Lbm3;

.field public final synthetic j:Landroidx/compose/ui/window/DialogProperties;

.field public final synthetic k:Ldm3;

.field public final synthetic l:I

.field public final synthetic m:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/SearchBarState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLbm3;Landroidx/compose/ui/window/DialogProperties;Ldm3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyj7;->b:Landroidx/compose/material3/SearchBarState;

    iput-object p2, p0, Lyj7;->c:Lbm3;

    iput-object p3, p0, Lyj7;->d:Landroidx/compose/ui/Modifier;

    iput-object p4, p0, Lyj7;->e:Landroidx/compose/ui/graphics/Shape;

    iput-object p5, p0, Lyj7;->f:Landroidx/compose/material3/SearchBarColors;

    iput p6, p0, Lyj7;->g:F

    iput p7, p0, Lyj7;->h:F

    iput-object p8, p0, Lyj7;->i:Lbm3;

    iput-object p9, p0, Lyj7;->j:Landroidx/compose/ui/window/DialogProperties;

    iput-object p10, p0, Lyj7;->k:Ldm3;

    iput p11, p0, Lyj7;->l:I

    iput p12, p0, Lyj7;->m:I

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

    iget-object v0, p0, Lyj7;->b:Landroidx/compose/material3/SearchBarState;

    iget-object v1, p0, Lyj7;->c:Lbm3;

    iget-object v2, p0, Lyj7;->d:Landroidx/compose/ui/Modifier;

    iget-object v3, p0, Lyj7;->e:Landroidx/compose/ui/graphics/Shape;

    iget-object v4, p0, Lyj7;->f:Landroidx/compose/material3/SearchBarColors;

    iget v5, p0, Lyj7;->g:F

    iget v6, p0, Lyj7;->h:F

    iget-object v7, p0, Lyj7;->i:Lbm3;

    iget-object v8, p0, Lyj7;->j:Landroidx/compose/ui/window/DialogProperties;

    iget-object v9, p0, Lyj7;->k:Ldm3;

    iget v10, p0, Lyj7;->l:I

    iget v11, p0, Lyj7;->m:I

    invoke-static/range {v0 .. v13}, Landroidx/compose/material3/SearchBarKt;->b(Landroidx/compose/material3/SearchBarState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLbm3;Landroidx/compose/ui/window/DialogProperties;Ldm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
