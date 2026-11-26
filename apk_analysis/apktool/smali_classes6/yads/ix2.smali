.class public final Lyads/ix2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/t5;

.field public final b:Lyads/al4;

.field public final c:Lyads/zl4;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/t5;)V
    .locals 1

    new-instance v0, Lyads/al4;

    invoke-direct {v0, p1}, Lyads/al4;-><init>(Landroid/content/Context;)V

    new-instance p1, Lyads/zl4;

    invoke-direct {p1}, Lyads/zl4;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/ix2;->a:Lyads/t5;

    iput-object v0, p0, Lyads/ix2;->b:Lyads/al4;

    iput-object p1, p0, Lyads/ix2;->c:Lyads/zl4;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ix2;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lyads/ix2;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lyads/ix2;->b:Lyads/al4;

    invoke-virtual {p0}, Lyads/al4;->a()V

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
