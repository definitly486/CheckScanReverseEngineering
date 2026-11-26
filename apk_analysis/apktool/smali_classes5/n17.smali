.class public interface abstract Ln17;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a()Lmz7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmz7<",
            "Ll17;",
            ">;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "api/v2.1/area/suggest"
    .end annotation
.end method

.method public abstract b(Lm17;IILjava/lang/String;)Lmz7;
    .param p1    # Lm17;
        .annotation runtime Llk0;
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Llv6;
            value = "limit"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Llv6;
            value = "skip"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Llv6;
            value = "locale"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm17;",
            "II",
            "Ljava/lang/String;",
            ")",
            "Lmz7<",
            "Ljava/util/List<",
            "Ll17;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lkv3;
        value = {
            "Accept: application/json",
            "Content-type: application/json;charset=UTF-8"
        }
    .end annotation

    .annotation runtime Lz06;
        value = "api/v2.1/area"
    .end annotation
.end method
