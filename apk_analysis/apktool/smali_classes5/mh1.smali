.class public interface abstract Lmh1;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a()Lmz7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmz7<",
            "Loc0;",
            ">;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "api/v2.1/banners"
    .end annotation
.end method

.method public abstract b(I)Lmz7;
    .param p1    # I
        .annotation runtime Lk46;
            value = "recId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmz7<",
            "Ljava/util/List<",
            "Lbf1;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "api/v2.1/receipts/{recId}/info"
    .end annotation
.end method

.method public abstract c(I)Lmz7;
    .param p1    # I
        .annotation runtime Lk46;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmz7<",
            "La57<",
            "Lb57;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "api/v2.1/banners/{id}/ignore"
    .end annotation
.end method

.method public abstract d(ILjava/lang/String;)Lmz7;
    .param p1    # I
        .annotation runtime Llv6;
            value = "page"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Llv6;
            value = "query"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lmz7<",
            "Lj26<",
            "Lvh6;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "api/v2.1/receipts/items/search"
    .end annotation
.end method

.method public abstract e(Lx33;)Lqp1;
    .param p1    # Lx33;
        .annotation runtime Llk0;
        .end annotation
    .end param
    .annotation runtime Lz06;
        value = "api/v2.1/receipts/unload"
    .end annotation
.end method

.method public abstract f(Ljava/lang/String;)Lmz7;
    .param p1    # Ljava/lang/String;
        .annotation runtime Llv6;
            value = "locale"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lmz7<",
            "Ln71;",
            ">;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "api/v2.1/products/categories"
    .end annotation
.end method

.method public abstract g(Lze1;)Lmz7;
    .param p1    # Lze1;
        .annotation runtime Llk0;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lze1;",
            ")",
            "Lmz7<",
            "La57<",
            "Lb57;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lz06;
        value = "api/v2.1/forms/personalData"
    .end annotation
.end method

.method public abstract h(Ljava/lang/String;II)Lmz7;
    .param p1    # Ljava/lang/String;
        .annotation runtime Llv6;
            value = "query"
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
            "Ljava/lang/String;",
            "II)",
            "Lmz7<",
            "Lei1;",
            ">;"
        }
    .end annotation

    .annotation runtime Lz06;
        value = "api/v2.1/receipts/search"
    .end annotation
.end method

.method public abstract i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;IILjava/lang/String;Le02;)Ljava/lang/Object;
    .param p1    # I
        .annotation runtime Llv6;
            value = "areaId"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Llv6;
            value = "dateFrom"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Llv6;
            value = "dateTo"
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation runtime Llv6;
            value = "maxTotalSum"
        .end annotation
    .end param
    .param p5    # Ljava/lang/Integer;
        .annotation runtime Llv6;
            value = "minTotalSum"
        .end annotation
    .end param
    .param p6    # I
        .annotation runtime Llv6;
            value = "page"
        .end annotation
    .end param
    .param p7    # I
        .annotation runtime Llv6;
            value = "size"
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Llv6;
            value = "sort"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "II",
            "Ljava/lang/String;",
            "Le02<",
            "-",
            "Lei1;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "api/v2.1/receipts/v2"
    .end annotation
.end method

.method public abstract j(Le02;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-",
            "Ljava/util/List<",
            "Lke1;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "v1/blocks/banners/RECEIPTS"
    .end annotation
.end method

.method public abstract k(I)Lmz7;
    .param p1    # I
        .annotation runtime Lk46;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmz7<",
            "Ljh1;",
            ">;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "api/v2.1/receipts/v2/{id}"
    .end annotation

    .annotation runtime Lkv3;
        value = {
            "Accept: application/json"
        }
    .end annotation
.end method

.method public abstract l(II)Lmz7;
    .param p1    # I
        .annotation runtime Lk46;
            value = "recId"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lk46;
            value = "areaId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lmz7<",
            "Lw42;",
            ">;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "api/v2.1/receipts/{recId}/bonuses/areas/{areaId}/cards"
    .end annotation
.end method

.method public abstract m(I)Lmz7;
    .param p1    # I
        .annotation runtime Lk46;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmz7<",
            "Ljava/util/List<",
            "Lld1;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "api/v2.1/receipts/{id}/banners/alert"
    .end annotation
.end method

.method public abstract n(I)Lmz7;
    .param p1    # I
        .annotation runtime Llv6;
            value = "number"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmz7<",
            "La57<",
            "Lb57;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lkv3;
        value = {
            "Accept: application/json"
        }
    .end annotation

    .annotation runtime Lo72;
        value = "api/v2.1/receipts"
    .end annotation
.end method

.method public abstract o()Lmz7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmz7<",
            "Lhc;",
            ">;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "api/v2.1/receipts/scan/bnr"
    .end annotation
.end method

.method public abstract p(J)Lmz7;
    .param p1    # J
        .annotation runtime Lk46;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lmz7<",
            "La57<",
            "Lb57;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lz06;
        value = "api/v2.1/products/{id}/report"
    .end annotation
.end method
