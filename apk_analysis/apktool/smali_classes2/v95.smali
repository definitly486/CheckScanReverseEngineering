.class public final synthetic Lv95;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Lbm3;

.field public final synthetic c:Lll3;

.field public final synthetic d:Landroidx/compose/ui/Modifier;

.field public final synthetic e:Lbm3;

.field public final synthetic f:Lbm3;

.field public final synthetic g:Z

.field public final synthetic h:Landroidx/compose/material3/MenuItemColors;

.field public final synthetic i:Landroidx/compose/foundation/layout/PaddingValues;

.field public final synthetic j:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic k:I


# direct methods
.method public synthetic constructor <init>(Lbm3;Lll3;Landroidx/compose/ui/Modifier;Lbm3;Lbm3;ZLandroidx/compose/material3/MenuItemColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv95;->b:Lbm3;

    iput-object p2, p0, Lv95;->c:Lll3;

    iput-object p3, p0, Lv95;->d:Landroidx/compose/ui/Modifier;

    iput-object p4, p0, Lv95;->e:Lbm3;

    iput-object p5, p0, Lv95;->f:Lbm3;

    iput-boolean p6, p0, Lv95;->g:Z

    iput-object p7, p0, Lv95;->h:Landroidx/compose/material3/MenuItemColors;

    iput-object p8, p0, Lv95;->i:Landroidx/compose/foundation/layout/PaddingValues;

    iput-object p9, p0, Lv95;->j:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput p10, p0, Lv95;->k:I

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

    iget-object v0, p0, Lv95;->b:Lbm3;

    iget-object v1, p0, Lv95;->c:Lll3;

    iget-object v2, p0, Lv95;->d:Landroidx/compose/ui/Modifier;

    iget-object v3, p0, Lv95;->e:Lbm3;

    iget-object v4, p0, Lv95;->f:Lbm3;

    iget-boolean v5, p0, Lv95;->g:Z

    iget-object v6, p0, Lv95;->h:Landroidx/compose/material3/MenuItemColors;

    iget-object v7, p0, Lv95;->i:Landroidx/compose/foundation/layout/PaddingValues;

    iget-object v8, p0, Lv95;->j:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget v9, p0, Lv95;->k:I

    invoke-static/range {v0 .. v11}, Landroidx/compose/material3/MenuKt;->a(Lbm3;Lll3;Landroidx/compose/ui/Modifier;Lbm3;Lbm3;ZLandroidx/compose/material3/MenuItemColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
