.class public final Lyads/sb5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ub5;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lyads/fs2;Lll3;)Lyads/fs2;
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Trying to use RuntimeStore before initializing."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final a()Lyads/ms2;
    .locals 1

    .line 11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Trying to use RuntimeStore before initializing."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final a(Lyads/fs2;)Lyads/ms2;
    .locals 0

    .line 12
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Trying to use RuntimeStore before initializing."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final a(Lyads/n32;Lyads/br0;Lyads/fs2;)Lyads/ms2;
    .locals 0

    .line 8
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final a(Lyads/n32;Lyads/br0;Lyads/fs2;Lyads/fs2;)Lyads/ms2;
    .locals 0

    .line 13
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Trying to use RuntimeStore before initializing."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final a(Lyads/ms2;Lyads/n32;Lnl3;)V
    .locals 0

    .line 9
    return-void
.end method

.method public final a(Lyads/vq0;)V
    .locals 0

    .line 10
    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final b(Lyads/vq0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final c()Ljava/util/Map;
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Trying to use RuntimeStore before initializing."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c(Lyads/vq0;)V
    .locals 0

    .line 8
    return-void
.end method
