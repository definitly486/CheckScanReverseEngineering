.class public final synthetic Lmd5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic b:Ljava/util/concurrent/Executor;

.field public final synthetic c:Lxh3$a;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Lxh3$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmd5;->b:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lmd5;->c:Lxh3$a;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lmd5;->b:Ljava/util/concurrent/Executor;

    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p0, p0, Lmd5;->c:Lxh3$a;

    invoke-virtual {p0, p1}, Ll0;->m(Ljava/lang/Throwable;)Z

    return-void
.end method
