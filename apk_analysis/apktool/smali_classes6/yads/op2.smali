.class public final Lyads/op2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final b:Lyads/r75;

.field public final c:Lyads/z85;

.field public final d:Lyads/dw;


# direct methods
.method public constructor <init>(Lyads/r75;Lyads/z85;Lyads/dw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/op2;->b:Lyads/r75;

    iput-object p2, p0, Lyads/op2;->c:Lyads/z85;

    iput-object p3, p0, Lyads/op2;->d:Lyads/dw;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lyads/op2;->b:Lyads/r75;

    invoke-virtual {v0}, Lyads/r75;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lyads/op2;->b:Lyads/r75;

    const-string v0, "canceled-at-delivery"

    invoke-virtual {p0, v0}, Lyads/r75;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lyads/op2;->c:Lyads/z85;

    iget-object v1, v0, Lyads/z85;->c:Lyads/hi6;

    iget-object v2, p0, Lyads/op2;->b:Lyads/r75;

    if-nez v1, :cond_1

    iget-object v0, v0, Lyads/z85;->a:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Lyads/r75;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, v2, Lyads/r75;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, v2, Lyads/r75;->g:Lyads/x85;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    invoke-interface {v2, v1}, Lyads/x85;->a(Lyads/hi6;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lyads/op2;->c:Lyads/z85;

    iget-boolean v0, v0, Lyads/z85;->d:Z

    iget-object v1, p0, Lyads/op2;->b:Lyads/r75;

    if-eqz v0, :cond_3

    const-string v0, "intermediate-response"

    invoke-virtual {v1, v0}, Lyads/r75;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v0, "done"

    invoke-virtual {v1, v0}, Lyads/r75;->b(Ljava/lang/String;)V

    :goto_1
    iget-object p0, p0, Lyads/op2;->d:Lyads/dw;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lyads/dw;->run()V

    :cond_4
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
