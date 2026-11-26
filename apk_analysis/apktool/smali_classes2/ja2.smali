.class public final synthetic Lja2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/animation/core/FiniteAnimationSpec;

.field public final synthetic c:Landroidx/compose/animation/core/FiniteAnimationSpec;

.field public final synthetic d:Landroidx/compose/animation/core/FiniteAnimationSpec;

.field public final synthetic e:I

.field public final synthetic f:Landroidx/compose/animation/core/FiniteAnimationSpec;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/FiniteAnimationSpec;ILandroidx/compose/animation/core/FiniteAnimationSpec;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lja2;->b:Landroidx/compose/animation/core/FiniteAnimationSpec;

    iput-object p2, p0, Lja2;->c:Landroidx/compose/animation/core/FiniteAnimationSpec;

    iput-object p3, p0, Lja2;->d:Landroidx/compose/animation/core/FiniteAnimationSpec;

    iput p4, p0, Lja2;->e:I

    iput-object p5, p0, Lja2;->f:Landroidx/compose/animation/core/FiniteAnimationSpec;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v4, p0, Lja2;->f:Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-object v5, p1

    check-cast v5, Landroidx/compose/animation/AnimatedContentTransitionScope;

    iget-object v0, p0, Lja2;->b:Landroidx/compose/animation/core/FiniteAnimationSpec;

    iget-object v1, p0, Lja2;->c:Landroidx/compose/animation/core/FiniteAnimationSpec;

    iget-object v2, p0, Lja2;->d:Landroidx/compose/animation/core/FiniteAnimationSpec;

    iget v3, p0, Lja2;->e:I

    invoke-static/range {v0 .. v5}, Landroidx/compose/material3/DatePickerKt;->h(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/FiniteAnimationSpec;ILandroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/AnimatedContentTransitionScope;)Landroidx/compose/animation/ContentTransform;

    move-result-object p0

    return-object p0
.end method
