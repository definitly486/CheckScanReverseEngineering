.class public interface abstract Ltu6;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a(Lhv6;Z)Lmz7;
    .param p1    # Lhv6;
        .annotation runtime Llk0;
        .end annotation
    .end param
    .param p2    # Z
        .annotation runtime Llv6;
            value = "getOnly"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhv6;",
            "Z)",
            "Lmz7<",
            "La57<",
            "Lkd4;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lkv3;
        value = {
            "Content-Type: application/json"
        }
    .end annotation

    .annotation runtime Lz06;
        value = "api/v2.1/qr/v3/ofd/urls"
    .end annotation
.end method

.method public abstract b(Lws5;Z)Lmz7;
    .param p1    # Lws5;
        .annotation runtime Llk0;
        .end annotation
    .end param
    .param p2    # Z
        .annotation runtime Llv6;
            value = "rep"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lws5;",
            "Z)",
            "Lmz7<",
            "La57<",
            "Lkd4;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lkv3;
        value = {
            "Content-Type: application/json"
        }
    .end annotation

    .annotation runtime Lz06;
        value = "api/v2.1/qr/v3/ofd/results"
    .end annotation
.end method

.method public abstract c(Lhv6;)Lmz7;
    .param p1    # Lhv6;
        .annotation runtime Llk0;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhv6;",
            ")",
            "Lmz7<",
            "La57<",
            "Liv6;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lkv3;
        value = {
            "Content-Type: application/json"
        }
    .end annotation

    .annotation runtime Lz06;
        value = "api/v2.1/qr"
    .end annotation
.end method
