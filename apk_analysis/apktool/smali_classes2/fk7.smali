.class public final synthetic Lfk7;
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

.field public final synthetic i:Landroidx/compose/ui/window/PopupProperties;

.field public final synthetic j:Ldm3;

.field public final synthetic k:I

.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/SearchBarState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/ui/window/PopupProperties;Ldm3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfk7;->b:Landroidx/compose/material3/SearchBarState;

    iput-object p2, p0, Lfk7;->c:Lbm3;

    iput-object p3, p0, Lfk7;->d:Landroidx/compose/ui/Modifier;

    iput-object p4, p0, Lfk7;->e:Landroidx/compose/ui/graphics/Shape;

    iput-object p5, p0, Lfk7;->f:Landroidx/compose/material3/SearchBarColors;

    iput p6, p0, Lfk7;->g:F

    iput p7, p0, Lfk7;->h:F

    iput-object p8, p0, Lfk7;->i:Landroidx/compose/ui/window/PopupProperties;

    iput-object p9, p0, Lfk7;->j:Ldm3;

    iput p10, p0, Lfk7;->k:I

    iput p11, p0, Lfk7;->l:I

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

    iget-object v0, p0, Lfk7;->b:Landroidx/compose/material3/SearchBarState;

    iget-object v1, p0, Lfk7;->c:Lbm3;

    iget-object v2, p0, Lfk7;->d:Landroidx/compose/ui/Modifier;

    iget-object v3, p0, Lfk7;->e:Landroidx/compose/ui/graphics/Shape;

    iget-object v4, p0, Lfk7;->f:Landroidx/compose/material3/SearchBarColors;

    iget v5, p0, Lfk7;->g:F

    iget v6, p0, Lfk7;->h:F

    iget-object v7, p0, Lfk7;->i:Landroidx/compose/ui/window/PopupProperties;

    iget-object v8, p0, Lfk7;->j:Ldm3;

    iget v9, p0, Lfk7;->k:I

    iget v10, p0, Lfk7;->l:I

    invoke-static/range {v0 .. v12}, Landroidx/compose/material3/SearchBarKt;->f(Landroidx/compose/material3/SearchBarState;Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FFLandroidx/compose/ui/window/PopupProperties;Ldm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
