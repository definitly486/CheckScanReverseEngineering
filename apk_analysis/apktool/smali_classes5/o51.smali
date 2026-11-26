.class public interface abstract Lo51;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a()Lmz7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmz7<",
            "Ljava/util/List<",
            "Lst6;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "api/v2.1/advance"
    .end annotation
.end method

.method public abstract b(I)Lmz7;
    .param p1    # I
        .annotation runtime Llv6;
            value = "areaId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmz7<",
            "Ljava/util/List<",
            "Lgq6;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "api/v2.1/cashback/v2/transfer/promocode/info"
    .end annotation

    .annotation runtime Lkv3;
        value = {
            "Accept: application/json",
            "Content-type: application/json;charset=UTF-8"
        }
    .end annotation
.end method

.method public abstract c(JLlg5$c;Llg5$c;Lg37;)Lmz7;
    .param p1    # J
        .annotation runtime Lk46;
            value = "id"
        .end annotation
    .end param
    .param p3    # Llg5$c;
        .annotation runtime Lb46;
        .end annotation
    .end param
    .param p4    # Llg5$c;
        .annotation runtime Lb46;
        .end annotation
    .end param
    .param p5    # Lg37;
        .annotation runtime Lb46;
            value = "type"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Llg5$c;",
            "Llg5$c;",
            "Lg37;",
            ")",
            "Lmz7<",
            "La57<",
            "Lb57;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lkg5;
    .end annotation

    .annotation runtime Lz06;
        value = "api/v2.1/advance/{id}/submit"
    .end annotation
.end method

.method public abstract d()Lmz7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmz7<",
            "Ljava/util/List<",
            "Lm10;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "api/v2.1/balance/blocks"
    .end annotation
.end method

.method public abstract e(Ljava/lang/Integer;)Lmz7;
    .param p1    # Ljava/lang/Integer;
        .annotation runtime Llv6;
            value = "areaId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lmz7<",
            "Lwb0;",
            ">;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "api/v2.1/cashback/cards"
    .end annotation

    .annotation runtime Lkv3;
        value = {
            "Accept: application/json",
            "Content-type: application/json;charset=UTF-8"
        }
    .end annotation
.end method

.method public abstract f(Lhz8;)Lmz7;
    .param p1    # Lhz8;
        .annotation runtime Llk0;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhz8;",
            ")",
            "Lmz7<",
            "Le09;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkv3;
        value = {
            "Accept: application/json",
            "Content-type: application/json;charset=UTF-8"
        }
    .end annotation

    .annotation runtime Lz06;
        value = "api/v2.1/cashback/v2/transfer/promocode"
    .end annotation
.end method

.method public abstract g(Le02;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-",
            "Ljava/util/List<",
            "Lfd3;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "api/v2.1/buttons/floating/v2"
    .end annotation
.end method

.method public abstract h(ILe02;)Ljava/lang/Object;
    .param p1    # I
        .annotation runtime Llv6;
            value = "group"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Le02<",
            "-",
            "Ljava/util/List<",
            "Lfd3;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "api/v2.1/buttons/floating/v3"
    .end annotation
.end method

.method public abstract i(Lgd3;Le02;)Ljava/lang/Object;
    .param p1    # Lgd3;
        .annotation runtime Llk0;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgd3;",
            "Le02<",
            "-",
            "La57<",
            "Lj59;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lz06;
        value = "api/v2.1/events/buttons/action"
    .end annotation
.end method
