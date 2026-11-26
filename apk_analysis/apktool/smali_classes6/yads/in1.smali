.class public final Lyads/in1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lyads/jn1;
    .locals 2

    sget-object v0, Lyads/jn1;->d:Lyads/jn1;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    sget-object v0, Lyads/jn1;->d:Lyads/jn1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    new-instance v0, Lyads/jn1;

    sget-object v1, Lyads/jn1;->c:Lyads/do1;

    invoke-direct {v0, p1, v1}, Lyads/jn1;-><init>(Landroid/content/Context;Lyads/do1;)V

    sput-object v0, Lyads/jn1;->d:Lyads/jn1;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
