.class public final synthetic Lyh9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Landroidx/compose/material3/WideNavigationRailState;

.field public final synthetic d:Z

.field public final synthetic e:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic f:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic g:Landroidx/compose/material3/WideNavigationRailColors;

.field public final synthetic h:Lbm3;

.field public final synthetic i:F

.field public final synthetic j:Landroidx/compose/foundation/layout/WindowInsets;

.field public final synthetic k:Landroidx/compose/foundation/layout/Arrangement$Vertical;

.field public final synthetic l:Landroidx/compose/material3/ModalWideNavigationRailProperties;

.field public final synthetic m:Lbm3;

.field public final synthetic n:I

.field public final synthetic o:I

.field public final synthetic p:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/WideNavigationRailState;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/WideNavigationRailColors;Lbm3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/material3/ModalWideNavigationRailProperties;Lbm3;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyh9;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lyh9;->c:Landroidx/compose/material3/WideNavigationRailState;

    iput-boolean p3, p0, Lyh9;->d:Z

    iput-object p4, p0, Lyh9;->e:Landroidx/compose/ui/graphics/Shape;

    iput-object p5, p0, Lyh9;->f:Landroidx/compose/ui/graphics/Shape;

    iput-object p6, p0, Lyh9;->g:Landroidx/compose/material3/WideNavigationRailColors;

    iput-object p7, p0, Lyh9;->h:Lbm3;

    iput p8, p0, Lyh9;->i:F

    iput-object p9, p0, Lyh9;->j:Landroidx/compose/foundation/layout/WindowInsets;

    iput-object p10, p0, Lyh9;->k:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    iput-object p11, p0, Lyh9;->l:Landroidx/compose/material3/ModalWideNavigationRailProperties;

    iput-object p12, p0, Lyh9;->m:Lbm3;

    iput p13, p0, Lyh9;->n:I

    iput p14, p0, Lyh9;->o:I

    iput p15, p0, Lyh9;->p:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v16, p1

    check-cast v16, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v17

    iget-object v1, v0, Lyh9;->b:Landroidx/compose/ui/Modifier;

    iget-object v2, v0, Lyh9;->c:Landroidx/compose/material3/WideNavigationRailState;

    iget-boolean v3, v0, Lyh9;->d:Z

    iget-object v4, v0, Lyh9;->e:Landroidx/compose/ui/graphics/Shape;

    iget-object v5, v0, Lyh9;->f:Landroidx/compose/ui/graphics/Shape;

    iget-object v6, v0, Lyh9;->g:Landroidx/compose/material3/WideNavigationRailColors;

    iget-object v7, v0, Lyh9;->h:Lbm3;

    iget v8, v0, Lyh9;->i:F

    iget-object v9, v0, Lyh9;->j:Landroidx/compose/foundation/layout/WindowInsets;

    iget-object v10, v0, Lyh9;->k:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    iget-object v11, v0, Lyh9;->l:Landroidx/compose/material3/ModalWideNavigationRailProperties;

    iget-object v12, v0, Lyh9;->m:Lbm3;

    iget v13, v0, Lyh9;->n:I

    iget v14, v0, Lyh9;->o:I

    iget v15, v0, Lyh9;->p:I

    invoke-static/range {v1 .. v17}, Landroidx/compose/material3/WideNavigationRailKt;->e(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/WideNavigationRailState;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/WideNavigationRailColors;Lbm3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/material3/ModalWideNavigationRailProperties;Lbm3;IIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object v0

    return-object v0
.end method
