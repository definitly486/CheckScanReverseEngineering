.class public final Lyads/wq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lc31;

.field public final b:Lyads/n8;

.field public final c:Ly22;

.field public final d:Lyads/g1;

.field public final e:Lyads/zq;

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lc31;Lyads/n8;Ly22;Lyads/g1;Lyads/zq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/wq;->a:Lc31;

    iput-object p2, p0, Lyads/wq;->b:Lyads/n8;

    iput-object p3, p0, Lyads/wq;->c:Ly22;

    iput-object p4, p0, Lyads/wq;->d:Lyads/g1;

    iput-object p5, p0, Lyads/wq;->e:Lyads/zq;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lyads/wq;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lyads/wq;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyads/wq;->d:Lyads/g1;

    iget-object v1, p0, Lyads/wq;->b:Lyads/n8;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lyads/g1;->a(Lyads/n8;Ljava/lang/Object;)V

    iget-object p0, p0, Lyads/wq;->a:Lc31;

    sget-object v0, Lj59;->a:Lj59;

    invoke-virtual {p0, v0}, Lc31;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 3

    .line 26
    iget-object v0, p0, Lyads/wq;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lyads/wq;->c:Ly22;

    new-instance v1, Lyads/vq;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lyads/vq;-><init>(Lyads/wq;Ljava/lang/Object;Le02;)V

    const/4 p0, 0x3

    .line 28
    invoke-static {v0, v2, v2, v1, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    :cond_0
    return-void
.end method
