.class public interface abstract Landroidx/compose/material3/TooltipState;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic show$default(Landroidx/compose/material3/TooltipState;Landroidx/compose/foundation/MutatePriority;Le02;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    sget-object p1, Landroidx/compose/foundation/MutatePriority;->Default:Landroidx/compose/foundation/MutatePriority;

    :cond_0
    invoke-interface {p0, p1, p2}, Landroidx/compose/material3/TooltipState;->show(Landroidx/compose/foundation/MutatePriority;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "Super calls with default arguments not supported in this target, function: show"

    invoke-static {p0}, Ln1;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public abstract dismiss()V
.end method

.method public abstract getTransition()Landroidx/compose/animation/core/MutableTransitionState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/core/MutableTransitionState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isPersistent()Z
.end method

.method public abstract isVisible()Z
.end method

.method public abstract onDispose()V
.end method

.method public abstract show(Landroidx/compose/foundation/MutatePriority;Le02;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/MutatePriority;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method
