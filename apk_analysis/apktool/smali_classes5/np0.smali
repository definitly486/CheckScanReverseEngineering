.class public interface abstract Lnp0;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract b(Lfc0;ILjava/lang/Integer;)Lmz7;
    .param p1    # Lfc0;
        .annotation runtime Lk46;
            value = "bannerKind"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Llv6;
            value = "areaId"
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation runtime Llv6;
            value = "categoryId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfc0;",
            "I",
            "Ljava/lang/Integer;",
            ")",
            "Lmz7<",
            "La57<",
            "Ljava/util/List<",
            "Ljc0;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "v1/blocks/banners/{bannerKind}"
    .end annotation

    .annotation runtime Lul2;
    .end annotation
.end method

.method public abstract c(Lfc0;ILjava/lang/Integer;Le02;)Ljava/lang/Object;
    .param p1    # Lfc0;
        .annotation runtime Lk46;
            value = "bannerKind"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Llv6;
            value = "areaId"
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation runtime Llv6;
            value = "categoryId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfc0;",
            "I",
            "Ljava/lang/Integer;",
            "Le02<",
            "-",
            "La57<",
            "Ljava/util/List<",
            "Ljc0;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "v1/blocks/banners/{bannerKind}"
    .end annotation
.end method

.method public abstract d(Ljava/lang/Integer;Ljava/lang/String;II)Lmz7;
    .param p1    # Ljava/lang/Integer;
        .annotation runtime Llv6;
            value = "areaId"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Llv6;
            value = "query"
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
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "II)",
            "Lmz7<",
            "Lj26<",
            "Liq6;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "v1/blocks/promocodes/search"
    .end annotation
.end method

.method public abstract e(Ljava/lang/Integer;Ljava/lang/Integer;II)Lmz7;
    .param p1    # Ljava/lang/Integer;
        .annotation runtime Llv6;
            value = "areaId"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Llv6;
            value = "categoryId"
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
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "II)",
            "Lmz7<",
            "Lj26<",
            "Liq6;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "v1/blocks/promocodes"
    .end annotation
.end method

.method public abstract f(Ld63;Le02;)Ljava/lang/Object;
    .param p1    # Ld63;
        .annotation runtime Llk0;
        .end annotation
    .end param
    .annotation runtime La16;
        value = "v1/blocks/onlineShops/favorite"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld63;",
            "Le02<",
            "-",
            "La57<",
            "Lj59;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract g(III)Lmz7;
    .param p1    # I
        .annotation runtime Llv6;
            value = "areaId"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Llv6;
            value = "page"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Llv6;
            value = "size"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lmz7<",
            "Lj26<",
            "Lo81;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "v1/blocks/categories/experiment"
    .end annotation
.end method

.method public abstract h(Ljava/lang/Integer;II)Lmz7;
    .param p1    # Ljava/lang/Integer;
        .annotation runtime Llv6;
            value = "areaId"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Llv6;
            value = "page"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Llv6;
            value = "size"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "II)",
            "Lmz7<",
            "Lj26<",
            "Liq6;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "v1/blocks/promocodes/history"
    .end annotation
.end method

.method public abstract i(Ljava/lang/Integer;II)Lmz7;
    .param p1    # Ljava/lang/Integer;
        .annotation runtime Llv6;
            value = "areaId"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Llv6;
            value = "page"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Llv6;
            value = "size"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "II)",
            "Lmz7<",
            "Lj26<",
            "Lsx5;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "v1/blocks/onlineShops/favorite"
    .end annotation
.end method

.method public abstract j(Ld63;)Lqp1;
    .param p1    # Ld63;
        .annotation runtime Llk0;
        .end annotation
    .end param
    .annotation runtime La16;
        value = "v1/blocks/onlineShops/favorite"
    .end annotation
.end method

.method public abstract k(Ljava/lang/Integer;Ljava/lang/Integer;III)Lmz7;
    .param p1    # Ljava/lang/Integer;
        .annotation runtime Llv6;
            value = "selectionId"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Llv6;
            value = "categoryId"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Llv6;
            value = "areaId"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Llv6;
            value = "page"
        .end annotation
    .end param
    .param p5    # I
        .annotation runtime Llv6;
            value = "size"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "III)",
            "Lmz7<",
            "Lj26<",
            "Lsx5;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "v1/blocks/onlineShops"
    .end annotation
.end method

.method public abstract l(Ljava/lang/Integer;Ljava/lang/String;II)Lmz7;
    .param p1    # Ljava/lang/Integer;
        .annotation runtime Llv6;
            value = "areaId"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Llv6;
            value = "query"
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
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "II)",
            "Lmz7<",
            "Lj26<",
            "Lsx5;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "v1/blocks/onlineShops/search"
    .end annotation
.end method

.method public abstract m(IILe02;)Ljava/lang/Object;
    .param p1    # I
        .annotation runtime Llv6;
            value = "areaId"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Llv6;
            value = "page"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Le02<",
            "-",
            "Lj26<",
            "Lsx5;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "v1/blocks/onlineShops/favorite?&size=10"
    .end annotation
.end method

.method public abstract n(Ljava/lang/Integer;II)Lmz7;
    .param p1    # Ljava/lang/Integer;
        .annotation runtime Llv6;
            value = "areaId"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Llv6;
            value = "page"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Llv6;
            value = "size"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "II)",
            "Lmz7<",
            "Lj26<",
            "Lsx5;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "v1/blocks/onlineShops/history"
    .end annotation
.end method

.method public abstract o(Ld63;)Lqp1;
    .param p1    # Ld63;
        .annotation runtime Llk0;
        .end annotation
    .end param
    .annotation runtime La16;
        value = "v1/blocks/promocodes/favorite"
    .end annotation
.end method

.method public abstract p(Ljava/lang/Integer;II)Lmz7;
    .param p1    # Ljava/lang/Integer;
        .annotation runtime Llv6;
            value = "areaId"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Llv6;
            value = "page"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Llv6;
            value = "size"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "II)",
            "Lmz7<",
            "Lj26<",
            "Liq6;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "v1/blocks/promocodes/favorite"
    .end annotation
.end method
