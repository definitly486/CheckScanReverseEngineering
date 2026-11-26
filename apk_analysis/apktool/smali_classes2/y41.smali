.class public final synthetic Ly41;
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

.field public final synthetic g:F

.field public final synthetic h:F

.field public final synthetic i:Landroidx/compose/foundation/layout/PaddingValues;

.field public final synthetic j:Lfm3;

.field public final synthetic k:I

.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/carousel/CarouselState;FLandroidx/compose/ui/Modifier;FLandroidx/compose/foundation/gestures/TargetedFlingBehavior;FFLandroidx/compose/foundation/layout/PaddingValues;Lfm3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly41;->b:Landroidx/compose/material3/carousel/CarouselState;

    iput p2, p0, Ly41;->c:F

    iput-object p3, p0, Ly41;->d:Landroidx/compose/ui/Modifier;

    iput p4, p0, Ly41;->e:F

    iput-object p5, p0, Ly41;->f:Landroidx/compose/foundation/gestures/TargetedFlingBehavior;

    iput p6, p0, Ly41;->g:F

    iput p7, p0, Ly41;->h:F

    iput-object p8, p0, Ly41;->i:Landroidx/compose/foundation/layout/PaddingValues;

    iput-object p9, p0, Ly41;->j:Lfm3;

    iput p10, p0, Ly41;->k:I

    iput p11, p0, Ly41;->l:I

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

    iget-object v0, p0, Ly41;->b:Landroidx/compose/material3/carousel/CarouselState;

    iget v1, p0, Ly41;->c:F

    iget-object v2, p0, Ly41;->d:Landroidx/compose/ui/Modifier;

    iget v3, p0, Ly41;->e:F

    iget-object v4, p0, Ly41;->f:Landroidx/compose/foundation/gestures/TargetedFlingBehavior;

    iget v5, p0, Ly41;->g:F

    iget v6, p0, Ly41;->h:F

    iget-object v7, p0, Ly41;->i:Landroidx/compose/foundation/layout/PaddingValues;

    iget-object v8, p0, Ly41;->j:Lfm3;

    iget v9, p0, Ly41;->k:I

    iget v10, p0, Ly41;->l:I

    invoke-static/range {v0 .. v12}, Landroidx/compose/material3/carousel/CarouselKt;->e(Landroidx/compose/material3/carousel/CarouselState;FLandroidx/compose/ui/Modifier;FLandroidx/compose/foundation/gestures/TargetedFlingBehavior;FFLandroidx/compose/foundation/layout/PaddingValues;Lfm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
