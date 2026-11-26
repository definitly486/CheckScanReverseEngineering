.class public interface abstract Lv66;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a(Lx79;Le02;)Ljava/lang/Object;
    .param p1    # Lx79;
        .annotation runtime Llk0;
        .end annotation
    .end param
    .annotation runtime La16;
        value = "api/v2.1/users/profile/city"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx79;",
            "Le02<",
            "-",
            "La57<",
            "Lb57;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lkv3;
        value = {
            "Accept: application/json"
        }
    .end annotation
.end method

.method public abstract b(Lxk6;Le02;)Ljava/lang/Object;
    .param p1    # Lxk6;
        .annotation runtime Llk0;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxk6;",
            "Le02<",
            "-",
            "Lzk6;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lz06;
        value = "api/v2.1/forms/profile"
    .end annotation
.end method

.method public abstract c(ZLe02;)Ljava/lang/Object;
    .param p1    # Z
        .annotation runtime Llv6;
            value = "afterOnboarding"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Le02<",
            "-",
            "Lyk6;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "api/v2.1/forms/profile"
    .end annotation
.end method
