.class public final Lyads/qh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lyads/bf5;

.field public final c:Lyads/zg5;

.field public final d:Lyads/q84;

.field public final e:Lyads/qt2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lyads/qh;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lyads/bf5;)V
    .locals 3

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
    move-object v1, p2

    check-cast v1, Lyads/do6;

    iget-object v1, v1, Lyads/do6;->a:Landroid/content/Context;

    invoke-static {v1, v1}, Lyads/mw;->a(Landroid/content/Context;Landroid/content/Context;)Lyads/q84;

    move-result-object v1

    invoke-static {p1}, Lyads/pt2;->a(Landroid/content/Context;)Lyads/qt2;

    move-result-object v2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/qh;->a:Landroid/content/Context;

    iput-object p2, p0, Lyads/qh;->b:Lyads/bf5;

    iput-object v0, p0, Lyads/qh;->c:Lyads/zg5;

    iput-object v1, p0, Lyads/qh;->d:Lyads/q84;

    iput-object v2, p0, Lyads/qh;->e:Lyads/qt2;

    return-void
.end method
