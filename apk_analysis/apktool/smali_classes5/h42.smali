.class public interface abstract Lh42;
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
            "Lvl2;",
            ">;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "v1/blocks/promocodes/{elementId}/description"
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
            value = "elementId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lmz7<",
            "Ln32;",
            ">;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "v1/blocks/promocodes/{elementId}/info"
    .end annotation

    .annotation runtime Lkv3;
        value = {
            "Accept: application/json",
            "Content-type: application/json;charset=UTF-8"
        }
    .end annotation
.end method

.method public abstract c(J)Lmz7;
    .param p1    # J
        .annotation runtime Lk46;
            value = "elementId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lmz7<",
            "Ln32;",
            ">;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "v1/blocks/promocodes/{elementId}/requestInfo"
    .end annotation

    .annotation runtime Lkv3;
        value = {
            "Accept: application/json",
            "Content-type: application/json;charset=UTF-8"
        }
    .end annotation
.end method

.method public abstract d(J)Lmz7;
    .param p1    # J
        .annotation runtime Lk46;
            value = "elementId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lmz7<",
            "Lb42;",
            ">;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "v1/blocks/promocodes/{elementId}/steps"
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

.method public abstract f(Lh63;)Lqp1;
    .param p1    # Lh63;
        .annotation runtime Llk0;
        .end annotation
    .end param
    .annotation runtime La16;
        value = "v1/blocks/promocodes/favorite"
    .end annotation

    .annotation runtime Lkv3;
        value = {
            "Accept: application/json",
            "Content-type: application/json;charset=UTF-8"
        }
    .end annotation
.end method
