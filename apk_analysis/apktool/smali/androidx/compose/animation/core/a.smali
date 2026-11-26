.class public final synthetic Landroidx/compose/animation/core/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/animation/core/Animatable;

.field public final synthetic c:Landroidx/compose/animation/core/AnimationState;

.field public final synthetic d:Lnl3;

.field public final synthetic e:Ln07;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/animation/core/Animatable;Landroidx/compose/animation/core/AnimationState;Lnl3;Ln07;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/animation/core/a;->b:Landroidx/compose/animation/core/Animatable;

    iput-object p2, p0, Landroidx/compose/animation/core/a;->c:Landroidx/compose/animation/core/AnimationState;

    iput-object p3, p0, Landroidx/compose/animation/core/a;->d:Lnl3;

    iput-object p4, p0, Landroidx/compose/animation/core/a;->e:Ln07;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Landroidx/compose/animation/core/a;->e:Ln07;

    check-cast p1, Landroidx/compose/animation/core/AnimationScope;

    iget-object v1, p0, Landroidx/compose/animation/core/a;->b:Landroidx/compose/animation/core/Animatable;

    iget-object v2, p0, Landroidx/compose/animation/core/a;->c:Landroidx/compose/animation/core/AnimationState;

    iget-object p0, p0, Landroidx/compose/animation/core/a;->d:Lnl3;

    invoke-static {v1, v2, p0, v0, p1}, Landroidx/compose/animation/core/Animatable$runAnimation$2;->g(Landroidx/compose/animation/core/Animatable;Landroidx/compose/animation/core/AnimationState;Lnl3;Ln07;Landroidx/compose/animation/core/AnimationScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
