.class public final synthetic Lzz3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Lll3;

.field public final synthetic d:Z

.field public final synthetic e:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic f:Landroidx/compose/material3/IconButtonColors;

.field public final synthetic g:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic h:Lbm3;

.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lll3;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/IconButtonColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lbm3;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzz3;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lzz3;->c:Lll3;

    iput-boolean p3, p0, Lzz3;->d:Z

    iput-object p4, p0, Lzz3;->e:Landroidx/compose/ui/graphics/Shape;

    iput-object p5, p0, Lzz3;->f:Landroidx/compose/material3/IconButtonColors;

    iput-object p6, p0, Lzz3;->g:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p7, p0, Lzz3;->h:Lbm3;

    iput p8, p0, Lzz3;->i:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v0, p0, Lzz3;->b:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Lzz3;->c:Lll3;

    iget-boolean v2, p0, Lzz3;->d:Z

    iget-object v3, p0, Lzz3;->e:Landroidx/compose/ui/graphics/Shape;

    iget-object v4, p0, Lzz3;->f:Landroidx/compose/material3/IconButtonColors;

    iget-object v5, p0, Lzz3;->g:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v6, p0, Lzz3;->h:Lbm3;

    iget v7, p0, Lzz3;->i:I

    invoke-static/range {v0 .. v9}, Landroidx/compose/material3/IconButtonKt;->e(Landroidx/compose/ui/Modifier;Lll3;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/IconButtonColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lbm3;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
