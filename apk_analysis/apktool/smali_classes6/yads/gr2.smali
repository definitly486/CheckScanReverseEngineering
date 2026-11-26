.class public final Lyads/gr2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/eq2;

.field public final b:Lyads/s14;

.field public final c:Lyads/fe6;

.field public final d:Lyads/tk4;

.field public final e:Lyads/pe6;

.field public final f:Lyads/fr2;

.field public final g:Lyads/rq2;

.field public h:Lyads/ol4;

.field public i:Lyads/hb6;

.field public j:Z

.field public k:Z


# direct methods
.method public constructor <init>(Lyads/eq2;Lyads/s14;Lyads/fe6;)V
    .locals 2

    new-instance v0, Lyads/tk4;

    invoke-direct {v0}, Lyads/tk4;-><init>()V

    new-instance v1, Lyads/pe6;

    invoke-direct {v1}, Lyads/pe6;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/gr2;->a:Lyads/eq2;

    iput-object p2, p0, Lyads/gr2;->b:Lyads/s14;

    iput-object p3, p0, Lyads/gr2;->c:Lyads/fe6;

    iput-object v0, p0, Lyads/gr2;->d:Lyads/tk4;

    iput-object v1, p0, Lyads/gr2;->e:Lyads/pe6;

    new-instance p2, Lyads/fr2;

    invoke-direct {p2, p0}, Lyads/fr2;-><init>(Lyads/gr2;)V

    iput-object p2, p0, Lyads/gr2;->f:Lyads/fr2;

    new-instance p3, Lyads/rq2;

    invoke-direct {p3, p2}, Lyads/rq2;-><init>(Lyads/fr2;)V

    iput-object p3, p0, Lyads/gr2;->g:Lyads/rq2;

    iget-object p3, p1, Lyads/eq2;->k:Lyads/wt3;

    iget-boolean v0, p3, Lyads/wt3;->g:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p3, p3, Lyads/wt3;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v0, Lyads/vt3;

    invoke-direct {v0, p2}, Lyads/vt3;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p3, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object p1, p1, Lyads/eq2;->k:Lyads/wt3;

    iget-boolean p2, p1, Lyads/wt3;->g:Z

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p1, Lyads/wt3;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance p2, Lyads/vt3;

    invoke-direct {p2, v1}, Lyads/vt3;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    :goto_1
    sput-object p0, Lyads/l6;->b:Lyads/gr2;

    sget-object p0, Lyads/l6;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/iw4;

    sget-object p2, Lyads/l6;->b:Lyads/gr2;

    if-eqz p2, :cond_4

    sget-object p2, Lyads/l6;->b:Lyads/gr2;

    if-eqz p2, :cond_2

    iget-object p2, p2, Lyads/gr2;->a:Lyads/eq2;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p2, Lyads/eq2;->k:Lyads/wt3;

    iget-boolean p3, p2, Lyads/wt3;->g:Z

    if-eqz p3, :cond_3

    goto :goto_2

    :cond_3
    iget-object p2, p2, Lyads/wt3;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance p3, Lyads/vt3;

    invoke-direct {p3, p1}, Lyads/vt3;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, p3}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    sget-object p2, Lyads/l6;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    .line 151
    iput-boolean v0, p0, Lyads/gr2;->k:Z

    .line 152
    invoke-virtual {p0}, Lyads/gr2;->d()V

    return-void
.end method

.method public final a(F)V
    .locals 1

    .line 146
    iget-boolean v0, p0, Lyads/gr2;->j:Z

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lyads/gr2;->a:Lyads/eq2;

    invoke-virtual {v0, p1}, Lyads/eq2;->a(F)V

    .line 148
    iget-object v0, p0, Lyads/gr2;->i:Lyads/hb6;

    .line 149
    iget-object p0, p0, Lyads/gr2;->h:Lyads/ol4;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 150
    invoke-interface {v0, p1}, Lyads/hb6;->onVolumeChanged(F)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/TextureView;)V
    .locals 1

    .line 141
    iget-boolean v0, p0, Lyads/gr2;->j:Z

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lyads/gr2;->e:Lyads/pe6;

    .line 143
    iput-object p1, v0, Lyads/pe6;->d:Landroid/view/TextureView;

    .line 144
    invoke-virtual {v0}, Lyads/pe6;->b()V

    .line 145
    iget-object p0, p0, Lyads/gr2;->a:Lyads/eq2;

    invoke-virtual {p0, p1}, Lyads/eq2;->a(Landroid/view/TextureView;)V

    :cond_0
    return-void
.end method

.method public final a(Lyads/gb6;)V
    .locals 0

    .line 139
    iget-boolean p1, p0, Lyads/gr2;->j:Z

    if-nez p1, :cond_0

    .line 140
    invoke-virtual {p0}, Lyads/gr2;->b()V

    :cond_0
    return-void
.end method

