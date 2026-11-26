.class public final synthetic Lv44;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Landroidx/compose/animation/core/InfiniteRepeatableSpec;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;Ljava/lang/Object;Landroidx/compose/animation/core/InfiniteRepeatableSpec;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv44;->b:Ljava/lang/Object;

    iput-object p2, p0, Lv44;->c:Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    iput-object p3, p0, Lv44;->d:Ljava/lang/Object;

    iput-object p4, p0, Lv44;->e:Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lv44;->d:Ljava/lang/Object;

    iget-object v1, p0, Lv44;->e:Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    iget-object v2, p0, Lv44;->b:Ljava/lang/Object;

    iget-object p0, p0, Lv44;->c:Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    invoke-static {v2, p0, v0, v1}, Landroidx/compose/animation/core/InfiniteTransitionKt;->a(Ljava/lang/Object;Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;Ljava/lang/Object;Landroidx/compose/animation/core/InfiniteRepeatableSpec;)Lj59;

    move-result-object p0

    return-object p0
.end method
