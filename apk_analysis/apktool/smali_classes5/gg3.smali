.class public abstract Lgg3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldt6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ldt6<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "rx2.buffer-size"

    const/16 v1, 0x80

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lgg3;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lwb8;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwb8<",
            "-TT;>;)V"
        }
    .end annotation

    instance-of v0, p1, Lrh3;

    if-eqz v0, :cond_0

    check-cast p1, Lrh3;

    invoke-virtual {p0, p1}, Lgg3;->f(Lrh3;)V

    return-void

    :cond_0
    const-string v0, "s is null"

    invoke-static {p1, v0}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lt98;

    invoke-direct {v0, p1}, Lt98;-><init>(Lwb8;)V

    invoke-virtual {p0, v0}, Lgg3;->f(Lrh3;)V

    return-void
.end method

.method public final b(Lxl3;)Lug3;
    .locals 2

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "maxConcurrency"

    const v1, 0x7fffffff

    invoke-static {v1, v0}, Lnq5;->b(ILjava/lang/String;)V

    new-instance v0, Lug3;

    invoke-direct {v0, p0, p1}, Lug3;-><init>(Lgg3;Lxl3;)V

    return-object v0
.end method

.method public final c(Lhe7;)Leh3;
    .locals 2

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bufferSize"

    sget v1, Lgg3;->b:I

    invoke-static {v1, v0}, Lnq5;->b(ILjava/lang/String;)V

    new-instance v0, Leh3;

    invoke-direct {v0, p0, p1, v1}, Leh3;-><init>(Lgg3;Lhe7;I)V

    return-object v0
.end method

.method public final d()Lkh3;
    .locals 4

    const-string v0, "bufferSize"

    sget v1, Lgg3;->b:I

    invoke-static {v1, v0}, Lnq5;->b(ILjava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v2, Lkh3$a;

    invoke-direct {v2, v0, v1}, Lkh3$a;-><init>(Ljava/util/concurrent/atomic/AtomicReference;I)V

    new-instance v3, Lkh3;

    invoke-direct {v3, v2, p0, v0, v1}, Lkh3;-><init>(Lkh3$a;Lgg3;Ljava/util/concurrent/atomic/AtomicReference;I)V

    return-object v3
.end method

.method public final e(Lqx1;Lqx1;Lh6;Lqx1;)Lcp2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqx1<",
            "-TT;>;",
            "Lqx1<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lh6;",
            "Lqx1<",
            "-",
            "Lbc8;",
            ">;)",
            "Lcp2;"
        }
    .end annotation

    const-string v0, "onNext is null"

    invoke-static {p1, v0}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onError is null"

    invoke-static {p2, v0}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onComplete is null"

    invoke-static {p3, v0}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSubscribe is null"

    invoke-static {p4, v0}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lih4;

    invoke-direct {v0, p1, p2, p3, p4}, Lih4;-><init>(Lqx1;Lqx1;Lh6;Lqx1;)V

    invoke-virtual {p0, v0}, Lgg3;->f(Lrh3;)V

    return-object v0
.end method

.method public final f(Lrh3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrh3<",
            "-TT;>;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lgg3;->g(Lwb8;)V
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

.method public abstract g(Lwb8;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwb8<",
            "-TT;>;)V"
        }
    .end annotation
.end method

.method public final h(Lhe7;)Lqh3;
    .locals 2

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lkg3;

    xor-int/lit8 v0, v0, 0x1

    new-instance v1, Lqh3;

    invoke-direct {v1, p0, p1, v0}, Lqh3;-><init>(Lgg3;Lhe7;Z)V

    return-object v1
.end method
