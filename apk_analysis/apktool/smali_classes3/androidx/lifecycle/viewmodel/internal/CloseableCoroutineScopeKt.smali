.class public final Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScopeKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final VIEW_MODEL_SCOPE_KEY:Ljava/lang/String; = "androidx.lifecycle.viewmodel.internal.ViewModelCoroutineScope.JOB_KEY"


# direct methods
.method public static final asCloseable(Ly22;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    invoke-direct {v0, p0}, Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;-><init>(Ly22;)V

    return-object v0
.end method

.method public static final createViewModelScope()Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;
    .locals 3

    sget-object v0, Lgx2;->b:Lgx2;

    :try_start_0
    sget-object v1, Lqo2;->a:Loi2;

    sget-object v1, Luy4;->a:Lhu3;

    invoke-virtual {v1}, Lhu3;->k0()Lgu3;

    move-result-object v0
    :try_end_0
    .catch Loo5; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v1, Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    invoke-static {}, Lrm9;->b()Ljd8;

    move-result-object v2

    invoke-interface {v0, v2}, Lo22;->plus(Lo22;)Lo22;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;-><init>(Lo22;)V

    return-object v1
.end method
