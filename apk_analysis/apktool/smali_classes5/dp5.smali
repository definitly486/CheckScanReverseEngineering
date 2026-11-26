.class public interface abstract Ldp5;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a(I)Lqp1;
    .param p1    # I
        .annotation runtime Lk46;
            value = "id"
        .end annotation
    .end param
    .annotation runtime La16;
        value = "api/v2.1/notice/{id}"
    .end annotation

    .annotation runtime Lkv3;
        value = {
            "Accept: application/json",
            "Content-type: application/json;charset=UTF-8"
        }
    .end annotation
.end method

.method public abstract b(II)Lmz7;
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
            "(II)",
            "Lmz7<",
            "Lj26<",
            "Lto5;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "api/v2.1/notice/notices"
    .end annotation

    .annotation runtime Lkv3;
        value = {
            "Accept: application/json",
            "Content-type: application/json;charset=UTF-8"
        }
    .end annotation
.end method

.method public abstract c()Lmz7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmz7<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "api/v2.1/notice/countUnread"
    .end annotation
.end method
