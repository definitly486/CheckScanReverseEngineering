.class public final Lyads/ph;
.super Lyads/ar;
.source "SourceFile"


# instance fields
.field public final e:Lnl3;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/bf5;Lyads/g1;Ly22;Lnl3;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lyads/ar;-><init>(Landroid/content/Context;Lyads/bf5;Lyads/g1;Ly22;)V

    iput-object p5, p0, Lyads/ph;->e:Lnl3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/n8;Ljava/lang/Object;Lyads/zq;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Lyads/kh;

    sget-object p0, Lyads/jh;->d:Lyads/jh;

    if-nez p0, :cond_1

    sget-object p0, Lyads/jh;->c:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lyads/jh;->d:Lyads/jh;

    if-nez v0, :cond_0

    new-instance v0, Lyads/jh;

    invoke-direct {v0}, Lyads/jh;-><init>()V

    sput-object v0, Lyads/jh;->d:Lyads/jh;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0

    throw p1

    :cond_1
    :goto_2
    sget-object p0, Lyads/jh;->d:Lyads/jh;

    if-eqz p0, :cond_4

    iget-object v0, p0, Lyads/jh;->a:Lyads/zz4;

    iget-object p0, p0, Lyads/jh;->b:Lyads/b13;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lyads/b13;->a(Lyads/n8;)Lyads/a13;

    move-result-object p0

    invoke-virtual {v0, p0, p2, p3}, Lyads/zz4;->a(Lyads/a13;Ljava/lang/Object;Lf02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_2

    goto :goto_3

    :cond_2
    sget-object p0, Lj59;->a:Lj59;

    :goto_3
    if-ne p0, p1, :cond_3

    return-object p0

    :cond_3
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_4
    const-string p0, "Required value was null."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final a(Lyads/n8;Lyads/wq;)Lyads/s03;
    .locals 6

    .line 68
    new-instance v4, Lyads/oh;

    invoke-direct {v4, p0, p1}, Lyads/oh;-><init>(Lyads/ph;Lyads/n8;)V

    .line 69
    iget-object v2, p0, Lyads/ar;->b:Lyads/bf5;

    .line 70
    iget-object v1, p0, Lyads/ar;->a:Landroid/content/Context;

    .line 71
    new-instance v3, Lyads/nh;

    invoke-direct {v3}, Lyads/nh;-><init>()V

    .line 72
    new-instance v0, Lyads/dh;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lyads/dh;-><init>(Landroid/content/Context;Lyads/bf5;Lyads/p5;Lyads/u03;Lyads/n8;)V

    .line 73
    iget-object p0, v5, Lyads/n8;->a:Ljava/lang/String;

    .line 74
    iget-object p1, v0, Lyads/pp;->c:Lyads/e4;

    invoke-virtual {p1, p0}, Lyads/e4;->a(Ljava/lang/String;)V

    .line 75
    new-instance p0, Lyads/mh;

    invoke-direct {p0, p2}, Lyads/mh;-><init>(Lyads/wq;)V

    invoke-virtual {v0, p0}, Lyads/dh;->a(Lyads/p70;)V

    .line 76
    invoke-virtual {v0, v5}, Lyads/pp;->b(Lyads/n8;)V

    return-object v0
.end method
