.class public interface abstract Lqt0;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a(IILe02;)Ljava/lang/Object;
    .param p1    # I
        .annotation runtime Llv6;
            value = "page"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Llv6;
            value = "size"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Le02<",
            "-",
            "Lj26<",
            "Lqj6;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "v1/cashback/products/main"
    .end annotation
.end method

.method public abstract b(ILe02;)Ljava/lang/Object;
    .param p1    # I
        .annotation runtime Lk46;
            value = "merchantId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Le02<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lfn7;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "v1/cashback/selections/merchants/{merchantId}"
    .end annotation
.end method

.method public abstract c(Le02;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-",
            "Ljava/util/List<",
            "Lwi6;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "v1/cashback/categories/selections"
    .end annotation
.end method

.method public abstract d(IILe02;)Ljava/lang/Object;
    .param p1    # I
        .annotation runtime Llv6;
            value = "page"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Llv6;
            value = "size"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Le02<",
            "-",
            "Lj26<",
            "Lik6;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "v1/cashback/selections/main"
    .end annotation
.end method

.method public abstract e(IIILe02;)Ljava/lang/Object;
    .param p1    # I
        .annotation runtime Llv6;
            value = "categoryId"
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
            "(III",
            "Le02<",
            "-",
            "Lj26<",
            "Lik6;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "v1/cashback/selections"
    .end annotation
.end method

.method public abstract f(IIILe02;)Ljava/lang/Object;
    .param p1    # I
        .annotation runtime Llv6;
            value = "categoryId"
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
            "(III",
            "Le02<",
            "-",
            "Lj26<",
            "Lqj6;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "v1/cashback/products"
    .end annotation
.end method

.method public abstract g(ILe02;)Ljava/lang/Object;
    .param p1    # I
        .annotation runtime Lk46;
            value = "selectionId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Le02<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lfn7;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "v1/cashback/selections/{selectionId}"
    .end annotation
.end method

.method public abstract h(ILe02;)Ljava/lang/Object;
    .param p1    # I
        .annotation runtime Lk46;
            value = "offerId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Le02<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lzh6;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "v1/cashback/offers/{offerId}"
    .end annotation
.end method

.method public abstract i(Le02;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-",
            "Ljava/util/List<",
            "Lwi6;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "v1/cashback/categories/products"
    .end annotation
.end method
