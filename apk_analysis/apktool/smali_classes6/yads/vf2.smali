.class public final Lyads/vf2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lyads/vq0;

.field public final synthetic c:Lyads/fs2;


# direct methods
.method public constructor <init>(Ljava/util/List;Lyads/vq0;Lyads/fs2;)V
    .locals 0

    iput-object p1, p0, Lyads/vf2;->a:Ljava/util/List;

    iput-object p2, p0, Lyads/vf2;->b:Lyads/vq0;

    iput-object p3, p0, Lyads/vf2;->c:Lyads/fs2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    iget-object p1, p0, Lyads/vf2;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/xr0;

    iget-object v1, p0, Lyads/vf2;->b:Lyads/vq0;

    iget-object v2, p0, Lyads/vf2;->c:Lyads/fs2;

    iget-object v3, v1, Lyads/vq0;->n:Lyads/nq0;

    iget-object v3, v3, Lyads/nq0;->G:Lcl4;

    invoke-interface {v3}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/bt0;

    iget-object v4, v1, Lyads/vq0;->R:Lyads/lu0;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v0, Lyads/xr0;->b:Lyads/as2;

    invoke-virtual {v5, v2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v1, v2, v0, v4}, Lyads/bt0;->a(Lyads/vh2;Lyads/fs2;Lyads/xr0;Lyads/lu0;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
