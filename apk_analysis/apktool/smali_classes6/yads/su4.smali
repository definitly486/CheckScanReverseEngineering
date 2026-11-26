.class public final Lyads/su4;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lyads/uu4;
    .locals 3

    sget-object v0, Lyads/uu4;->i:Lyads/uu4;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lyads/i90;

    invoke-direct {v0}, Lyads/i90;-><init>()V

    invoke-static {}, Lrm9;->b()Ljd8;

    move-result-object v1

    sget-object v2, Lqo2;->a:Loi2;

    sget-object v2, Lsh2;->c:Lsh2;

    invoke-static {v1, v2}, Lo22$a$a;->d(Lo22$a;Lo22;)Lo22;

    move-result-object v1

    invoke-interface {v1, v0}, Lo22;->plus(Lo22;)Lo22;

    move-result-object v0

    invoke-static {v0}, Lz22;->a(Lo22;)Lkz1;

    move-result-object v0

    sget-object v1, Lyads/uu4;->i:Lyads/uu4;

    if-nez v1, :cond_0

    new-instance v1, Lyads/uu4;

    invoke-direct {v1, p1, v0}, Lyads/uu4;-><init>(Landroid/content/Context;Ly22;)V

    sput-object v1, Lyads/uu4;->i:Lyads/uu4;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    :goto_1
    monitor-exit p0

    throw p1

    :cond_1
    return-object v0
.end method
