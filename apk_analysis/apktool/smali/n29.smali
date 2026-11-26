.class public final synthetic Ln29;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/animation/core/Transition;

.field public final synthetic c:Landroidx/compose/animation/core/Transition$TransitionAnimationState;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Landroidx/compose/animation/core/FiniteAnimationSpec;

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/Transition$TransitionAnimationState;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln29;->b:Landroidx/compose/animation/core/Transition;

    iput-object p2, p0, Ln29;->c:Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    iput-object p3, p0, Ln29;->d:Ljava/lang/Object;

    iput-object p4, p0, Ln29;->e:Ljava/lang/Object;

    iput-object p5, p0, Ln29;->f:Landroidx/compose/animation/core/FiniteAnimationSpec;

    iput p6, p0, Ln29;->g:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v0, p0, Ln29;->b:Landroidx/compose/animation/core/Transition;

    iget-object v1, p0, Ln29;->c:Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    iget-object v2, p0, Ln29;->d:Ljava/lang/Object;

    iget-object v3, p0, Ln29;->e:Ljava/lang/Object;

    iget-object v4, p0, Ln29;->f:Landroidx/compose/animation/core/FiniteAnimationSpec;

    iget v5, p0, Ln29;->g:I

    invoke-static/range {v0 .. v7}, Landroidx/compose/animation/core/TransitionKt;->a(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/Transition$TransitionAnimationState;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
