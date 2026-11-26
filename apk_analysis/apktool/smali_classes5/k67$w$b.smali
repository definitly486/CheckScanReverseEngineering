.class public final Lk67$w$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk67$w;->c(Lh88;Ldm1$a;Lla5;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic b:Lk67$q;

.field public final synthetic c:Lk67$x;

.field public final synthetic d:Lk67$w;


# direct methods
.method public constructor <init>(Lk67$w;Lk67$q;Lk67$x;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk67$w$b;->d:Lk67$w;

    iput-object p2, p0, Lk67$w$b;->b:Lk67$q;

    iput-object p3, p0, Lk67$w$b;->c:Lk67$x;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lk67$w$b;->b:Lk67$q;

    iget-object v0, v0, Lk67$q;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lk67$w$b;->b:Lk67$q;

    iget-boolean v2, v1, Lk67$q;->c:Z

    if-eqz v2, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v1, Lk67$q;->c:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lk67$w$b;->d:Lk67$w;

    iget-object v0, v0, Lk67$w;->b:Lk67;

    iget-object v0, v0, Lk67;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Lk67$w$b$a;

    invoke-direct {v1, p0}, Lk67$w$b$a;-><init>(Lk67$w$b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
