.class public interface abstract Landroidx/compose/runtime/Applier;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/Applier$DefaultImpls;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static synthetic access$apply$jd(Landroidx/compose/runtime/Applier;Lbm3;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/compose/runtime/Applier;->apply(Lbm3;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic access$onBeginChanges$jd(Landroidx/compose/runtime/Applier;)V
    .locals 0

    invoke-super {p0}, Landroidx/compose/runtime/Applier;->onBeginChanges()V

    return-void
.end method

.method public static synthetic access$onEndChanges$jd(Landroidx/compose/runtime/Applier;)V
    .locals 0

    invoke-super {p0}, Landroidx/compose/runtime/Applier;->onEndChanges()V

    return-void
.end method

.method public static synthetic access$reuse$jd(Landroidx/compose/runtime/Applier;)V
    .locals 0

    invoke-super {p0}, Landroidx/compose/runtime/Applier;->reuse()V

    return-void
.end method


# virtual methods
.method public apply(Lbm3;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbm3<",
            "-TN;",
            "Ljava/lang/Object;",
            "Lj59;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-interface {p0}, Landroidx/compose/runtime/Applier;->getCurrent()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0, p2}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public abstract clear()V
.end method

.method public abstract down(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation
.end method

.method public abstract getCurrent()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation
.end method

.method public abstract insertBottomUp(ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITN;)V"
        }
    .end annotation
.end method

.method public abstract insertTopDown(ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITN;)V"
        }
    .end annotation
.end method

.method public abstract move(III)V
.end method

.method public onBeginChanges()V
    .locals 0

    return-void
.end method

.method public onEndChanges()V
    .locals 0

    return-void
.end method

.method public abstract remove(II)V
.end method

.method public reuse()V
    .locals 1

    invoke-interface {p0}, Landroidx/compose/runtime/Applier;->getCurrent()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;->onReuse()V

    :cond_1
    return-void
.end method

.method public abstract up()V
.end method
