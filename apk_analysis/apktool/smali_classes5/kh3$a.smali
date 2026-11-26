.class public final Lkh3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldt6;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkh3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

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


# instance fields
.field public final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lkh3$c<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final c:I


# direct methods
.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lkh3$c<",
            "TT;>;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkh3$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iput p2, p0, Lkh3$a;->c:I

    return-void
.end method


# virtual methods
.method public final a(Lwb8;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwb8<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Lkh3$b;

    invoke-direct {v0, p1}, Lkh3$b;-><init>(Lwb8;)V

    invoke-interface {p1, v0}, Lwb8;->a(Lbc8;)V

    :goto_0
    iget-object p1, p0, Lkh3$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkh3$c;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lkh3$c;->isDisposed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    move-object v3, p1

    goto :goto_2

    :cond_1
    :goto_1
    new-instance v1, Lkh3$c;

    iget-object v2, p0, Lkh3$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iget v3, p0, Lkh3$a;->c:I

    invoke-direct {v1, v2, v3}, Lkh3$c;-><init>(Ljava/util/concurrent/atomic/AtomicReference;I)V

    iget-object v2, p0, Lkh3$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    :cond_2
    invoke-virtual {v2, p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object v3, v1

    :goto_2
    iget-object v4, v3, Lkh3$c;->d:Ljava/util/concurrent/atomic/AtomicReference;

    :goto_3
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, [Lkh3$b;

    sget-object p1, Lkh3$c;->k:[Lkh3$b;

    if-ne v5, p1, :cond_3

    goto :goto_0

    :cond_3
    array-length p1, v5

    add-int/lit8 v1, p1, 0x1

    new-array v6, v1, [Lkh3$b;

    const/4 v1, 0x0

    invoke-static {v5, v1, v6, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v0, v6, p1

    :cond_4
    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide p0

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long p0, p0, v1

    if-nez p0, :cond_5

    invoke-virtual {v3, v0}, Lkh3$c;->f(Lkh3$b;)V

    goto :goto_4

    :cond_5
    iput-object v3, v0, Lkh3$b;->c:Lkh3$c;

    :goto_4
    invoke-virtual {v3}, Lkh3$c;->d()V

    return-void

    :cond_6
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v5, :cond_4

    goto :goto_3

    :cond_7
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p1, :cond_2

    goto :goto_0
.end method
