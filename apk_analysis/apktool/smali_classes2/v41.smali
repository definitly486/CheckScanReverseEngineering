.class public final synthetic Lv41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/carousel/CarouselState;

.field public final synthetic c:F

.field public final synthetic d:Landroidx/compose/ui/Modifier;

.field public final synthetic e:F

.field public final synthetic f:Landroidx/compose/foundation/gestures/TargetedFlingBehavior;

.field public final synthetic g:Z

.field public final synthetic h:F

.field public final synthetic i:F

.field public final synthetic j:Landroidx/compose/foundation/layout/PaddingValues;

.field public final synthetic k:Lfm3;

.field public final synthetic l:I

.field public final synthetic m:I


# direct methods
.method public synthetic constructor <init>(FFFFIILfm3;Landroidx/compose/foundation/gestures/TargetedFlingBehavior;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/material3/carousel/CarouselState;Landroidx/compose/ui/Modifier;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p10, p0, Lv41;->b:Landroidx/compose/material3/carousel/CarouselState;

    iput p1, p0, Lv41;->c:F

    iput-object p11, p0, Lv41;->d:Landroidx/compose/ui/Modifier;

    iput p2, p0, Lv41;->e:F

    iput-object p8, p0, Lv41;->f:Landroidx/compose/foundation/gestures/TargetedFlingBehavior;

    iput-boolean p12, p0, Lv41;->g:Z

    iput p3, p0, Lv41;->h:F

    iput p4, p0, Lv41;->i:F

    iput-object p9, p0, Lv41;->j:Landroidx/compose/foundation/layout/PaddingValues;

    iput-object p7, p0, Lv41;->k:Lfm3;

    iput p5, p0, Lv41;->l:I

    iput p6, p0, Lv41;->m:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    move-object v12, p1

    check-cast v12, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iget-object v0, p0, Lv41;->b:Landroidx/compose/material3/carousel/CarouselState;

    iget v1, p0, Lv41;->c:F

    iget-object v2, p0, Lv41;->d:Landroidx/compose/ui/Modifier;

    iget v3, p0, Lv41;->e:F

    iget-object v4, p0, Lv41;->f:Landroidx/compose/foundation/gestures/TargetedFlingBehavior;

    iget-boolean v5, p0, Lv41;->g:Z

    iget v6, p0, Lv41;->h:F

    iget v7, p0, Lv41;->i:F

    iget-object v8, p0, Lv41;->j:Landroidx/compose/foundation/layout/PaddingValues;

    iget-object v9, p0, Lv41;->k:Lfm3;

    iget v10, p0, Lv41;->l:I

    iget v11, p0, Lv41;->m:I

    invoke-static/range {v0 .. v13}, Landroidx/compose/material3/carousel/CarouselKt;->b(Landroidx/compose/material3/carousel/CarouselState;FLandroidx/compose/ui/Modifier;FLandroidx/compose/foundation/gestures/TargetedFlingBehavior;ZFFLandroidx/compose/foundation/layout/PaddingValues;Lfm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
