.class public final Lt13$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljs;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt13;->a(Ljs;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljs<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lt13$c;

.field public final synthetic c:Ljs;


# direct methods
.method public constructor <init>(Lt13$c;Ljs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt13$a;->b:Lt13$c;

    iput-object p2, p0, Lt13$a;->c:Ljs;

    return-void
.end method


# virtual methods
.method public final call()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TT;>;"
        }
    .end annotation

    sget v0, Lt13$c;->f:I

    sget-object v0, Lt13$b;->NOT_RUN:Lt13$b;

    sget-object v1, Lt13$b;->STARTED:Lt13$b;

    iget-object v2, p0, Lt13$a;->b:Lt13$c;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Lu24$a;->i:Lu24$a;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lu24$a;

    invoke-direct {p0}, Lu24$a;-><init>()V

    return-object p0

    :cond_1
    iget-object p0, p0, Lt13$a;->c:Ljs;

    invoke-interface {p0}, Ljs;->call()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lt13$a;->c:Ljs;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
