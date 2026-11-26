.class public final Leo5;
.super Lb0;
.source "SourceFile"

# interfaces
.implements Lmb4;


# static fields
.field public static final c:Leo5;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Leo5;

    sget-object v1, Lmb4$a;->b:Lmb4$a;

    invoke-direct {v0, v1}, Lb0;-><init>(Lo22$b;)V

    sput-object v0, Leo5;->c:Leo5;

    return-void
.end method


# virtual methods
.method public final V(Lsb4;)Lgi1;
    .locals 0
    .annotation runtime Lul2;
    .end annotation

    sget-object p0, Lgo5;->b:Lgo5;

    return-object p0
.end method

.method public final a(ZZLpb4;)Lhp2;
    .locals 0
    .annotation runtime Lul2;
    .end annotation

    sget-object p0, Lgo5;->b:Lgo5;

    return-object p0
.end method

.method public final cancel(Ljava/util/concurrent/CancellationException;)V
    .locals 0
    .annotation runtime Lul2;
    .end annotation

    return-void
.end method

.method public final e0(Le02;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lul2;
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This job is always active"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final g(Lnl3;)Lhp2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Ljava/lang/Throwable;",
            "Lj59;",
            ">;)",
            "Lhp2;"
        }
    .end annotation

    .annotation runtime Lul2;
    .end annotation

    sget-object p0, Lgo5;->b:Lgo5;

    return-object p0
.end method

.method public final isActive()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final isCancelled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final p()Lvl7;
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This job is always active"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final start()Z
    .locals 0
    .annotation runtime Lul2;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "NonCancellable"

    return-object p0
.end method

.method public final v()Lzo7;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lzo7<",
            "Lmb4;",
            ">;"
        }
    .end annotation

    sget-object p0, Lnx2;->a:Lnx2;

    return-object p0
.end method

.method public final y()Ljava/util/concurrent/CancellationException;
    .locals 1
    .annotation runtime Lul2;
    .end annotation

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This job is always active"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
