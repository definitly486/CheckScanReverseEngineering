.class public final Lyads/g46;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:Z

.field public static final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyads/g46;->b:Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/content/Context;Lyads/q84;)V
    .locals 4

    sget-boolean v0, Lyads/g46;->a:Z

    if-nez v0, :cond_1

    sget-object v0, Lyads/g46;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lyads/g46;->a:Z

    if-nez v1, :cond_0

    invoke-static {}, Lyads/yg5;->a()Lyads/zg5;

    move-result-object v1

    invoke-virtual {v1, p0}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-boolean v1, p0, Lyads/fe5;->h0:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    new-instance v3, Lyads/f46;

    invoke-direct {v3, p1, v1, p0}, Lyads/f46;-><init>(Lyads/q84;Ljava/lang/Thread$UncaughtExceptionHandler;Lyads/fe5;)V

    invoke-static {v3}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    sput-boolean v2, Lyads/g46;->a:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0

    :cond_1
    return-void
.end method
