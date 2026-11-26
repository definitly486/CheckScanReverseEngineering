.class public final synthetic Lng8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lr07;

.field public final synthetic c:F

.field public final synthetic d:Landroidx/compose/animation/core/Animation;

.field public final synthetic e:Landroidx/compose/animation/core/AnimationState;

.field public final synthetic f:Lnl3;


# direct methods
.method public synthetic constructor <init>(Lr07;FLandroidx/compose/animation/core/Animation;Landroidx/compose/animation/core/AnimationState;Lnl3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lng8;->b:Lr07;

    iput p2, p0, Lng8;->c:F

    iput-object p3, p0, Lng8;->d:Landroidx/compose/animation/core/Animation;

    iput-object p4, p0, Lng8;->e:Landroidx/compose/animation/core/AnimationState;

    iput-object p5, p0, Lng8;->f:Lnl3;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v0, p0, Lng8;->b:Lr07;

    iget v1, p0, Lng8;->c:F

    iget-object v2, p0, Lng8;->d:Landroidx/compose/animation/core/Animation;

    iget-object v3, p0, Lng8;->e:Landroidx/compose/animation/core/AnimationState;

    iget-object v4, p0, Lng8;->f:Lnl3;

    invoke-static/range {v0 .. v6}, Landroidx/compose/animation/core/SuspendAnimationKt;->a(Lr07;FLandroidx/compose/animation/core/Animation;Landroidx/compose/animation/core/AnimationState;Lnl3;J)Lj59;

    move-result-object p0

    return-object p0
.end method
