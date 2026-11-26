.class public final Lyads/ox;
.super Lyads/bq;
.source "SourceFile"

# interfaces
.implements Lyads/ga5;


# instance fields
.field public final h:Lyads/fa5;

.field public final i:Lyads/fb5;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/do6;)V
    .locals 9

    new-instance v2, Lyads/fw3;

    invoke-direct {v2, p1}, Lyads/fw3;-><init>(Landroid/content/Context;)V

    sget-object v0, Lyads/ee5;->a:Lyads/ng3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lyads/ng3;->a()Lyads/aw3;

    move-result-object v3

    new-instance v7, Lyads/fa5;

    invoke-direct {v7, p2}, Lyads/fa5;-><init>(Lyads/do6;)V

    sget-object v0, Lyads/fb5;->d:Lyads/fb5;

    if-nez v0, :cond_1

    sget-object v1, Lyads/fb5;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lyads/fb5;->d:Lyads/fb5;

    if-nez v0, :cond_0

    new-instance v0, Lyads/fb5;

    invoke-direct {v0}, Lyads/fb5;-><init>()V

    sput-object v0, Lyads/fb5;->d:Lyads/fb5;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1

    throw p0

    :cond_1
    :goto_2
    sget-object v8, Lyads/fb5;->d:Lyads/fb5;

    if-eqz v8, :cond_2

    new-instance v4, Lyads/uz4;

    invoke-direct {v4}, Lyads/uz4;-><init>()V

    new-instance v5, Lyads/cl0;

    invoke-static {}, Lyads/e1;->a()Lyads/g1;

    move-result-object v0

    new-instance v1, Lyads/ix;

    invoke-static {}, Lyads/eb5;->a()Lyads/fb5;

    move-result-object v6

    invoke-direct {v1, v6}, Lyads/ix;-><init>(Lyads/fb5;)V

    invoke-direct {v5, v0, v1}, Lyads/cl0;-><init>(Lyads/g1;Lbm3;)V

    iget-object p2, p2, Lyads/do6;->a:Landroid/content/Context;

    invoke-static {p2, p2}, Lyads/mw;->a(Landroid/content/Context;Landroid/content/Context;)Lyads/q84;

    move-result-object p2

    new-instance v0, Lyads/j90;

    invoke-direct {v0, p2}, Lyads/j90;-><init>(Lyads/k75;)V

    invoke-static {}, Lrm9;->b()Ljd8;

    move-result-object p2

    sget-object v1, Lqo2;->a:Loi2;

    sget-object v1, Luy4;->a:Lhu3;

    invoke-virtual {v1}, Lhu3;->k0()Lgu3;

    move-result-object v1

    invoke-static {p2, v1}, Lo22$a$a;->d(Lo22$a;Lo22;)Lo22;

    move-result-object p2

    invoke-interface {p2, v0}, Lo22;->plus(Lo22;)Lo22;

    move-result-object p2

    invoke-static {p2}, Lz22;->a(Lo22;)Lkz1;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lyads/bq;-><init>(Landroid/content/Context;Lyads/fw3;Lyads/aw3;Lyads/uz4;Lyads/cl0;Ly22;)V

    iput-object v7, v0, Lyads/ox;->h:Lyads/fa5;

    iput-object v8, v0, Lyads/ox;->i:Lyads/fb5;

    return-void

    :cond_2
    const-string p0, "Required value was null."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final a(Lyads/n8;)Ljava/lang/Object;
    .locals 1

    .line 54
    new-instance v0, Lyads/kx;

    invoke-direct {v0, p0, p1}, Lyads/kx;-><init>(Lyads/ox;Lyads/n8;)V

    return-object v0
.end method

.method public final a(Lyads/yp;)Ljava/lang/Object;
    .locals 0

    .line 55
    new-instance p0, Lyads/nx;

    invoke-direct {p0, p1}, Lyads/nx;-><init>(Lyads/yp;)V

    return-object p0
.end method

.method public final a(Lyads/zp;)Ljava/lang/Object;
    .locals 0

    .line 51
    iget-object p0, p0, Lyads/ox;->i:Lyads/fb5;

    .line 52
    iget-object p0, p0, Lyads/fb5;->a:Lyads/zz4;

    .line 53
    invoke-virtual {p0, p1}, Lyads/zz4;->a(Lf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 49
    check-cast p1, Lyads/ja5;

    check-cast p2, Lyads/w80;

    if-eqz p2, :cond_0

    .line 50
    invoke-interface {p2, p1}, Lyads/w80;->a(Lyads/ja5;)V

    :cond_0
    return-void
.end method

.method public final a(Lyads/n8;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 8

    check-cast p2, Lyads/w80;

    const/4 v0, 0x0

    const/16 v1, 0x17ff

    invoke-static {p1, v0, p3, v1}, Lyads/n8;->a(Lyads/n8;Ljava/util/Map;Ljava/lang/String;I)Lyads/n8;

    move-result-object v7

    new-instance v6, Lyads/mx;

    invoke-direct {v6, p0, v7}, Lyads/mx;-><init>(Lyads/ox;Lyads/n8;)V

    iget-object p1, p0, Lyads/ox;->h:Lyads/fa5;

    iget-object v3, p0, Lyads/bq;->a:Landroid/content/Context;

    new-instance v2, Lyads/ea5;

    iget-object v4, p1, Lyads/fa5;->a:Lyads/do6;

    move-object v5, p0

    invoke-direct/range {v2 .. v7}, Lyads/ea5;-><init>(Landroid/content/Context;Lyads/bf5;Lyads/p5;Lyads/u03;Lyads/n8;)V

    iget-object p0, v5, Lyads/bq;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, v7, Lyads/n8;->a:Ljava/lang/String;

    iget-object p1, v2, Lyads/pp;->c:Lyads/e4;

    invoke-virtual {p1, p0}, Lyads/e4;->a(Ljava/lang/String;)V

    iget-object p1, v2, Lyads/ea5;->G:Lyads/r25;

    iput-object p0, p1, Lyads/r25;->d:Ljava/lang/String;

    invoke-virtual {v2, p2}, Lyads/ea5;->a(Lyads/w80;)V

    invoke-virtual {v2, v7}, Lyads/pp;->b(Lyads/n8;)V

    return-void
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lyads/w80;

    new-instance p0, Lyads/lx;

    invoke-direct {p0, p1}, Lyads/lx;-><init>(Lyads/w80;)V

    return-object p0
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lyads/ea5;

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lyads/ea5;->a(Lyads/w80;)V

    return-void
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lyads/ea5;

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lyads/ea5;->a(Lyads/w80;)V

    invoke-virtual {p1}, Lyads/s03;->c()V

    return-void
.end method
