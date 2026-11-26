.class public final Lyads/ru3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/su3;


# static fields
.field public static final d:Lyads/lu3;

.field public static final e:Lyads/lu3;


# instance fields
.field public final a:Ljava/util/concurrent/ExecutorService;

.field public b:Lyads/mu3;

.field public c:Ljava/io/IOException;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lyads/lu3;

    const/4 v1, 0x2

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2, v3}, Lyads/lu3;-><init>(IJ)V

    sput-object v0, Lyads/ru3;->d:Lyads/lu3;

    new-instance v0, Lyads/lu3;

    const/4 v1, 0x3

    invoke-direct {v0, v1, v2, v3}, Lyads/lu3;-><init>(IJ)V

    sput-object v0, Lyads/ru3;->e:Lyads/lu3;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ExoPlayer:Loader:"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lyads/u56;->d(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lyads/ru3;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public final a(Lyads/nu3;Lyads/ku3;I)J
    .locals 11

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    const-wide/16 v8, 0x0

    if-eqz v2, :cond_1

    const/4 v10, 0x0

    iput-object v10, p0, Lyads/ru3;->c:Ljava/io/IOException;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    new-instance v0, Lyads/mu3;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v7}, Lyads/mu3;-><init>(Lyads/ru3;Landroid/os/Looper;Lyads/nu3;Lyads/ku3;IJ)V

    iget-object p0, v1, Lyads/ru3;->b:Lyads/mu3;

    if-nez p0, :cond_0

    iput-object v0, v1, Lyads/ru3;->b:Lyads/mu3;

    iput-object v10, v0, Lyads/mu3;->f:Ljava/io/IOException;

    iget-object p0, v1, Lyads/ru3;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-wide v6

    :cond_0
    invoke-static {}, Lud;->g()V

    return-wide v8

    :cond_1
    invoke-static {}, Lud;->g()V

    return-wide v8
.end method

.method public final a()V
    .locals 1

    const/high16 v0, -0x80000000

    .line 50
    invoke-virtual {p0, v0}, Lyads/ru3;->a(I)V

    return-void
.end method

.method public final a(I)V
    .locals 1

    .line 51
    iget-object v0, p0, Lyads/ru3;->c:Ljava/io/IOException;

    if-nez v0, :cond_3

    .line 52
    iget-object p0, p0, Lyads/ru3;->b:Lyads/mu3;

    if-eqz p0, :cond_2

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    .line 53
    iget p1, p0, Lyads/mu3;->b:I

    .line 54
    :cond_0
    iget-object v0, p0, Lyads/mu3;->f:Ljava/io/IOException;

    if-eqz v0, :cond_2

    .line 55
    iget p0, p0, Lyads/mu3;->g:I

    if-gt p0, p1, :cond_1

    goto :goto_0

    .line 56
    :cond_1
    throw v0

    :cond_2
    :goto_0
    return-void

    .line 57
    :cond_3
    throw v0
.end method

.method public final a(Lyads/ou3;)V
    .locals 2

    .line 46
    iget-object v0, p0, Lyads/ru3;->b:Lyads/mu3;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 47
    invoke-virtual {v0, v1}, Lyads/mu3;->a(Z)V

    :cond_0
    if-eqz p1, :cond_1

    .line 48
    iget-object v0, p0, Lyads/ru3;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lyads/pu3;

    invoke-direct {v1, p1}, Lyads/pu3;-><init>(Lyads/ou3;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 49
    :cond_1
    iget-object p0, p0, Lyads/ru3;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public final b()Z
    .locals 0

    iget-object p0, p0, Lyads/ru3;->b:Lyads/mu3;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
