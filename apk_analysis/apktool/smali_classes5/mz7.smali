.class public abstract Lmz7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc18;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc18<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e(Ljava/lang/Object;)Lo08;
    .locals 1

    const-string v0, "item is null"

    invoke-static {p0, v0}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lo08;

    invoke-direct {v0, p0}, Lo08;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static j(Lmz7;Lmz7;Lli0;)Lmz7;
    .locals 2

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lrm3$a;

    invoke-direct {v0, p2}, Lrm3$a;-><init>(Lli0;)V

    const/4 p2, 0x2

    new-array p2, p2, [Lc18;

    const/4 v1, 0x0

    aput-object p0, p2, v1

    const/4 p0, 0x1

    aput-object p1, p2, p0

    new-instance p0, Lj18;

    invoke-direct {p0, p2, v0}, Lj18;-><init>([Lc18;Lxl3;)V

    return-object p0
.end method


# virtual methods
.method public final d(Lt08;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt08<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "observer is null"

    invoke-static {p1, v0}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, p1}, Lmz7;->h(Lt08;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lm13;->d(Ljava/lang/Throwable;)V

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "subscribeActual failed"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p1

    :catch_0
    move-exception p0

    throw p0
.end method

.method public final f(Lhe7;)Lr08;
    .locals 1

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lr08;

    invoke-direct {v0, p0, p1}, Lr08;-><init>(Lmz7;Lhe7;)V

    return-object v0
.end method

.method public final g(Lqx1;Lqx1;)Lrx1;
    .locals 1

    const-string v0, "onSuccess is null"

    invoke-static {p1, v0}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onError is null"

    invoke-static {p2, v0}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lrx1;

    invoke-direct {v0, p1, p2}, Lrx1;-><init>(Lqx1;Lqx1;)V

    invoke-virtual {p0, v0}, Lmz7;->d(Lt08;)V

    return-object v0
.end method

.method public abstract h(Lt08;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt08<",
            "-TT;>;)V"
        }
    .end annotation
.end method

.method public final i(Lhe7;)Le18;
    .locals 1

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le18;

    invoke-direct {v0, p0, p1}, Le18;-><init>(Lmz7;Lhe7;)V

    return-object v0
.end method
