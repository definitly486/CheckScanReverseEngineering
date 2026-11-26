.class public abstract Lt1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le98;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt1$a;
    }
.end annotation


# static fields
.field public static final b:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lt1;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lt1;->b:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Lqu1;)V
    .locals 0

    invoke-virtual {p0}, Lt1;->k()Lwk3;

    move-result-object p0

    invoke-interface {p0, p1}, Lwk3;->c(Lqu1;)Lwk3;

    return-void
.end method

.method public final d(Ljava/io/InputStream;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {p0}, Lt1;->k()Lwk3;

    move-result-object v0

    invoke-interface {v0}, Lwk3;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lt1;->k()Lwk3;

    move-result-object p0

    invoke-interface {p0, p1}, Lwk3;->d(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {p1}, Lvs3;->b(Ljava/io/Closeable;)V

    return-void

    :goto_1
    invoke-static {p1}, Lvs3;->b(Ljava/io/Closeable;)V

    throw p0
.end method

.method public final e()V
    .locals 1

    invoke-virtual {p0}, Lt1;->n()Lt1$a;

    move-result-object p0

    iget-object v0, p0, Lt1$a;->d:Lda5;

    iput-object p0, v0, Lda5;->b:Lda5$b;

    iput-object v0, p0, Lt1$a;->a:Lvk2;

    return-void
.end method

.method public final flush()V
    .locals 1

    invoke-virtual {p0}, Lt1;->k()Lwk3;

    move-result-object v0

    invoke-interface {v0}, Lwk3;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lt1;->k()Lwk3;

    move-result-object p0

    invoke-interface {p0}, Lwk3;->flush()V

    :cond_0
    return-void
.end method

.method public isReady()Z
    .locals 0

    invoke-virtual {p0}, Lt1;->n()Lt1$a;

    move-result-object p0

    invoke-virtual {p0}, Lt1$a;->e()Z

    move-result p0

    return p0
.end method

.method public abstract k()Lwk3;
.end method

.method public final m()V
    .locals 1

    invoke-virtual {p0}, Lt1;->n()Lt1$a;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lr46;->b()V

    new-instance v0, Ls1;

    invoke-direct {v0, p0}, Ls1;-><init>(Lt1$a;)V

    check-cast p0, Lkv5$b;

    iget-object p0, p0, Lkv5$b;->x:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract n()Lt1$a;
.end method
