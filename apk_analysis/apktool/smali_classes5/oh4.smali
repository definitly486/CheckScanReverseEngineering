.class public interface abstract Loh4;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a(Lnh4;I)Lmz7;
    .param p1    # Lnh4;
        .annotation runtime Llk0;
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lk46;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnh4;",
            "I)",
            "Lmz7<",
            "La57<",
            "Lli4;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lz06;
        value = "api/v2.1/forms/{id}"
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
            "Ljj4;",
            ">;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "api/v2.1/forms/{id}"
    .end annotation
.end method
