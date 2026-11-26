.class public final Lyads/jo6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/zp4;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lyads/zp4;->g:Lyads/xp4;

    sget-object v1, Lyads/zp4;->i:Lyads/zp4;

    if-nez v1, :cond_1

    monitor-enter v0

    :try_start_0
    sget-object v1, Lyads/zp4;->i:Lyads/zp4;

    if-nez v1, :cond_0

    new-instance v1, Lyads/zp4;

    invoke-direct {v1, p1}, Lyads/zp4;-><init>(Landroid/content/Context;)V

    sput-object v1, Lyads/zp4;->i:Lyads/zp4;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw p0

    :cond_1
    :goto_2
    iput-object v1, p0, Lyads/jo6;->a:Lyads/zp4;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/jo6;->b:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lyads/jo6;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Lyads/d96;)V
    .locals 2

    iget-object v0, p0, Lyads/jo6;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lyads/jo6;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lyads/jo6;->a:Lyads/zp4;

    invoke-virtual {p0, p1}, Lyads/zp4;->b(Lyads/d96;)V

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
