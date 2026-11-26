.class public final synthetic Lvj5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Lbm3;

.field public final synthetic c:Z

.field public final synthetic d:Lll3;

.field public final synthetic e:Landroidx/compose/ui/Modifier;

.field public final synthetic f:Lbm3;

.field public final synthetic g:Lbm3;

.field public final synthetic h:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic i:Landroidx/compose/material3/NavigationDrawerItemColors;

.field public final synthetic j:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic k:I

.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(Lbm3;ZLll3;Landroidx/compose/ui/Modifier;Lbm3;Lbm3;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/NavigationDrawerItemColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvj5;->b:Lbm3;

    iput-boolean p2, p0, Lvj5;->c:Z

    iput-object p3, p0, Lvj5;->d:Lll3;

    iput-object p4, p0, Lvj5;->e:Landroidx/compose/ui/Modifier;

    iput-object p5, p0, Lvj5;->f:Lbm3;

    iput-object p6, p0, Lvj5;->g:Lbm3;

    iput-object p7, p0, Lvj5;->h:Landroidx/compose/ui/graphics/Shape;

    iput-object p8, p0, Lvj5;->i:Landroidx/compose/material3/NavigationDrawerItemColors;

    iput-object p9, p0, Lvj5;->j:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput p10, p0, Lvj5;->k:I

    iput p11, p0, Lvj5;->l:I

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

    iget-object v0, p0, Lvj5;->b:Lbm3;

    iget-boolean v1, p0, Lvj5;->c:Z

    iget-object v2, p0, Lvj5;->d:Lll3;

    iget-object v3, p0, Lvj5;->e:Landroidx/compose/ui/Modifier;

    iget-object v4, p0, Lvj5;->f:Lbm3;

    iget-object v5, p0, Lvj5;->g:Lbm3;

    iget-object v6, p0, Lvj5;->h:Landroidx/compose/ui/graphics/Shape;

    iget-object v7, p0, Lvj5;->i:Landroidx/compose/material3/NavigationDrawerItemColors;

    iget-object v8, p0, Lvj5;->j:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget v9, p0, Lvj5;->k:I

    iget v10, p0, Lvj5;->l:I

    invoke-static/range {v0 .. v12}, Landroidx/compose/material3/NavigationDrawerKt;->n(Lbm3;ZLll3;Landroidx/compose/ui/Modifier;Lbm3;Lbm3;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/NavigationDrawerItemColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
