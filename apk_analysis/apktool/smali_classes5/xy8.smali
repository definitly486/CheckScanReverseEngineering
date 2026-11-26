.class public interface abstract Lxy8;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a(Lez8;)Lmz7;
    .param p1    # Lez8;
        .annotation runtime Llk0;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lez8;",
            ")",
            "Lmz7<",
            "Lgz8;",
            ">;"
        }
    .end annotation

    .annotation runtime Lz06;
        value = "api/v2.1/cashback/v3/transfer/card"
    .end annotation
.end method

.method public abstract b(Lwz8;)Lmz7;
    .param p1    # Lwz8;
        .annotation runtime Llk0;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwz8;",
            ")",
            "Lmz7<",
            "Lyz8;",
            ">;"
        }
    .end annotation

    .annotation runtime Lz06;
        value = "api/v2.1/cashback/v3/transfer/phone"
    .end annotation
.end method

.method public abstract c()Lmz7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmz7<",
            "Ltz8;",
            ">;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "api/v2.1/cashback/v3/transfer/phone/info"
    .end annotation
.end method

.method public abstract d(Le02;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-",
            "Li19;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "api/v2.1/cashback/v3/transfer/sbp/info"
    .end annotation
.end method

.method public abstract e(Lwz8;Le02;)Ljava/lang/Object;
    .param p1    # Lwz8;
        .annotation runtime Llk0;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwz8;",
            "Le02<",
            "-",
            "Lyz8;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lz06;
        value = "api/v2.1/cashback/v3/transfer/sbp"
    .end annotation
.end method

.method public abstract f(J)Lmz7;
    .param p1    # J
        .annotation runtime Llv6;
            value = "cardId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lmz7<",
            "Lbz8;",
            ">;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "api/v2.1/cashback/v3/transfer/card/info"
    .end annotation
.end method
