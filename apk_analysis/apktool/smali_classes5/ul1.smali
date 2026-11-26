.class public final Lul1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lul1$c;,
        Lul1$d;,
        Lul1$a;,
        Lul1$e;,
        Lul1$b;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/logging/Logger;

.field public static final b:Z

.field public static final c:Lio/grpc/b$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/b$b<",
            "Lul1$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lul1;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lul1;->a:Ljava/util/logging/Logger;

    const-string v0, "GRPC_CLIENT_CALL_REJECT_RUNNABLE"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Li13;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lul1;->b:Z

    new-instance v0, Lio/grpc/b$b;

    const-string v1, "internal-stub-type"

    invoke-direct {v0, v1}, Lio/grpc/b$b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lul1;->c:Lio/grpc/b$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lrl1;Ljava/lang/Throwable;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lrl1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v1, "RuntimeException encountered while closing call"

    sget-object v2, Lul1;->a:Ljava/util/logging/Logger;

    invoke-virtual {v2, v0, v1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    instance-of p0, p1, Ljava/lang/RuntimeException;

    if-nez p0, :cond_1

    instance-of p0, p1, Ljava/lang/Error;

    if-eqz p0, :cond_0

    check-cast p1, Ljava/lang/Error;

    throw p1

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_1
    check-cast p1, Ljava/lang/RuntimeException;

    throw p1
.end method

.method public static b(Lrl1;Le73;)Lul1$a;
    .locals 3

    new-instance v0, Lul1$a;

    invoke-direct {v0, p0}, Lul1$a;-><init>(Lrl1;)V

    new-instance v1, Lul1$e;

    invoke-direct {v1, v0}, Lul1$e;-><init>(Lul1$a;)V

    new-instance v2, Lla5;

    invoke-direct {v2}, Lla5;-><init>()V

    invoke-virtual {p0, v1, v2}, Lrl1;->e(Lrl1$a;Lla5;)V

    iget-object v1, v1, Lul1$e;->a:Lul1$a;

    iget-object v1, v1, Lul1$a;->i:Lrl1;

    invoke-virtual {v1}, Lrl1;->c()V

    :try_start_0
    invoke-virtual {p0, p1}, Lrl1;->d(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lrl1;->b()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    invoke-static {p0, p1}, Lul1;->a(Lrl1;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static c(Lul1$a;)Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Ll0;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    const-string v0, "t"

    invoke-static {p0, v0}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_2

    instance-of v1, v0, Lio/grpc/StatusException;

    if-nez v1, :cond_1

    instance-of v1, v0, Lio/grpc/StatusRuntimeException;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    :cond_0
    check-cast v0, Lio/grpc/StatusRuntimeException;

    new-instance p0, Lio/grpc/StatusRuntimeException;

    iget-object v1, v0, Lio/grpc/StatusRuntimeException;->b:Lh88;

    iget-object v0, v0, Lio/grpc/StatusRuntimeException;->c:Lla5;

    invoke-direct {p0, v1, v0}, Lio/grpc/StatusRuntimeException;-><init>(Lh88;Lla5;)V

    goto :goto_1

    :cond_1
    check-cast v0, Lio/grpc/StatusException;

    new-instance p0, Lio/grpc/StatusRuntimeException;

    iget-object v0, v0, Lio/grpc/StatusException;->b:Lh88;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/grpc/StatusRuntimeException;-><init>(Lh88;Lla5;)V

    goto :goto_1

    :cond_2
    sget-object v0, Lh88;->g:Lh88;

    const-string v1, "unexpected exception"

    invoke-virtual {v0, v1}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object v0

    invoke-virtual {v0, p0}, Lh88;->g(Ljava/lang/Throwable;)Lh88;

    move-result-object p0

    invoke-virtual {p0}, Lh88;->a()Lio/grpc/StatusRuntimeException;

    move-result-object p0

    :goto_1
    throw p0

    :catch_1
    move-exception p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    sget-object v0, Lh88;->f:Lh88;

    const-string v1, "Thread interrupted"

    invoke-virtual {v0, v1}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object v0

    invoke-virtual {v0, p0}, Lh88;->g(Ljava/lang/Throwable;)Lh88;

    move-result-object p0

    invoke-virtual {p0}, Lh88;->a()Lio/grpc/StatusRuntimeException;

    move-result-object p0

    throw p0
.end method
