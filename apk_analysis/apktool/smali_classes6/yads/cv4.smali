.class public final Lyads/cv4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/i16;

.field public final b:Lyads/d16;

.field public final c:Lyads/z75;

.field public final d:Lyads/zv3;

.field public final e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/e4;Lyads/bf5;Lyads/i16;)V
    .locals 1

    new-instance v0, Lyads/d16;

    invoke-direct {v0, p1, p2, p3}, Lyads/d16;-><init>(Landroid/content/Context;Lyads/e4;Lyads/bf5;)V

    sget-object p2, Lyads/z75;->b:Lyads/z75;

    if-nez p2, :cond_1

    sget-object p2, Lyads/z75;->a:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    sget-object p3, Lyads/z75;->b:Lyads/z75;

    if-nez p3, :cond_0

    new-instance p3, Lyads/z75;

    invoke-direct {p3}, Lyads/z75;-><init>()V

    sput-object p3, Lyads/z75;->b:Lyads/z75;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p2

    move-object p2, p3

    goto :goto_2

    :goto_1
    monitor-exit p2

    throw p0

    :cond_1
    :goto_2
    new-instance p3, Lyads/zv3;

    invoke-direct {p3}, Lyads/zv3;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lyads/cv4;->a:Lyads/i16;

    iput-object v0, p0, Lyads/cv4;->b:Lyads/d16;

    iput-object p2, p0, Lyads/cv4;->c:Lyads/z75;

    iput-object p3, p0, Lyads/cv4;->d:Lyads/zv3;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lyads/cv4;->e:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/Map;Lyads/h75;)V
    .locals 8

    iget-object v0, p0, Lyads/cv4;->d:Lyads/zv3;

    invoke-virtual {v0, p1, p2}, Lyads/zv3;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lyads/yg5;->a()Lyads/zg5;

    move-result-object v0

    iget-object v1, p0, Lyads/cv4;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object v4

    new-instance v0, Lyads/av4;

    iget-object v1, p0, Lyads/cv4;->e:Landroid/content/Context;

    new-instance v2, Lyads/bv4;

    iget-object v5, p0, Lyads/cv4;->b:Lyads/d16;

    iget-object v6, p0, Lyads/cv4;->a:Lyads/i16;

    move-object v3, p1

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lyads/bv4;-><init>(Ljava/lang/String;Lyads/fe5;Lyads/d16;Lyads/i16;Lyads/h75;)V

    invoke-direct {v0, v1, p2, v2}, Lyads/av4;-><init>(Landroid/content/Context;Ljava/lang/String;Lyads/ds;)V

    iget-object p1, p0, Lyads/cv4;->c:Lyads/z75;

    iget-object p0, p0, Lyads/cv4;->e:Landroid/content/Context;

    monitor-enter p1

    :try_start_0
    invoke-static {p0}, Lyads/qn4;->a(Landroid/content/Context;)Lyads/e85;

    move-result-object p0

    invoke-virtual {p0, v0}, Lyads/e85;->a(Lyads/r75;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit p1

    throw p0
.end method
