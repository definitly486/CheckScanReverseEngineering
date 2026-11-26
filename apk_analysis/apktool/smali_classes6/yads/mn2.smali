.class public final Lyads/mn2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/os5;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lyads/os5;

    invoke-direct {v0}, Lyads/os5;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/mn2;->a:Lyads/os5;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lyads/zg5;->l:Lyads/zg5;

    if-nez v0, :cond_1

    sget-object v0, Lyads/zg5;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lyads/zg5;->l:Lyads/zg5;

    if-nez v1, :cond_0

    new-instance v1, Lyads/zg5;

    invoke-direct {v1}, Lyads/zg5;-><init>()V

    sput-object v1, Lyads/zg5;->l:Lyads/zg5;
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
    invoke-virtual {v0, p1}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v0, v0, Lyads/fe5;->B:Z

    if-eqz v0, :cond_3

    iget-object p0, p0, Lyads/mn2;->a:Lyads/os5;

    invoke-virtual {p0, p1, p2}, Lyads/os5;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_3

    :cond_2
    return-object p0

    :cond_3
    :goto_3
    return-object p2
.end method
