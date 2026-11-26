.class public final synthetic Lgk7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Lbm3;

.field public final synthetic c:Z

.field public final synthetic d:Lnl3;

.field public final synthetic e:Landroidx/compose/ui/Modifier;

.field public final synthetic f:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic g:Landroidx/compose/material3/SearchBarColors;

.field public final synthetic h:F

.field public final synthetic i:F

.field public final synthetic j:Landroidx/compose/foundation/layout/WindowInsets;

.field public final synthetic k:Ldm3;

.field public final synthetic l:I

.field public final synthetic m:I


# direct methods
.method public synthetic constructor <init>(Lbm3;ZLnl3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/layout/WindowInsets;Ldm3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgk7;->b:Lbm3;

    iput-boolean p2, p0, Lgk7;->c:Z

    iput-object p3, p0, Lgk7;->d:Lnl3;

    iput-object p4, p0, Lgk7;->e:Landroidx/compose/ui/Modifier;

    iput-object p5, p0, Lgk7;->f:Landroidx/compose/ui/graphics/Shape;

    iput-object p6, p0, Lgk7;->g:Landroidx/compose/material3/SearchBarColors;

    iput p7, p0, Lgk7;->h:F

    iput p8, p0, Lgk7;->i:F

    iput-object p9, p0, Lgk7;->j:Landroidx/compose/foundation/layout/WindowInsets;

    iput-object p10, p0, Lgk7;->k:Ldm3;

    iput p11, p0, Lgk7;->l:I

    iput p12, p0, Lgk7;->m:I

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

    iget-object v0, p0, Lgk7;->b:Lbm3;

    iget-boolean v1, p0, Lgk7;->c:Z

    iget-object v2, p0, Lgk7;->d:Lnl3;

    iget-object v3, p0, Lgk7;->e:Landroidx/compose/ui/Modifier;

    iget-object v4, p0, Lgk7;->f:Landroidx/compose/ui/graphics/Shape;

    iget-object v5, p0, Lgk7;->g:Landroidx/compose/material3/SearchBarColors;

    iget v6, p0, Lgk7;->h:F

    iget v7, p0, Lgk7;->i:F

    iget-object v8, p0, Lgk7;->j:Landroidx/compose/foundation/layout/WindowInsets;

    iget-object v9, p0, Lgk7;->k:Ldm3;

    iget v10, p0, Lgk7;->l:I

    iget v11, p0, Lgk7;->m:I

    invoke-static/range {v0 .. v13}, Landroidx/compose/material3/SearchBarKt;->z(Lbm3;ZLnl3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/foundation/layout/WindowInsets;Ldm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
