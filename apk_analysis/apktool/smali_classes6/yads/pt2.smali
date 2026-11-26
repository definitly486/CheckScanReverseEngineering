.class public abstract Lyads/pt2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lyads/qt2;


# direct methods
.method public static final declared-synchronized a(Landroid/content/Context;)Lyads/qt2;
    .locals 2

    const-class v0, Lyads/pt2;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lyads/pt2;->a:Lyads/qt2;

    if-nez v1, :cond_0

    new-instance v1, Lyads/qt2;

    invoke-direct {v1, p0}, Lyads/qt2;-><init>(Landroid/content/Context;)V

    sput-object v1, Lyads/pt2;->a:Lyads/qt2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
