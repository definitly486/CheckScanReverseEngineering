.class public final Lzs$a;
.super Lzs$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzs;->H(Lbu0;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lzs;


# direct methods
.method public constructor <init>(Lzs;)V
    .locals 0

    iput-object p1, p0, Lzs$a;->c:Lzs;

    invoke-direct {p0, p1}, Lzs$e;-><init>(Lzs;)V

    invoke-static {}, Lr46;->b()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    new-instance v0, Lbu0;

    invoke-direct {v0}, Lbu0;-><init>()V

    invoke-static {}, Lr46;->c()V

    :try_start_0
    sget-object v1, Lr46;->a:La34;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lzs$a;->c:Lzs;

    iget-object v2, v2, Lzs;->b:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v3, p0, Lzs$a;->c:Lzs;

    iget-object v3, v3, Lzs;->c:Lbu0;

    invoke-virtual {v3}, Lbu0;->v()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lbu0;->H(Lbu0;J)V

    iget-object v3, p0, Lzs$a;->c:Lzs;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lzs;->f:Z

    iget v4, v3, Lzs;->m:I

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v2, v3, Lzs;->i:Lbt;

    iget-wide v5, v0, Lbu0;->c:J

    invoke-virtual {v2, v0, v5, v6}, Lbt;->H(Lbu0;J)V

    iget-object v0, p0, Lzs$a;->c:Lzs;

    iget-object v0, v0, Lzs;->b:Ljava/lang/Object;

    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object p0, p0, Lzs$a;->c:Lzs;

    iget v2, p0, Lzs;->m:I

    sub-int/2addr v2, v4

    iput v2, p0, Lzs;->m:I

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :catchall_0
    move-exception p0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_1
    move-exception p0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p0

    :try_start_8
    sget-object v0, Lr46;->a:La34;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_0

    :catchall_3
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method
