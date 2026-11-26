.class public final synthetic Lbk7;
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

.field public final synthetic j:Ldm3;

.field public final synthetic k:I

.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(Lbm3;ZLnl3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLdm3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbk7;->b:Lbm3;

    iput-boolean p2, p0, Lbk7;->c:Z

    iput-object p3, p0, Lbk7;->d:Lnl3;

    iput-object p4, p0, Lbk7;->e:Landroidx/compose/ui/Modifier;

    iput-object p5, p0, Lbk7;->f:Landroidx/compose/ui/graphics/Shape;

    iput-object p6, p0, Lbk7;->g:Landroidx/compose/material3/SearchBarColors;

    iput p7, p0, Lbk7;->h:F

    iput p8, p0, Lbk7;->i:F

    iput-object p9, p0, Lbk7;->j:Ldm3;

    iput p10, p0, Lbk7;->k:I

    iput p11, p0, Lbk7;->l:I

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

    iget-object v0, p0, Lbk7;->b:Lbm3;

    iget-boolean v1, p0, Lbk7;->c:Z

    iget-object v2, p0, Lbk7;->d:Lnl3;

    iget-object v3, p0, Lbk7;->e:Landroidx/compose/ui/Modifier;

    iget-object v4, p0, Lbk7;->f:Landroidx/compose/ui/graphics/Shape;

    iget-object v5, p0, Lbk7;->g:Landroidx/compose/material3/SearchBarColors;

    iget v6, p0, Lbk7;->h:F

    iget v7, p0, Lbk7;->i:F

    iget-object v8, p0, Lbk7;->j:Ldm3;

    iget v9, p0, Lbk7;->k:I

    iget v10, p0, Lbk7;->l:I

    invoke-static/range {v0 .. v12}, Landroidx/compose/material3/SearchBarKt;->e(Lbm3;ZLnl3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLdm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
