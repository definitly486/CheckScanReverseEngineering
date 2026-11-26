.class public final Lyads/fi5;
.super Lyads/rb5;
.source "SourceFile"


# instance fields
.field public final synthetic i:Lyads/cw;

.field public final synthetic j:Lyads/bd0;

.field public final synthetic k:Lyads/ji5;


# direct methods
.method public constructor <init>(Lyads/ji5;Lyads/cw;Lyads/bd0;)V
    .locals 0

    iput-object p1, p0, Lyads/fi5;->k:Lyads/ji5;

    iput-object p2, p0, Lyads/fi5;->i:Lyads/cw;

    iput-object p3, p0, Lyads/fi5;->j:Lyads/bd0;

    invoke-direct {p0}, Lyads/rb5;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lyads/fi5;->i:Lyads/cw;

    iget-object v1, p0, Lyads/fi5;->k:Lyads/ji5;

    invoke-static {v1}, Lyads/ji5;->a(Lyads/ji5;)Lyads/mc0;

    move-result-object v1

    iget-object p0, p0, Lyads/fi5;->j:Lyads/bd0;

    new-instance v2, Lyads/rq5;

    invoke-direct {v2, v0}, Lyads/rq5;-><init>(Lyads/wc0;)V

    sget-object v3, Lyads/cu3;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    const-wide/16 v3, 0x0

    iput-wide v3, v2, Lyads/rq5;->b:J

    new-instance v3, Lyads/yc0;

    invoke-direct {v3, v2, p0}, Lyads/yc0;-><init>(Lyads/wc0;Lyads/bd0;)V

    :try_start_0
    iget-object p0, v3, Lyads/yc0;->b:Lyads/wc0;

    iget-object v2, v3, Lyads/yc0;->c:Lyads/bd0;

    invoke-interface {p0, v2}, Lyads/wc0;->a(Lyads/bd0;)J

    const/4 p0, 0x1

    iput-boolean p0, v3, Lyads/yc0;->e:Z

    iget-object p0, v0, Lyads/cw;->i:Landroid/net/Uri;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, p0, v3}, Lyads/mc0;->a(Landroid/net/Uri;Lyads/yc0;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3}, Lyads/u56;->a(Ljava/io/Closeable;)V

    check-cast p0, Lyads/kc0;

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v3}, Lyads/u56;->a(Ljava/io/Closeable;)V

    throw p0
.end method
