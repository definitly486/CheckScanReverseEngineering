.class public final Lyads/h65;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/e4;

.field public final b:Lyads/d9;

.field public final c:Lyads/ba;

.field public final d:Lyads/q84;

.field public final e:Lyads/fe5;

.field public final f:Lyads/e40;

.field public g:Lyads/yj4;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/e4;Lyads/bf5;Lyads/d9;Lyads/ba;)V
    .locals 2

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p3, Lyads/do6;

    new-instance v0, Lyads/lm6;

    iget-object p3, p3, Lyads/do6;->a:Landroid/content/Context;

    invoke-direct {v0, p3}, Lyads/lm6;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Lyads/re;->a(Landroid/content/Context;Lyads/lm6;)Lyads/q84;

    move-result-object p3

    sget-object v0, Lyads/zg5;->l:Lyads/zg5;

    if-nez v0, :cond_1

    sget-object v0, Lyads/zg5;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lyads/zg5;->l:Lyads/zg5;

    if-nez v1, :cond_0

    new-instance v1, Lyads/zg5;

    invoke-direct {v1}, Lyads/zg5;-><init>()V

    sput-object v1, Lyads/zg5;->l:Lyads/zg5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    move-object v0, v1

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw p0

    :cond_1
    :goto_2
    invoke-virtual {v0, p1}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object p1

    new-instance v0, Lyads/e40;

    invoke-direct {v0}, Lyads/e40;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/h65;->a:Lyads/e4;

    iput-object p4, p0, Lyads/h65;->b:Lyads/d9;

    iput-object p5, p0, Lyads/h65;->c:Lyads/ba;

    iput-object p3, p0, Lyads/h65;->d:Lyads/q84;

    iput-object p1, p0, Lyads/h65;->e:Lyads/fe5;

    iput-object v0, p0, Lyads/h65;->f:Lyads/e40;

    return-void
.end method
