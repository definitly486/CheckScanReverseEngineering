.class public abstract Lyi3;
.super Ld46;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyi3$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Ld46<",
        "TReqT;TRespT;>;"
    }
.end annotation


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReqT;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ld46;->f()Lrl1;

    move-result-object p0

    invoke-virtual {p0, p1}, Lrl1;->d(Ljava/lang/Object;)V

    return-void
.end method
