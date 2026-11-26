.class public abstract Ltq5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwr5;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lwr5<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Lwr5;Ltq5;Lli0;)Ltq5;
    .locals 3

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lrm3$a;

    invoke-direct {v0, p2}, Lrm3$a;-><init>(Lli0;)V

    sget p2, Lgg3;->b:I

    const/4 v1, 0x2

    new-array v1, v1, [Lwr5;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {v1, v0, p2}, Ltq5;->c([Lwr5;Lxl3;I)Ltq5;

    move-result-object p0

    return-object p0
.end method

.method public static c([Lwr5;Lxl3;I)Ltq5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">([",
            "Lwr5<",
            "+TT;>;",
            "Lxl3<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;I)",
            "Ltq5<",
            "TR;>;"
        }
    .end annotation

    array-length v0, p0

    if-nez v0, :cond_0

    sget-object p0, Ldr5;->b:Ldr5;

    return-object p0

    :cond_0
    const-string v0, "bufferSize"

    invoke-static {p2, v0}, Lnq5;->b(ILjava/lang/String;)V

    shl-int/lit8 p2, p2, 0x1

    new-instance v0, Lwq5;

    invoke-direct {v0, p0, p1, p2}, Lwq5;-><init>([Lwr5;Lxl3;I)V

    return-object v0
.end method


# virtual methods
.method public final a(Lls5;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lls5<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "observer is null"

    invoke-static {p1, v0}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, p1}, Ltq5;->f(Lls5;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lm13;->d(Ljava/lang/Throwable;)V

    invoke-static {p0}, Ld97;->b(Ljava/lang/Throwable;)V

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Actually not, but can\'t throw other exceptions due to RS"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p1

    :catch_0
    move-exception p0

    throw p0
.end method

.method public final d(Lxl3;)Ltq5;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lxl3<",
            "-TT;+",
            "Lwr5<",
            "+TR;>;>;)",
            "Ltq5<",
            "TR;>;"
        }
    .end annotation

    sget v0, Lgg3;->b:I

    const-string v1, "maxConcurrency"

    const v2, 0x7fffffff

    invoke-static {v2, v1}, Lnq5;->b(ILjava/lang/String;)V

    const-string v1, "bufferSize"

    invoke-static {v0, v1}, Lnq5;->b(ILjava/lang/String;)V

    instance-of v1, p0, Lkd7;

    if-eqz v1, :cond_1

    check-cast p0, Lkd7;

    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Ldr5;->b:Ldr5;

    return-object p0

    :cond_0
    new-instance v0, Ltr5$b;

    invoke-direct {v0, p0, p1}, Ltr5$b;-><init>(Ljava/lang/Object;Lxl3;)V

    return-object v0

    :cond_1
    new-instance v1, Lfr5;

    invoke-direct {v1, p0, p1, v0}, Lfr5;-><init>(Ltq5;Lxl3;I)V

    return-object v1
.end method

.method public final e(Lhe7;)Lqr5;
    .locals 2

    sget v0, Lgg3;->b:I

    const-string v1, "bufferSize"

    invoke-static {v0, v1}, Lnq5;->b(ILjava/lang/String;)V

    new-instance v1, Lqr5;

    invoke-direct {v1, p0, p1, v0}, Lqr5;-><init>(Ltq5;Lhe7;I)V

    return-object v1
.end method

.method public abstract f(Lls5;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lls5<",
            "-TT;>;)V"
        }
    .end annotation
.end method

.method public final g(Lhe7;)Lxr5;
    .locals 1

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lxr5;

    invoke-direct {v0, p0, p1}, Lxr5;-><init>(Ltq5;Lhe7;)V

    return-object v0
.end method

.method public final h(Ln00;)Lgg3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln00;",
            ")",
            "Lgg3<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lah3;

    invoke-direct {v0, p0}, Lah3;-><init>(Ltq5;)V

    sget-object p0, Ltq5$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_3

    const/4 p1, 0x2

    if-eq p0, p1, :cond_2

    const/4 p1, 0x3

    if-eq p0, p1, :cond_1

    const/4 p1, 0x4

    if-eq p0, p1, :cond_0

    sget p0, Lgg3;->b:I

    const-string p1, "capacity"

    invoke-static {p0, p1}, Lnq5;->b(ILjava/lang/String;)V

    new-instance p1, Lfh3;

    invoke-direct {p1, v0, p0}, Lfh3;-><init>(Lah3;I)V

    return-object p1

    :cond_0
    new-instance p0, Lhh3;

    invoke-direct {p0, v0}, Lk0;-><init>(Lgg3;)V

    return-object p0

    :cond_1
    return-object v0

    :cond_2
    new-instance p0, Lih3;

    invoke-direct {p0, v0}, Lk0;-><init>(Lgg3;)V

    return-object p0

    :cond_3
    new-instance p0, Lgh3;

    invoke-direct {p0, v0}, Lgh3;-><init>(Lah3;)V

    return-object p0
.end method
