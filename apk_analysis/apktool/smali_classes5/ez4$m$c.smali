.class public final Lez4$m$c;
.super Lrl1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lez4$m;->f(Lra5;Lio/grpc/b;)Lrl1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrl1<",
        "TReqT;TRespT;>;"
    }
.end annotation


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReqT;)V"
        }
    .end annotation

    return-void
.end method

.method public final e(Lrl1$a;Lla5;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrl1$a<",
            "TRespT;>;",
            "Lla5;",
            ")V"
        }
    .end annotation

    sget-object p0, Lez4;->d0:Lh88;

    new-instance p2, Lla5;

    invoke-direct {p2}, Lla5;-><init>()V

    invoke-virtual {p1, p0, p2}, Lrl1$a;->a(Lh88;Lla5;)V

    return-void
.end method
