.class public interface abstract Liz5;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a()Lmz7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmz7<",
            "Ljava/util/List<",
            "Lpy5;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "api/v2.1/operations/categories"
    .end annotation

    .annotation runtime Lkv3;
        value = {
            "Accept: application/json",
            "Content-type: application/json;charset=UTF-8"
        }
    .end annotation
.end method

.method public abstract b(I)Lmz7;
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
            "Lfz5;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "api/v2.1/receipts/{id}/operations"
    .end annotation
.end method

.method public abstract c(IIILjava/lang/Long;)Lmz7;
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
    .param p4    # Ljava/lang/Long;
        .annotation runtime Llv6;
            value = "cardId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/Long;",
            ")",
            "Lmz7<",
            "Lj26<",
            "Lfz5;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "api/v2.1/operations"
    .end annotation

    .annotation runtime Lkv3;
        value = {
            "Accept: application/json",
            "Content-type: application/json;charset=UTF-8"
        }
    .end annotation
.end method
