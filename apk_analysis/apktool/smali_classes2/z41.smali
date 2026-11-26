.class public final synthetic Lz41;
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

.field public final synthetic g:Landroidx/compose/foundation/layout/PaddingValues;

.field public final synthetic h:Lfm3;

.field public final synthetic i:I

.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/carousel/CarouselState;FLandroidx/compose/ui/Modifier;FLandroidx/compose/foundation/gestures/TargetedFlingBehavior;Landroidx/compose/foundation/layout/PaddingValues;Lfm3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz41;->b:Landroidx/compose/material3/carousel/CarouselState;

    iput p2, p0, Lz41;->c:F

    iput-object p3, p0, Lz41;->d:Landroidx/compose/ui/Modifier;

    iput p4, p0, Lz41;->e:F

    iput-object p5, p0, Lz41;->f:Landroidx/compose/foundation/gestures/TargetedFlingBehavior;

    iput-object p6, p0, Lz41;->g:Landroidx/compose/foundation/layout/PaddingValues;

    iput-object p7, p0, Lz41;->h:Lfm3;

    iput p8, p0, Lz41;->i:I

    iput p9, p0, Lz41;->j:I

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

    iget-object v0, p0, Lz41;->b:Landroidx/compose/material3/carousel/CarouselState;

    iget v1, p0, Lz41;->c:F

    iget-object v2, p0, Lz41;->d:Landroidx/compose/ui/Modifier;

    iget v3, p0, Lz41;->e:F

    iget-object v4, p0, Lz41;->f:Landroidx/compose/foundation/gestures/TargetedFlingBehavior;

    iget-object v5, p0, Lz41;->g:Landroidx/compose/foundation/layout/PaddingValues;

    iget-object v6, p0, Lz41;->h:Lfm3;

    iget v7, p0, Lz41;->i:I

    iget v8, p0, Lz41;->j:I

    invoke-static/range {v0 .. v10}, Landroidx/compose/material3/carousel/CarouselKt;->j(Landroidx/compose/material3/carousel/CarouselState;FLandroidx/compose/ui/Modifier;FLandroidx/compose/foundation/gestures/TargetedFlingBehavior;Landroidx/compose/foundation/layout/PaddingValues;Lfm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
