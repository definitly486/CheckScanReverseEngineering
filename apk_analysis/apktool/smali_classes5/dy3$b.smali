.class public final Ldy3$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls18;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldy3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final b:Lsj3;

.field public c:Z

.field public final synthetic d:Ldy3;


# direct methods
.method public constructor <init>(Ldy3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldy3$b;->d:Ldy3;

    new-instance v0, Lsj3;

    iget-object p1, p1, Ldy3;->d:Lvu0;

    invoke-interface {p1}, Ls18;->r()Lwv8;

    move-result-object p1

    invoke-direct {v0, p1}, Lsj3;-><init>(Lwv8;)V

    iput-object v0, p0, Ldy3$b;->b:Lsj3;

    return-void
.end method


# virtual methods
.method public final H(Lbu0;J)V
    .locals 3

    iget-object v0, p0, Ldy3$b;->d:Ldy3;

    iget-object v0, v0, Ldy3;->d:Lvu0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean p0, p0, Ldy3$b;->c:Z

    if-nez p0, :cond_1

    const-wide/16 v1, 0x0

    cmp-long p0, p2, v1

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p2, p3}, Lvu0;->k(J)Lvu0;

    const-string p0, "\r\n"

    invoke-interface {v0, p0}, Lvu0;->l(Ljava/lang/String;)Lvu0;

    invoke-interface {v0, p1, p2, p3}, Ls18;->H(Lbu0;J)V

    invoke-interface {v0, p0}, Lvu0;->l(Ljava/lang/String;)Lvu0;

    return-void

    :cond_1
    const-string p0, "closed"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized close()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldy3$b;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Ldy3$b;->c:Z

    iget-object v0, p0, Ldy3$b;->d:Ldy3;

    iget-object v0, v0, Ldy3;->d:Lvu0;

    const-string v1, "0\r\n\r\n"

    invoke-interface {v0, v1}, Lvu0;->l(Ljava/lang/String;)Lvu0;

    iget-object v0, p0, Ldy3$b;->b:Lsj3;

    iget-object v1, v0, Lsj3;->e:Lwv8;

    sget-object v2, Lwv8;->d:Lwv8$a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v0, Lsj3;->e:Lwv8;

    invoke-virtual {v1}, Lwv8;->a()Lwv8;

    invoke-virtual {v1}, Lwv8;->b()Lwv8;

    iget-object v0, p0, Ldy3$b;->d:Ldy3;

    const/4 v1, 0x3

    iput v1, v0, Ldy3;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final declared-synchronized flush()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldy3$b;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Ldy3$b;->d:Ldy3;

    iget-object v0, v0, Ldy3;->d:Lvu0;

    invoke-interface {v0}, Lvu0;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final r()Lwv8;
    .locals 0

    iget-object p0, p0, Ldy3$b;->b:Lsj3;

    return-object p0
.end method
