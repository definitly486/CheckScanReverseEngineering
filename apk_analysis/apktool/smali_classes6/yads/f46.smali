.class public final Lyads/f46;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field public final a:Lyads/q84;

.field public final b:Ljava/lang/Thread$UncaughtExceptionHandler;

.field public final c:Lyads/fe5;


# direct methods
.method public constructor <init>(Lyads/q84;Ljava/lang/Thread$UncaughtExceptionHandler;Lyads/fe5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/f46;->a:Lyads/q84;

    iput-object p2, p0, Lyads/f46;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    iput-object p3, p0, Lyads/f46;->c:Lyads/fe5;

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lyads/f46;->c:Lyads/fe5;

    iget-object v0, v0, Lyads/fe5;->r0:Ljava/util/Set;

    if-nez v0, :cond_0

    sget-object v0, Lox2;->b:Lox2;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lyads/cq5;->a:Ljava/util/Set;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-static {v1, v0}, Lyads/cq5;->a([Ljava/lang/StackTraceElement;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lyads/f46;->a:Lyads/q84;

    iget-object v1, v0, Lyads/q84;->a:Lyads/wg;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lyads/q84;->c:Ly22;

    new-instance v2, Lyads/p84;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p2, v3}, Lyads/p84;-><init>(Lyads/q84;Ljava/lang/Throwable;Le02;)V

    const/4 v0, 0x3

    invoke-static {v1, v3, v3, v2, v0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Lyads/f46;->c:Lyads/fe5;

    iget-boolean v0, v0, Lyads/fe5;->q0:Z

    if-nez v0, :cond_2

    iget-object p0, p0, Lyads/f46;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz p0, :cond_2

    goto :goto_2

    :goto_1
    :try_start_1
    iget-object v1, p0, Lyads/f46;->a:Lyads/q84;

    const-string v2, "Failed to report uncaught exception"

    invoke-virtual {v1, v2, v0}, Lyads/q84;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    iget-object v0, p0, Lyads/f46;->c:Lyads/fe5;

    iget-boolean v0, v0, Lyads/fe5;->q0:Z

    if-nez v0, :cond_2

    iget-object p0, p0, Lyads/f46;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz p0, :cond_2

    :goto_2
    invoke-interface {p0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method
