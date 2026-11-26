.class public interface abstract Lov2;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a()Lmz7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmz7<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "api/v2.1/v1/e_checks/receipts/processed"
    .end annotation
.end method

.method public abstract b(Lmf4;Ljava/lang/String;)Ltq5;
    .param p1    # Lmf4;
        .annotation runtime Llk0;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lbv3;
            value = "Authorization"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmf4;",
            "Ljava/lang/String;",
            ")",
            "Ltq5<",
            "Lhl3$a;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkv3;
        value = {
            "Content-Type: application/json",
            "Accept: application/json",
            "User-Agent: Mozilla/5.0 (Linux; Android 11; Pixel 5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.91 Mobile Safari/537.36"
        }
    .end annotation

    .annotation runtime Lz06;
        value = "https://mco.nalog.ru/api/v1/receipt/fiscal_data"
    .end annotation
.end method

.method public abstract c(Ljava/util/List;)Lmz7;
    .param p1    # Ljava/util/List;
        .annotation runtime Llk0;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lhl3;",
            ">;)",
            "Lmz7<",
            "La57<",
            "Lb57;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lz06;
        value = "api/v2.1/v1/e_checks/receipts"
    .end annotation
.end method

.method public abstract d(Lu99;)Lmz7;
    .param p1    # Lu99;
        .annotation runtime Llk0;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu99;",
            ")",
            "Lmz7<",
            "Ln37;",
            ">;"
        }
    .end annotation

    .annotation runtime Lz06;
        value = "api/v2.1/v1/e_checks/bind"
    .end annotation
.end method

.method public abstract e(Lyb7;Ljava/lang/String;)Lmz7;
    .param p1    # Lyb7;
        .annotation runtime Llk0;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lbv3;
            value = "Authorization"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyb7;",
            "Ljava/lang/String;",
            ")",
            "Lmz7<",
            "Lmr4;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkv3;
        value = {
            "Content-Type: application/json",
            "Accept: application/json",
            "User-Agent: Mozilla/5.0 (Linux; Android 11; Pixel 5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.91 Mobile Safari/537.36"
        }
    .end annotation

    .annotation runtime Lz06;
        value = "https://mco.nalog.ru/api/v1/receipt"
    .end annotation
.end method

.method public abstract getUrl()Lmz7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmz7<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "api/v2.1/v1/e_checks/goToUrl"
    .end annotation
.end method
