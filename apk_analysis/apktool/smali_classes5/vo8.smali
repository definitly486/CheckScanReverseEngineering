.class public interface abstract Lvo8;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a(ILe02;)Ljava/lang/Object;
    .param p1    # I
        .annotation runtime Lk46;
            value = "taskId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Le02<",
            "-",
            "Lgo8;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lz06;
        value = "api/v2.1/tasks/{taskId}/claim"
    .end annotation
.end method

.method public abstract b(ILe02;)Ljava/lang/Object;
    .param p1    # I
        .annotation runtime Lk46;
            value = "taskId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Le02<",
            "-",
            "Lml8;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lz06;
        value = "api/v2.1/tasks/{taskId}/action"
    .end annotation
.end method

.method public abstract c(ILe02;)Ljava/lang/Object;
    .param p1    # I
        .annotation runtime Lk46;
            value = "taskId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Le02<",
            "-",
            "Ljm8;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "api/v2.1/tasks/{taskId}/checkboxSubtasksInfo"
    .end annotation
.end method

.method public abstract d(ILe02;)Ljava/lang/Object;
    .param p1    # I
        .annotation runtime Lk46;
            value = "taskId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Le02<",
            "-",
            "Lbo8;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "api/v2.1/tasks/{taskId}"
    .end annotation
.end method

.method public abstract e(ILe02;)Ljava/lang/Object;
    .param p1    # I
        .annotation runtime Lk46;
            value = "taskId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Le02<",
            "-",
            "Llo8;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "api/v2.1/tasks/{taskId}/rewardSubtasksInfo"
    .end annotation
.end method

.method public abstract f(ZLe02;)Ljava/lang/Object;
    .param p1    # Z
        .annotation runtime Llv6;
            value = "isFilterBannersByView"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Le02<",
            "-",
            "Lzo8;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "api/v2.1/tasks/main"
    .end annotation
.end method

.method public abstract g(IILe02;)Ljava/lang/Object;
    .param p1    # I
        .annotation runtime Lk46;
            value = "taskId"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lk46;
            value = "subtaskId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Le02<",
            "-",
            "Lko8;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lz06;
        value = "api/v2.1/tasks/{taskId}/subtasks/{subtaskId}/action"
    .end annotation
.end method

.method public abstract h(ILe02;)Ljava/lang/Object;
    .param p1    # I
        .annotation runtime Lk46;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Le02<",
            "-",
            "Lnq6;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lz06;
        value = "api/v2.1/tasks/{id}/action"
    .end annotation
.end method

.method public abstract i(Le02;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-",
            "Ljava/util/List<",
            "Lfo8;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "api/v2.1/tasks"
    .end annotation
.end method

.method public abstract j(ILe02;)Ljava/lang/Object;
    .param p1    # I
        .annotation runtime Lk46;
            value = "taskId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Le02<",
            "-",
            "Ltm8;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "api/v2.1/tasks/{taskId}/details"
    .end annotation
.end method

.method public abstract k(ILe02;)Ljava/lang/Object;
    .param p1    # I
        .annotation runtime Lk46;
            value = "badgeId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Le02<",
            "-",
            "Lkn8;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "api/v2.1/badge/{badgeId}"
    .end annotation
.end method

.method public abstract l(IILe02;)Ljava/lang/Object;
    .param p1    # I
        .annotation runtime Lk46;
            value = "taskId"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lk46;
            value = "subtaskId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Le02<",
            "-",
            "Lkm8;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lz06;
        value = "api/v2.1/tasks/{taskId}/subtasks/{subtaskId}/action"
    .end annotation
.end method

.method public abstract m(IILe02;)Ljava/lang/Object;
    .param p1    # I
        .annotation runtime Lk46;
            value = "taskId"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lk46;
            value = "subtaskId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Le02<",
            "-",
            "Lgo8;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lz06;
        value = "api/v2.1/tasks/{taskId}/subtasks/{subtaskId}/claim"
    .end annotation
.end method

.method public abstract n(ILe02;)Ljava/lang/Object;
    .param p1    # I
        .annotation runtime Lk46;
            value = "taskId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Le02<",
            "-",
            "Lhm8;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "api/v2.1/tasks/{taskId}/checkboxInfo"
    .end annotation
.end method

.method public abstract o(Lj8;Le02;)Ljava/lang/Object;
    .param p1    # Lj8;
        .annotation runtime Llk0;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj8;",
            "Le02<",
            "-",
            "Lol8;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lz06;
        value = "api/v2.1/ad/promo/view"
    .end annotation
.end method

.method public abstract p(ILe02;)Ljava/lang/Object;
    .param p1    # I
        .annotation runtime Lk46;
            value = "taskId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Le02<",
            "-",
            "Ljo8;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "api/v2.1/tasks/{taskId}"
    .end annotation
.end method

.method public abstract q(ILe02;)Ljava/lang/Object;
    .param p1    # I
        .annotation runtime Lk46;
            value = "taskId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Le02<",
            "-",
            "Lmo8;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "api/v2.1/tasks/{taskId}/subtasksInfo"
    .end annotation
.end method

.method public abstract r(Le02;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-",
            "Lnl8;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "api/v2.1/ad/promo/available"
    .end annotation
.end method
