.class public interface abstract Ll78;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a(Ljava/lang/String;Lna3;)Lmz7;
    .param p1    # Ljava/lang/String;
        .annotation runtime Llv6;
            value = "locale"
        .end annotation
    .end param
    .param p2    # Lna3;
        .annotation runtime Llk0;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lna3;",
            ")",
            "Lmz7<",
            "Lf88;",
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
        value = "api/v2.1/expenses"
    .end annotation
.end method

.method public abstract b(Lna3;)Lmz7;
    .param p1    # Lna3;
        .annotation runtime Llk0;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lna3;",
            ")",
            "Lmz7<",
            "Ljava/lang/Long;",
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
        value = "api/v2.1/expenses/sum"
    .end annotation
.end method
