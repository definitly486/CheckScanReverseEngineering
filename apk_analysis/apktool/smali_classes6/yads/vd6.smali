.class public final Lyads/vd6;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lyads/wd6;
    .locals 1

    sget-object v0, Lyads/wd6;->d:Lyads/wd6;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lyads/wd6;->d:Lyads/wd6;

    if-nez v0, :cond_0

    new-instance v0, Lyads/wd6;

    invoke-direct {v0, p1}, Lyads/wd6;-><init>(Landroid/content/Context;)V

    sput-object v0, Lyads/wd6;->d:Lyads/wd6;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw p1

    :cond_1
    return-object v0
.end method