.method public final a(Lyads/hb6;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lyads/gr2;->i:Lyads/hb6;

    return-void
.end method

.method public final a(Lyads/ol4;)V
    .locals 4

    iget-boolean v0, p0, Lyads/gr2;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lyads/gr2;->h:Lyads/ol4;

    iget-object v0, p0, Lyads/gr2;->b:Lyads/s14;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lyads/bc5;

    invoke-direct {v1}, Lyads/bc5;-><init>()V

    iget-object v2, v0, Lyads/s14;->a:Landroid/content/Context;

    new-instance v3, Lyads/ku5;

    invoke-direct {v3}, Lyads/ku5;-><init>()V

    invoke-virtual {v3}, Lyads/ku5;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2}, Lyads/bc5;->a(Landroid/content/Context;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    new-instance v2, Lyads/cf5;

    invoke-direct {v2, v3, v1}, Lyads/cf5;-><init>(Ljava/lang/String;Ljavax/net/ssl/SSLSocketFactory;)V

    new-instance v1, Lyads/kk0;

    iget-object v3, v0, Lyads/s14;->a:Landroid/content/Context;

    invoke-direct {v1, v3, v2}, Lyads/kk0;-><init>(Landroid/content/Context;Lyads/cf5;)V

    sget-object v2, Lyads/zq2;->d:Lyads/zq2;

    if-nez v2, :cond_2

    sget-object v2, Lyads/zq2;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lyads/zq2;->d:Lyads/zq2;

    if-nez v3, :cond_1

    new-instance v3, Lyads/zq2;

    invoke-direct {v3}, Lyads/zq2;-><init>()V

    sput-object v3, Lyads/zq2;->d:Lyads/zq2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v2

    move-object v2, v3

    goto :goto_2

    :goto_1
    monitor-exit v2

    throw p0

    :cond_2
    :goto_2
    iget-object v0, v0, Lyads/s14;->a:Landroid/content/Context;

    invoke-virtual {v2, v0}, Lyads/zq2;->a(Landroid/content/Context;)Lyads/yv;

    move-result-object v0

    new-instance v2, Lyads/bw;

    invoke-direct {v2}, Lyads/bw;-><init>()V

    iput-object v0, v2, Lyads/bw;->a:Lyads/yv;

    iput-object v1, v2, Lyads/bw;->c:Lyads/vc0;

    new-instance v0, Lyads/pl0;

    new-instance v1, Lyads/zk0;

    invoke-direct {v1}, Lyads/zk0;-><init>()V

    invoke-direct {v0, v2, v1}, Lyads/pl0;-><init>(Lyads/vc0;Lyads/zk0;)V

    iget-object p1, p1, Lyads/ol4;->a:Ljava/lang/String;

    invoke-static {p1}, Lyads/p04;->a(Ljava/lang/String;)Lyads/p04;

    move-result-object p1

    invoke-virtual {v0, p1}, Lyads/pl0;->a(Lyads/p04;)Lyads/cs;

    move-result-object p1

    iget-object v0, p0, Lyads/gr2;->a:Lyads/eq2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lyads/eq2;->a(Z)V

    iget-object v0, p0, Lyads/gr2;->a:Lyads/eq2;

    invoke-virtual {v0, p1}, Lyads/eq2;->a(Lyads/cs;)V

    iget-object p1, p0, Lyads/gr2;->a:Lyads/eq2;

    invoke-virtual {p1}, Lyads/eq2;->k()V

    iget-object p0, p0, Lyads/gr2;->g:Lyads/rq2;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lyads/qq2;

    invoke-direct {p1, p0}, Lyads/qq2;-><init>(Lyads/rq2;)V

    iget-object p0, p0, Lyads/rq2;->b:Lyads/tt4;

    sget-wide v0, Lyads/rq2;->c:J

    invoke-virtual {p0, v0, v1, p1}, Lyads/tt4;->a(JLyads/ut4;)V

    return-void
.end method

.method public final b()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyads/gr2;->j:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lyads/gr2;->k:Z

    iget-object v0, p0, Lyads/gr2;->g:Lyads/rq2;

    iget-object v0, v0, Lyads/rq2;->b:Lyads/tt4;

    invoke-virtual {v0}, Lyads/tt4;->a()V

    iget-object v0, p0, Lyads/gr2;->a:Lyads/eq2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lyads/eq2;->a(Landroid/view/TextureView;)V

    iget-object v0, p0, Lyads/gr2;->e:Lyads/pe6;

    iput-object v1, v0, Lyads/pe6;->d:Landroid/view/TextureView;

    invoke-virtual {v0}, Lyads/pe6;->b()V

    iget-object v0, p0, Lyads/gr2;->a:Lyads/eq2;

    iget-object v1, p0, Lyads/gr2;->f:Lyads/fr2;

    invoke-virtual {v0, v1}, Lyads/eq2;->c(Lyads/iw4;)V

    iget-object v0, p0, Lyads/gr2;->a:Lyads/eq2;

    iget-object v1, p0, Lyads/gr2;->e:Lyads/pe6;

    invoke-virtual {v0, v1}, Lyads/eq2;->c(Lyads/iw4;)V

    iget-object p0, p0, Lyads/gr2;->a:Lyads/eq2;

    invoke-virtual {p0}, Lyads/eq2;->l()V

    return-void
.end method

.method public final c()Z
    .locals 0

    iget-object p0, p0, Lyads/gr2;->a:Lyads/eq2;

    invoke-virtual {p0}, Lyads/fs;->b()Z

    move-result p0

    return p0
.end method

.method public final d()V
    .locals 1

    iget-boolean v0, p0, Lyads/gr2;->j:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lyads/gr2;->a:Lyads/eq2;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lyads/eq2;->a(Z)V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 2

    iget-boolean v0, p0, Lyads/gr2;->j:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lyads/gr2;->a:Lyads/eq2;

    invoke-virtual {v0, v1}, Lyads/eq2;->a(Z)V

    :cond_0
    iget-boolean v0, p0, Lyads/gr2;->k:Z

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lyads/gr2;->d()V

    :cond_1
    return-void
.end method

.method public final f()V
    .locals 1

    iget-boolean v0, p0, Lyads/gr2;->j:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lyads/gr2;->k:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lyads/gr2;->a:Lyads/eq2;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lyads/eq2;->a(Z)V

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 2

    iget-boolean v0, p0, Lyads/gr2;->j:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lyads/gr2;->i:Lyads/hb6;

    iget-object v1, p0, Lyads/gr2;->h:Lyads/ol4;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lyads/hb6;->e()V

    :cond_0
    invoke-virtual {p0}, Lyads/gr2;->b()V

    :cond_1
    return-void
.end method
