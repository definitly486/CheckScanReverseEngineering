.class public final Lyads/qy2;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:Lyg5;

.field public c:Lyads/ry2;

.field public d:Lyads/cz2;

.field public e:[B

.field public f:I

.field public final synthetic g:Lyads/ry2;

.field public final synthetic h:Lyads/cz2;

.field public final synthetic i:[B


# direct methods
.method public constructor <init>(Lyads/ry2;Lyads/cz2;[BLe02;)V
    .locals 0

    iput-object p1, p0, Lyads/qy2;->g:Lyads/ry2;

    iput-object p2, p0, Lyads/qy2;->h:Lyads/cz2;

    iput-object p3, p0, Lyads/qy2;->i:[B

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 2

    new-instance p1, Lyads/qy2;

    iget-object v0, p0, Lyads/qy2;->g:Lyads/ry2;

    iget-object v1, p0, Lyads/qy2;->h:Lyads/cz2;

    iget-object p0, p0, Lyads/qy2;->i:[B

    invoke-direct {p1, v0, v1, p0, p2}, Lyads/qy2;-><init>(Lyads/ry2;Lyads/cz2;[BLe02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lyads/qy2;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lyads/qy2;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lyads/qy2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lyads/qy2;->f:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lyads/qy2;->e:[B

    iget-object v1, p0, Lyads/qy2;->d:Lyads/cz2;

    iget-object v2, p0, Lyads/qy2;->c:Lyads/ry2;

    iget-object p0, p0, Lyads/qy2;->b:Lyg5;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lyads/qy2;->g:Lyads/ry2;

    iget-object v1, p0, Lyads/qy2;->h:Lyads/cz2;

    sget-object v4, Lyads/ry2;->d:[B

    invoke-virtual {p1, v1}, Lyads/ry2;->c(Lyads/cz2;)Lyg5;

    move-result-object p1

    iget-object v1, p0, Lyads/qy2;->g:Lyads/ry2;

    iget-object v4, p0, Lyads/qy2;->h:Lyads/cz2;

    iget-object v5, p0, Lyads/qy2;->i:[B

    iput-object p1, p0, Lyads/qy2;->b:Lyg5;

    iput-object v1, p0, Lyads/qy2;->c:Lyads/ry2;

    iput-object v4, p0, Lyads/qy2;->d:Lyads/cz2;

    iput-object v5, p0, Lyads/qy2;->e:[B

    iput v2, p0, Lyads/qy2;->f:I

    invoke-interface {p1, v3, p0}, Lyg5;->lock(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    move-object p0, p1

    move-object v2, v1

    move-object v1, v4

    move-object v0, v5

    :goto_0
    :try_start_0
    sget-object p1, Lyads/ry2;->d:[B

    invoke-virtual {v2, v1}, Lyads/ry2;->b(Lyads/cz2;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p1}, Lyads/ry2;->a(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    invoke-static {v2, v0, v1}, Lyads/ry2;->a(Lyads/ry2;[BLyads/cz2;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {v0}, Lyads/ry2;->a(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_5
    move-object p1, v3

    :goto_1
    invoke-interface {p0, v3}, Lyg5;->unlock(Ljava/lang/Object;)V

    return-object p1

    :goto_2
    invoke-interface {p0, v3}, Lyg5;->unlock(Ljava/lang/Object;)V

    throw p1
.end method
