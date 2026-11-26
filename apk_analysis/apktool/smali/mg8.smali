.class public final synthetic Lmg8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lr07;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Landroidx/compose/animation/core/Animation;

.field public final synthetic e:Landroidx/compose/animation/core/AnimationVector;

.field public final synthetic f:Landroidx/compose/animation/core/AnimationState;

.field public final synthetic g:F

.field public final synthetic h:Lnl3;


# direct methods
.method public synthetic constructor <init>(Lr07;Ljava/lang/Object;Landroidx/compose/animation/core/Animation;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationState;FLnl3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmg8;->b:Lr07;

    iput-object p2, p0, Lmg8;->c:Ljava/lang/Object;

    iput-object p3, p0, Lmg8;->d:Landroidx/compose/animation/core/Animation;

    iput-object p4, p0, Lmg8;->e:Landroidx/compose/animation/core/AnimationVector;

    iput-object p5, p0, Lmg8;->f:Landroidx/compose/animation/core/AnimationState;

    iput p6, p0, Lmg8;->g:F

    iput-object p7, p0, Lmg8;->h:Lnl3;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v0, p0, Lmg8;->b:Lr07;

    iget-object v1, p0, Lmg8;->c:Ljava/lang/Object;

    iget-object v2, p0, Lmg8;->d:Landroidx/compose/animation/core/Animation;

    iget-object v3, p0, Lmg8;->e:Landroidx/compose/animation/core/AnimationVector;

    iget-object v4, p0, Lmg8;->f:Landroidx/compose/animation/core/AnimationState;

    iget v5, p0, Lmg8;->g:F

    iget-object v6, p0, Lmg8;->h:Lnl3;

    invoke-static/range {v0 .. v8}, Landroidx/compose/animation/core/SuspendAnimationKt;->g(Lr07;Ljava/lang/Object;Landroidx/compose/animation/core/Animation;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationState;FLnl3;J)Lj59;

    move-result-object p0

    return-object p0
.end method
