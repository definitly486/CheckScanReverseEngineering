.class public final synthetic Lai9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Landroidx/compose/material3/WideNavigationRailState;

.field public final synthetic d:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic e:Landroidx/compose/material3/WideNavigationRailColors;

.field public final synthetic f:Lbm3;

.field public final synthetic g:Landroidx/compose/foundation/layout/WindowInsets;

.field public final synthetic h:Landroidx/compose/foundation/layout/Arrangement$Vertical;

.field public final synthetic i:Lbm3;

.field public final synthetic j:I

.field public final synthetic k:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/WideNavigationRailState;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/WideNavigationRailColors;Lbm3;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/Arrangement$Vertical;Lbm3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lai9;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lai9;->c:Landroidx/compose/material3/WideNavigationRailState;

    iput-object p3, p0, Lai9;->d:Landroidx/compose/ui/graphics/Shape;

    iput-object p4, p0, Lai9;->e:Landroidx/compose/material3/WideNavigationRailColors;

    iput-object p5, p0, Lai9;->f:Lbm3;

    iput-object p6, p0, Lai9;->g:Landroidx/compose/foundation/layout/WindowInsets;

    iput-object p7, p0, Lai9;->h:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    iput-object p8, p0, Lai9;->i:Lbm3;

    iput p9, p0, Lai9;->j:I

    iput p10, p0, Lai9;->k:I

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

    iget-object v0, p0, Lai9;->b:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Lai9;->c:Landroidx/compose/material3/WideNavigationRailState;

    iget-object v2, p0, Lai9;->d:Landroidx/compose/ui/graphics/Shape;

    iget-object v3, p0, Lai9;->e:Landroidx/compose/material3/WideNavigationRailColors;

    iget-object v4, p0, Lai9;->f:Lbm3;

    iget-object v5, p0, Lai9;->g:Landroidx/compose/foundation/layout/WindowInsets;

    iget-object v6, p0, Lai9;->h:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    iget-object v7, p0, Lai9;->i:Lbm3;

    iget v8, p0, Lai9;->j:I

    iget v9, p0, Lai9;->k:I

    invoke-static/range {v0 .. v11}, Landroidx/compose/material3/WideNavigationRailKt;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/WideNavigationRailState;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/WideNavigationRailColors;Lbm3;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/Arrangement$Vertical;Lbm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
