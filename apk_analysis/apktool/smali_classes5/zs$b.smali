.class public final Lzs$b;
.super Lzs$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzs;->flush()V
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

    iput-object p1, p0, Lzs$b;->c:Lzs;

    invoke-direct {p0, p1}, Lzs$e;-><init>(Lzs;)V

    invoke-static {}, Lr46;->b()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    new-instance v0, Lbu0;

    invoke-direct {v0}, Lbu0;-><init>()V

    invoke-static {}, Lr46;->c()V

    :try_start_0
    sget-object v1, Lr46;->a:La34;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lzs$b;->c:Lzs;

    iget-object v2, v2, Lzs;->b:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lzs$b;->c:Lzs;

    iget-object v3, v3, Lzs;->c:Lbu0;

    iget-wide v4, v3, Lbu0;->c:J

    invoke-virtual {v0, v3, v4, v5}, Lbu0;->H(Lbu0;J)V

    iget-object v3, p0, Lzs$b;->c:Lzs;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lzs;->g:Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, v3, Lzs;->i:Lbt;

    iget-wide v3, v0, Lbu0;->c:J

    invoke-virtual {v2, v0, v3, v4}, Lbt;->H(Lbu0;J)V

    iget-object p0, p0, Lzs$b;->c:Lzs;

    iget-object p0, p0, Lzs;->i:Lbt;

    invoke-virtual {p0}, Lbt;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    :try_start_5
    sget-object v0, Lr46;->a:La34;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method
