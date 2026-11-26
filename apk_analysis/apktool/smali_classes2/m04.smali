.class public final synthetic Lm04;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Lll3;

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Z

.field public final synthetic e:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic f:Landroidx/compose/material3/IconButtonColors;

.field public final synthetic g:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic h:Lbm3;

.field public final synthetic i:I

.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(IILll3;Lbm3;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material3/IconButtonColors;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lm04;->b:Lll3;

    iput-object p7, p0, Lm04;->c:Landroidx/compose/ui/Modifier;

    iput-boolean p9, p0, Lm04;->d:Z

    iput-object p8, p0, Lm04;->e:Landroidx/compose/ui/graphics/Shape;

    iput-object p6, p0, Lm04;->f:Landroidx/compose/material3/IconButtonColors;

    iput-object p5, p0, Lm04;->g:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p4, p0, Lm04;->h:Lbm3;

    iput p1, p0, Lm04;->i:I

    iput p2, p0, Lm04;->j:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v0, p0, Lm04;->b:Lll3;

    iget-object v1, p0, Lm04;->c:Landroidx/compose/ui/Modifier;

    iget-boolean v2, p0, Lm04;->d:Z

    iget-object v3, p0, Lm04;->f:Landroidx/compose/material3/IconButtonColors;

    iget-object v4, p0, Lm04;->g:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v5, p0, Lm04;->e:Landroidx/compose/ui/graphics/Shape;

    iget-object v6, p0, Lm04;->h:Lbm3;

    iget v7, p0, Lm04;->i:I

    iget v8, p0, Lm04;->j:I

    invoke-static/range {v0 .. v10}, Landroidx/compose/material3/IconButtonKt;->k(Lll3;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Lbm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
