.class public final Lyads/lf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final j:Ljava/lang/Object;

.field public static volatile k:Lyads/lf;


# instance fields
.field public final a:J

.field public final b:J

.field public final c:Ljava/util/Set;

.field public final d:Ly22;

.field public final e:Lyads/df;

.field public final f:Lyads/if;

.field public final g:Lyads/rw5;

.field public final h:Lyads/i90;

.field public final i:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyads/lf;->j:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(JJLjava/util/Set;Ly22;Lyads/df;Lyads/if;Lyads/rw5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lyads/lf;->a:J

    iput-wide p3, p0, Lyads/lf;->b:J

    iput-object p5, p0, Lyads/lf;->c:Ljava/util/Set;

    iput-object p6, p0, Lyads/lf;->d:Ly22;

    iput-object p7, p0, Lyads/lf;->e:Lyads/df;

    iput-object p8, p0, Lyads/lf;->f:Lyads/if;

    iput-object p9, p0, Lyads/lf;->g:Lyads/rw5;

    new-instance p1, Lyads/i90;

    invoke-direct {p1}, Lyads/i90;-><init>()V

    iput-object p1, p0, Lyads/lf;->h:Lyads/i90;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lyads/lf;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static final a(Lyads/lf;Ljava/lang/Throwable;)Lj59;
    .locals 0

    .line 41
    iget-object p0, p0, Lyads/lf;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 42
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/lf;)V
    .locals 3

    iget-object v0, p0, Lyads/lf;->g:Lyads/rw5;

    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/StackTraceElement;

    if-eqz v1, :cond_0

    sget-object v2, Lyads/cq5;->a:Ljava/util/Set;

    iget-object v2, p0, Lyads/lf;->c:Ljava/util/Set;

    invoke-static {v1, v2}, Lyads/cq5;->a([Ljava/lang/StackTraceElement;Ljava/util/Set;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lyads/lf;->f:Lyads/if;

    iget-object p0, p0, Lyads/if;->a:Lyads/q84;

    invoke-virtual {p0, v0}, Lyads/q84;->b(Ljava/util/Map;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 43
    iget-object v0, p0, Lyads/lf;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lyads/lf;->d:Ly22;

    iget-object v1, p0, Lyads/lf;->h:Lyads/i90;

    new-instance v2, Lyads/kf;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lyads/kf;-><init>(Lyads/lf;Le02;)V

    const/4 v4, 0x2

    .line 45
    invoke-static {v0, v1, v3, v2, v4}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object v0

    .line 46
    new-instance v1, Lnx1;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lnx1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lsb4;->g(Lnl3;)Lhp2;

    return-void
.end method
