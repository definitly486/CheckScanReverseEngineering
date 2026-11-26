.class public final Lyads/xk4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/ql0;

.field public final b:Lyads/wk4;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/e4;Lyads/bf5;Lyads/d9;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lyads/ql0;

    invoke-direct {v0, p1, p2, p3, p4}, Lyads/ql0;-><init>(Landroid/content/Context;Lyads/e4;Lyads/bf5;Lyads/d9;)V

    iput-object v0, p0, Lyads/xk4;->a:Lyads/ql0;

    new-instance p1, Lyads/wk4;

    sget-object p2, Lyads/br2;->c:Lyads/br2;

    if-nez p2, :cond_1

    sget-object p2, Lyads/br2;->b:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    sget-object p3, Lyads/br2;->c:Lyads/br2;

    if-nez p3, :cond_0

    new-instance p3, Lyads/br2;

    invoke-direct {p3}, Lyads/br2;-><init>()V

    sput-object p3, Lyads/br2;->c:Lyads/br2;
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
    invoke-direct {p1, p2}, Lyads/wk4;-><init>(Lyads/br2;)V

    iput-object p1, p0, Lyads/xk4;->b:Lyads/wk4;

    return-void
.end method
