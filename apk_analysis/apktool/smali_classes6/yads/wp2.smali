.class public final Lyads/wp2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lyads/du5;

.field public c:Lyads/ut5;

.field public final d:Lyads/ut5;

.field public final e:Lyads/ut5;

.field public f:Lyads/ut5;

.field public final g:Lyads/ut5;

.field public final h:Lyads/v13;

.field public final i:Landroid/os/Looper;

.field public final j:Lyads/am;

.field public final k:I

.field public final l:Z

.field public final m:Lyads/th5;

.field public final n:Lyads/jl0;

.field public final o:J

.field public final p:J

.field public final q:Z

.field public r:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 98
    new-instance v0, Lrga;

    invoke-direct {v0, p1}, Lrga;-><init>(Landroid/content/Context;)V

    new-instance v1, Lsga;

    invoke-direct {v1, p1}, Lsga;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, v1}, Lyads/wp2;-><init>(Landroid/content/Context;Lyads/ut5;Lyads/ut5;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lyads/ut5;Lyads/ut5;)V
    .locals 5

    new-instance v0, Ltga;

    invoke-direct {v0, p1}, Ltga;-><init>(Landroid/content/Context;)V

    new-instance v1, Luga;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lvga;

    invoke-direct {v2, p1}, Lvga;-><init>(Landroid/content/Context;)V

    new-instance v3, Ldq;

    const/4 v4, 0x6

    invoke-direct {v3, v4}, Ldq;-><init>(I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/wp2;->a:Landroid/content/Context;

    iput-object p2, p0, Lyads/wp2;->c:Lyads/ut5;

    iput-object p3, p0, Lyads/wp2;->d:Lyads/ut5;

    iput-object v0, p0, Lyads/wp2;->e:Lyads/ut5;

    iput-object v1, p0, Lyads/wp2;->f:Lyads/ut5;

    iput-object v2, p0, Lyads/wp2;->g:Lyads/ut5;

    iput-object v3, p0, Lyads/wp2;->h:Lyads/v13;

    sget p1, Lyads/u56;->a:I

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lyads/wp2;->i:Landroid/os/Looper;

    sget-object p1, Lyads/am;->h:Lyads/am;

    iput-object p1, p0, Lyads/wp2;->j:Lyads/am;

    const/4 p1, 0x1

    iput p1, p0, Lyads/wp2;->k:I

    iput-boolean p1, p0, Lyads/wp2;->l:Z

    sget-object p2, Lyads/th5;->c:Lyads/th5;

    iput-object p2, p0, Lyads/wp2;->m:Lyads/th5;

    const-wide/16 p2, 0x14

    invoke-static {p2, p3}, Lyads/u56;->a(J)J

    move-result-wide p2

    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Lyads/u56;->a(J)J

    move-result-wide v2

    new-instance v4, Lyads/jl0;

    invoke-direct {v4, p2, p3, v2, v3}, Lyads/jl0;-><init>(JJ)V

    iput-object v4, p0, Lyads/wp2;->n:Lyads/jl0;

    sget-object p2, Lyads/x00;->a:Lyads/du5;

    iput-object p2, p0, Lyads/wp2;->b:Lyads/du5;

    iput-wide v0, p0, Lyads/wp2;->o:J

    const-wide/16 p2, 0x7d0

    iput-wide p2, p0, Lyads/wp2;->p:J

    iput-boolean p1, p0, Lyads/wp2;->q:Z

    return-void
.end method

.method public static synthetic a(Lyads/kl0;)Lyads/kl0;
    .locals 0

    .line 6
    return-object p0
.end method

.method public static synthetic a(Landroid/content/Context;)Lyads/zl0;
    .locals 1

    new-instance v0, Lyads/zl0;

    invoke-direct {v0, p0}, Lyads/zl0;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Lyads/g14;
    .locals 3

    new-instance v0, Lyads/pl0;

    new-instance v1, Lyads/zk0;

    invoke-direct {v1}, Lyads/zk0;-><init>()V

    new-instance v2, Lyads/kk0;

    invoke-direct {v2, p0}, Lyads/kk0;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v2, v1}, Lyads/pl0;-><init>(Lyads/vc0;Lyads/zk0;)V

    return-object v0
.end method

.method public static synthetic b(Lyads/zl0;)Lyads/zl0;
    .locals 0

    .line 16
    return-object p0
.end method

.method public static synthetic c(Landroid/content/Context;)Lyads/p06;
    .locals 1

    .line 17
    new-instance v0, Lyads/um0;

    invoke-direct {v0, p0}, Lyads/um0;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static d(Landroid/content/Context;)Lyads/vn;
    .locals 8

    const-class v1, Lyads/zj0;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lyads/zj0;->t:Lyads/zj0;

    if-nez v0, :cond_0

    new-instance v0, Lyads/yj0;

    invoke-direct {v0, p0}, Lyads/yj0;-><init>(Landroid/content/Context;)V

    new-instance v2, Lyads/zj0;

    iget-object v3, v0, Lyads/yj0;->a:Landroid/content/Context;

    iget-object v4, v0, Lyads/yj0;->b:Ljava/util/HashMap;

    iget v5, v0, Lyads/yj0;->c:I

    iget-object v6, v0, Lyads/yj0;->d:Lyads/du5;

    iget-boolean v7, v0, Lyads/yj0;->e:Z

    invoke-direct/range {v2 .. v7}, Lyads/zj0;-><init>(Landroid/content/Context;Ljava/util/HashMap;ILyads/du5;Z)V

    sput-object v2, Lyads/zj0;->t:Lyads/zj0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-object v0

    :goto_1
    monitor-exit v1

    throw p0
.end method


# virtual methods
.method public final b(Lyads/kl0;)V
    .locals 1

    .line 17
    iget-boolean v0, p0, Lyads/wp2;->r:Z

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lqga;

    invoke-direct {v0, p1}, Lqga;-><init>(Lyads/kl0;)V

    iput-object v0, p0, Lyads/wp2;->f:Lyads/ut5;

    return-void

    .line 19
    :cond_0
    invoke-static {}, Lud;->g()V

    return-void
.end method

.method public final c(Lyads/zl0;)Lyads/wp2;
    .locals 1

    iget-boolean v0, p0, Lyads/wp2;->r:Z

    if-nez v0, :cond_0

    new-instance v0, Lpga;

    invoke-direct {v0, p1}, Lpga;-><init>(Lyads/zl0;)V

    iput-object v0, p0, Lyads/wp2;->c:Lyads/ut5;

    return-object p0

    :cond_0
    invoke-static {}, Lud;->g()V

    const/4 p0, 0x0

    return-object p0
.end method
