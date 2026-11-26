.class public interface abstract Ltt5;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a(Ljava/lang/String;Le02;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lk46;
            value = "partnerId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Le02<",
            "-",
            "Lrj4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "api/v2.1/brandLink/{partnerId}/landing"
    .end annotation
.end method

.method public abstract b(Ljava/lang/String;Le02;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lk46;
            value = "partnerId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Le02<",
            "-",
            "Ldu5;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "api/v2.1/brandLink/{partnerId}/link"
    .end annotation
.end method
