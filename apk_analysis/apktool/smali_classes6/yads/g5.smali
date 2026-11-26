.class public final Lyads/g5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/vf4;

.field public final b:Lyads/f5;


# direct methods
.method public constructor <init>(Lyads/vf4;)V
    .locals 2

    sget-object v0, Lyads/f5;->d:Lyads/f5;

    if-nez v0, :cond_1

    sget-object v0, Lyads/f5;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lyads/f5;->d:Lyads/f5;

    if-nez v1, :cond_0

    new-instance v1, Lyads/f5;

    invoke-direct {v1}, Lyads/f5;-><init>()V

    sput-object v1, Lyads/f5;->d:Lyads/f5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    move-object v0, v1

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw p0

    :cond_1
    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/g5;->a:Lyads/vf4;

    iput-object v0, p0, Lyads/g5;->b:Lyads/f5;

    return-void
.end method
