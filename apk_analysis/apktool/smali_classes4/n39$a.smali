.class public final Ln39$a;
.super Ly94;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln39;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ly94<",
        "Lcom/google/common/util/concurrent/ListenableFuture<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field public final d:Ljs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljs<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final synthetic e:Ln39;


# direct methods
.method public constructor <init>(Ln39;Ljs;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljs<",
            "TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Ln39$a;->e:Ln39;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Ln39$a;->d:Ljs;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Ln39$a;->e:Ln39;

    invoke-virtual {p0, p1}, Ll0;->m(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object p0, p0, Ln39$a;->e:Ln39;

    invoke-virtual {p0, p1}, Ll0;->n(Lcom/google/common/util/concurrent/ListenableFuture;)Z

    return-void
.end method

.method public final e()Z
    .locals 0

    iget-object p0, p0, Ln39$a;->e:Ln39;

    invoke-virtual {p0}, Ll0;->isDone()Z

    move-result p0

    return p0
.end method

.method public final f()Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Ln39$a;->d:Ljs;

    invoke-interface {p0}, Ljs;->call()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    const-string v1, "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s"

    invoke-static {v0, v1, p0}, Lo8;->m(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ln39$a;->d:Ljs;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
