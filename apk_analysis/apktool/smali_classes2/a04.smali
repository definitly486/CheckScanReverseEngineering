.class public final synthetic La04;
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

.field public final synthetic g:Landroidx/compose/foundation/BorderStroke;

.field public final synthetic h:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic i:Lbm3;

.field public final synthetic j:I

.field public final synthetic k:I


# direct methods
.method public synthetic constructor <init>(Lll3;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/IconButtonColors;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lbm3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La04;->b:Lll3;

    iput-object p2, p0, La04;->c:Landroidx/compose/ui/Modifier;

    iput-boolean p3, p0, La04;->d:Z

    iput-object p4, p0, La04;->e:Landroidx/compose/ui/graphics/Shape;

    iput-object p5, p0, La04;->f:Landroidx/compose/material3/IconButtonColors;

    iput-object p6, p0, La04;->g:Landroidx/compose/foundation/BorderStroke;

    iput-object p7, p0, La04;->h:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p8, p0, La04;->i:Lbm3;

    iput p9, p0, La04;->j:I

    iput p10, p0, La04;->k:I

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

    iget-object v0, p0, La04;->b:Lll3;

    iget-object v1, p0, La04;->c:Landroidx/compose/ui/Modifier;

    iget-boolean v2, p0, La04;->d:Z

    iget-object v3, p0, La04;->e:Landroidx/compose/ui/graphics/Shape;

    iget-object v4, p0, La04;->f:Landroidx/compose/material3/IconButtonColors;

    iget-object v5, p0, La04;->g:Landroidx/compose/foundation/BorderStroke;

    iget-object v6, p0, La04;->h:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v7, p0, La04;->i:Lbm3;

    iget v8, p0, La04;->j:I

    iget v9, p0, La04;->k:I

    invoke-static/range {v0 .. v11}, Landroidx/compose/material3/IconButtonKt;->s(Lll3;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/IconButtonColors;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lbm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
