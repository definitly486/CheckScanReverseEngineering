.class public abstract Lyads/jg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyads/eh3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/eh3;

    invoke-direct {v0}, Lyads/eh3;-><init>()V

    sput-object v0, Lyads/jg;->a:Lyads/eh3;

    return-void
.end method

.method public static final a(Landroid/content/Context;)Lyads/tb3;
    .locals 3

    sget-object v0, Lyads/jg;->a:Lyads/eh3;

    iget-object v1, v0, Lyads/eh3;->a:Ljava/lang/Object;

    if-nez v1, :cond_1

    iget-object v1, v0, Lyads/eh3;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lyads/eh3;->a:Ljava/lang/Object;

    if-nez v2, :cond_0

    invoke-static {p0}, Lyads/jg;->b(Landroid/content/Context;)Lyads/tb3;

    move-result-object p0

    iput-object p0, v0, Lyads/eh3;->a:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    move-object p0, v2

    :goto_0
    monitor-exit v1

    move-object v1, p0

    goto :goto_2

    :goto_1
    monitor-exit v1

    throw p0

    :cond_1
    :goto_2
    check-cast v1, Lyads/tb3;

    return-object v1
.end method

.method public static final b(Landroid/content/Context;)Lyads/tb3;
    .locals 1

    new-instance v0, Lyads/tb3;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/tb3;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
