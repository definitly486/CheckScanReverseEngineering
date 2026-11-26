.class public interface abstract Lm9;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a(J)Lmz7;
    .param p1    # J
        .annotation runtime Lk46;
            value = "elementId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lmz7<",
            "Lfy5;",
            ">;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "v1/blocks/onlineShops/{elementId}/steps"
    .end annotation

    .annotation runtime Lkv3;
        value = {
            "Accept: application/json",
            "Content-type: application/json;charset=UTF-8"
        }
    .end annotation
.end method

.method public abstract b(J)Lmz7;
    .param p1    # J
        .annotation runtime Lk46;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lmz7<",
            "Lpx5;",
            ">;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "v1/blocks/onlineShops/{id}/cardButton"
    .end annotation

    .annotation runtime Lkv3;
        value = {
            "Accept: application/json",
            "Content-type: application/json;charset=UTF-8"
        }
    .end annotation
.end method

.method public abstract e(JII)Lmz7;
    .param p1    # J
        .annotation runtime Lk46;
            value = "elementId"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Llv6;
            value = "page"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Llv6;
            value = "size"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII)",
            "Lmz7<",
            "Lcx3;",
            ">;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "v1/blocks/onlineShops/{elementId}/hot"
    .end annotation

    .annotation runtime Lkv3;
        value = {
            "Accept: application/json",
            "Content-type: application/json;charset=UTF-8"
        }
    .end annotation
.end method

.method public abstract f(J)Lmz7;
    .param p1    # J
        .annotation runtime Lk46;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lmz7<",
            "Lvl2;",
            ">;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "v1/blocks/onlineShops/{id}/description"
    .end annotation

    .annotation runtime Lkv3;
        value = {
            "Accept: application/json",
            "Content-type: application/json;charset=UTF-8"
        }
    .end annotation
.end method

.method public abstract g(J)Lmz7;
    .param p1    # J
        .annotation runtime Lk46;
            value = "elementId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lmz7<",
            "Ljava/util/List<",
            "Lrr6;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "v1/blocks/onlineShops/{elementId}/promocodes"
    .end annotation

    .annotation runtime Lkv3;
        value = {
            "Accept: application/json",
            "Content-type: application/json;charset=UTF-8"
        }
    .end annotation
.end method

.method public abstract h(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;)Lmz7;
    .param p1    # Ljava/lang/String;
        .annotation runtime Llv6;
            value = "link"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Llv6;
            value = "linkCheckerId"
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation runtime Llv6;
            value = "onlineShopId"
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation runtime Llv6;
            value = "areaId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")",
            "Lmz7<",
            "La57<",
            "Lah6;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "v1/blocks/cashback/checkLink"
    .end annotation
.end method

.method public abstract i(Li63;)Lqp1;
    .param p1    # Li63;
        .annotation runtime Llk0;
        .end annotation
    .end param
    .annotation runtime La16;
        value = "v1/blocks/onlineShops/favorite"
    .end annotation

    .annotation runtime Lkv3;
        value = {
            "Accept: application/json",
            "Content-type: application/json;charset=UTF-8"
        }
    .end annotation
.end method

.method public abstract j(J)Lmz7;
    .param p1    # J
        .annotation runtime Lk46;
            value = "elementId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lmz7<",
            "Lrx5;",
            ">;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "v1/blocks/onlineShops/{elementId}/info"
    .end annotation

    .annotation runtime Lkv3;
        value = {
            "Accept: application/json",
            "Content-type: application/json;charset=UTF-8"
        }
    .end annotation
.end method

.method public abstract k(J)Lmz7;
    .param p1    # J
        .annotation runtime Lk46;
            value = "elementId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lmz7<",
            "Ljava/util/List<",
            "Lkx5;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "v1/blocks/onlineShops/{elementId}/blocks"
    .end annotation

    .annotation runtime Lkv3;
        value = {
            "Accept: application/json",
            "Content-type: application/json;charset=UTF-8"
        }
    .end annotation
.end method
