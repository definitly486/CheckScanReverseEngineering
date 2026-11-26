.class public final Lxg3$b;
.super Lxg3$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxg3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lxg3$c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final e:Lwb8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwb8<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lwb8;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwb8<",
            "-TT;>;[TT;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lxg3$c;-><init>([Ljava/lang/Object;)V

    iput-object p1, p0, Lxg3$b;->e:Lwb8;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lxg3$c;->b:[Ljava/lang/Object;

    array-length v1, v0

    iget-object v2, p0, Lxg3$b;->e:Lwb8;

    iget v3, p0, Lxg3$c;->c:I

    :goto_0
    iget-boolean v4, p0, Lxg3$c;->d:Z

    if-eq v3, v1, :cond_2

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    aget-object v4, v0, v3

    if-nez v4, :cond_1

    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "The element at index "

    const-string v1, " is null"

    invoke-static {v3, v0, v1}, Lkv2;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, p0}, Lwb8;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    invoke-interface {v2, v4}, Lwb8;->onNext(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    :goto_1
    return-void

    :cond_3
    invoke-interface {v2}, Lwb8;->onComplete()V

    return-void
.end method

.method public final b(J)V
    .locals 10

    iget-object v0, p0, Lxg3$c;->b:[Ljava/lang/Object;

    array-length v1, v0

    iget v2, p0, Lxg3$c;->c:I

    iget-object v3, p0, Lxg3$b;->e:Lwb8;

    const-wide/16 v4, 0x0

    :cond_0
    move-wide v6, v4

    :cond_1
    :goto_0
    cmp-long v8, v6, p1

    if-eqz v8, :cond_4

    if-eq v2, v1, :cond_4

    iget-boolean v8, p0, Lxg3$c;->d:Z

    if-eqz v8, :cond_2

    goto :goto_1

    :cond_2
    aget-object v8, v0, v2

    if-nez v8, :cond_3

    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "The element at index "

    const-string p2, " is null"

    invoke-static {v2, p1, p2}, Lkv2;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, p0}, Lwb8;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_3
    invoke-interface {v3, v8}, Lwb8;->onNext(Ljava/lang/Object;)V

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-ne v2, v1, :cond_5

    iget-boolean p0, p0, Lxg3$c;->d:Z

    if-nez p0, :cond_6

    invoke-interface {v3}, Lwb8;->onComplete()V

    return-void

    :cond_5
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide p1

    cmp-long v8, v6, p1

    if-nez v8, :cond_1

    iput v2, p0, Lxg3$c;->c:I

    neg-long p1, v6

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide p1

    cmp-long v6, p1, v4

    if-nez v6, :cond_0

    :cond_6
    :goto_1
    return-void
.end method
