.class public interface abstract Lx80;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a()Lmz7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmz7<",
            "Ld41;",
            ">;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "api/v2.1/apiBank/state"
    .end annotation
.end method

.method public abstract b()Lmz7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmz7<",
            "Lv99;",
            ">;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "api/v2.1/users/info"
    .end annotation
.end method

.method public abstract c()Lqp1;
    .annotation runtime Lz06;
        value = "api/v2.1/events/apiBank/upgradeFormOpened"
    .end annotation
.end method

.method public abstract d()Lqp1;
    .annotation runtime Lz06;
        value = "api/v2.1/events/apiBank/registerAttempt"
    .end annotation
.end method

.method public abstract e(Lr76;)Lmz7;
    .param p1    # Lr76;
        .annotation runtime Llk0;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr76;",
            ")",
            "Lmz7<",
            "La57<",
            "Lbw1;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lz06;
        value = "api/v2.1/confirm/send"
    .end annotation
.end method

.method public abstract f(I)Lmz7;
    .param p1    # I
        .annotation runtime Lk46;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmz7<",
            "Ly31;",
            ">;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "api/v2.1/apiBank/virtualCards/{id}/link/replenish"
    .end annotation
.end method

.method public abstract g(Lxm1;)Lqp1;
    .param p1    # Lxm1;
        .annotation runtime Llk0;
        .end annotation
    .end param
    .annotation runtime Lz06;
        value = "api/v2.1/confirm/accept"
    .end annotation
.end method

.method public abstract h(Ljc;)Lmz7;
    .param p1    # Ljc;
        .annotation runtime Llk0;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljc;",
            ")",
            "Lmz7<",
            "Lic;",
            ">;"
        }
    .end annotation

    .annotation runtime Lz06;
        value = "api/v2.1/events/apiBank/alfa/registerCompleted"
    .end annotation
.end method

.method public abstract i()Lmz7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmz7<",
            "La57<",
            "Luc;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lz06;
        value = "api/v2.1/apiBank/alfa/client/register"
    .end annotation
.end method

.method public abstract j(Le02;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-",
            "Ldi4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "api/v2.1/apiBank/alfa/info/v2"
    .end annotation
.end method
