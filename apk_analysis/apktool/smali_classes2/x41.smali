.class public final synthetic Lx41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/carousel/CarouselState;

.field public final synthetic c:Landroidx/compose/foundation/gestures/Orientation;

.field public final synthetic d:Lbm3;

.field public final synthetic e:Landroidx/compose/foundation/layout/PaddingValues;

.field public final synthetic f:I

.field public final synthetic g:Landroidx/compose/ui/Modifier;

.field public final synthetic h:F

.field public final synthetic i:Landroidx/compose/foundation/gestures/TargetedFlingBehavior;

.field public final synthetic j:Z

.field public final synthetic k:Lfm3;

.field public final synthetic l:I

.field public final synthetic m:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/carousel/CarouselState;Landroidx/compose/foundation/gestures/Orientation;Lbm3;Landroidx/compose/foundation/layout/PaddingValues;ILandroidx/compose/ui/Modifier;FLandroidx/compose/foundation/gestures/TargetedFlingBehavior;ZLfm3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx41;->b:Landroidx/compose/material3/carousel/CarouselState;

    iput-object p2, p0, Lx41;->c:Landroidx/compose/foundation/gestures/Orientation;

    iput-object p3, p0, Lx41;->d:Lbm3;

    iput-object p4, p0, Lx41;->e:Landroidx/compose/foundation/layout/PaddingValues;

    iput p5, p0, Lx41;->f:I

    iput-object p6, p0, Lx41;->g:Landroidx/compose/ui/Modifier;

    iput p7, p0, Lx41;->h:F

    iput-object p8, p0, Lx41;->i:Landroidx/compose/foundation/gestures/TargetedFlingBehavior;

    iput-boolean p9, p0, Lx41;->j:Z

    iput-object p10, p0, Lx41;->k:Lfm3;

    iput p11, p0, Lx41;->l:I

    iput p12, p0, Lx41;->m:I

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

    iget-object v0, p0, Lx41;->b:Landroidx/compose/material3/carousel/CarouselState;

    iget-object v1, p0, Lx41;->c:Landroidx/compose/foundation/gestures/Orientation;

    iget-object v2, p0, Lx41;->d:Lbm3;

    iget-object v3, p0, Lx41;->e:Landroidx/compose/foundation/layout/PaddingValues;

    iget v4, p0, Lx41;->f:I

    iget-object v5, p0, Lx41;->g:Landroidx/compose/ui/Modifier;

    iget v6, p0, Lx41;->h:F

    iget-object v7, p0, Lx41;->i:Landroidx/compose/foundation/gestures/TargetedFlingBehavior;

    iget-boolean v8, p0, Lx41;->j:Z

    iget-object v9, p0, Lx41;->k:Lfm3;

    iget v10, p0, Lx41;->l:I

    iget v11, p0, Lx41;->m:I

    invoke-static/range {v0 .. v13}, Landroidx/compose/material3/carousel/CarouselKt;->c(Landroidx/compose/material3/carousel/CarouselState;Landroidx/compose/foundation/gestures/Orientation;Lbm3;Landroidx/compose/foundation/layout/PaddingValues;ILandroidx/compose/ui/Modifier;FLandroidx/compose/foundation/gestures/TargetedFlingBehavior;ZLfm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
