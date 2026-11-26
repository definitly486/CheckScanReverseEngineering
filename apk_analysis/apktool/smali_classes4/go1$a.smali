.class public final Lgo1$a;
.super Lgo1$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgo1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgo1<",
        "TV;>.c<",
        "Lcom/google/common/util/concurrent/ListenableFuture<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field public final f:Ljs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljs<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final synthetic g:Lgo1;


# direct methods
.method public constructor <init>(Lgo1;Ljs;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljs<",
            "TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lgo1$a;->g:Lgo1;

    invoke-direct {p0, p1, p3}, Lgo1$c;-><init>(Lgo1;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lgo1$a;->f:Ljs;

    return-void
.end method


# virtual methods
.method public final f()Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lgo1$a;->f:Ljs;

    invoke-interface {p0}, Ljs;->call()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    const-string v1, "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s"

    invoke-static {v0, v1, p0}, Lo8;->m(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lgo1$a;->f:Ljs;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final j(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object p0, p0, Lgo1$a;->g:Lgo1;

    invoke-virtual {p0, p1}, Ll0;->n(Lcom/google/common/util/concurrent/ListenableFuture;)Z

    return-void
.end method
