.class public final synthetic Lb04;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lnl3;

.field public final synthetic d:Landroidx/compose/ui/Modifier;

.field public final synthetic e:Z

.field public final synthetic f:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic g:Landroidx/compose/material3/IconToggleButtonColors;

.field public final synthetic h:Landroidx/compose/foundation/BorderStroke;

.field public final synthetic i:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic j:Lbm3;

.field public final synthetic k:I


# direct methods
.method public synthetic constructor <init>(ZLnl3;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/IconToggleButtonColors;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lbm3;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lb04;->b:Z

    iput-object p2, p0, Lb04;->c:Lnl3;

    iput-object p3, p0, Lb04;->d:Landroidx/compose/ui/Modifier;

    iput-boolean p4, p0, Lb04;->e:Z

    iput-object p5, p0, Lb04;->f:Landroidx/compose/ui/graphics/Shape;

    iput-object p6, p0, Lb04;->g:Landroidx/compose/material3/IconToggleButtonColors;

    iput-object p7, p0, Lb04;->h:Landroidx/compose/foundation/BorderStroke;

    iput-object p8, p0, Lb04;->i:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p9, p0, Lb04;->j:Lbm3;

    iput p10, p0, Lb04;->k:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    move-object v10, p1

    check-cast v10, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-boolean v0, p0, Lb04;->b:Z

    iget-object v1, p0, Lb04;->c:Lnl3;

    iget-object v2, p0, Lb04;->d:Landroidx/compose/ui/Modifier;

    iget-boolean v3, p0, Lb04;->e:Z

    iget-object v4, p0, Lb04;->f:Landroidx/compose/ui/graphics/Shape;

    iget-object v5, p0, Lb04;->g:Landroidx/compose/material3/IconToggleButtonColors;

    iget-object v6, p0, Lb04;->h:Landroidx/compose/foundation/BorderStroke;

    iget-object v7, p0, Lb04;->i:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v8, p0, Lb04;->j:Lbm3;

    iget v9, p0, Lb04;->k:I

    invoke-static/range {v0 .. v11}, Landroidx/compose/material3/IconButtonKt;->r(ZLnl3;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/IconToggleButtonColors;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lbm3;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
