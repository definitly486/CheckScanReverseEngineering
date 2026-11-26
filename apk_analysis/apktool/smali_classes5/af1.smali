.class public interface abstract Laf1;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a(Ljava/lang/String;)Lqp1;
    .param p1    # Ljava/lang/String;
        .annotation runtime Llv6;
            value = "qrCode"
        .end annotation
    .end param
    .annotation runtime Lkv3;
        value = {
            "Accept: application/json",
            "Content-type: application/json;charset=UTF-8"
        }
    .end annotation

    .annotation runtime Lo72;
        value = "api/v2.1/queue/receipt/"
    .end annotation
.end method

.method public abstract b()Lmz7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmz7<",
            "Ljava/util/List<",
            "Lsd1;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "api/v2.1/queue/v3/receipts"
    .end annotation

    .annotation runtime Lkv3;
        value = {
            "Accept: application/json",
            "Content-type: application/json;charset=UTF-8"
        }
    .end annotation
.end method
