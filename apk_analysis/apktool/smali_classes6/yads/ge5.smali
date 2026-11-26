.class public final Lyads/ge5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/he5;

.field public final b:Lyads/pe5;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/ng;)V
    .locals 1

    new-instance v0, Lyads/he5;

    invoke-direct {v0, p1, p2}, Lyads/he5;-><init>(Landroid/content/Context;Lyads/ng;)V

    sget-object p1, Lyads/pe5;->c:Lyads/pe5;

    if-nez p1, :cond_1

    sget-object p1, Lyads/pe5;->b:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    sget-object p2, Lyads/pe5;->c:Lyads/pe5;

    if-nez p2, :cond_0

    new-instance p2, Lyads/pe5;

    invoke-direct {p2}, Lyads/pe5;-><init>()V

    sput-object p2, Lyads/pe5;->c:Lyads/pe5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    move-object p1, p2

    goto :goto_2

    :goto_1
    monitor-exit p1

    throw p0

    :cond_1
    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/ge5;->a:Lyads/he5;

    iput-object p1, p0, Lyads/ge5;->b:Lyads/pe5;

    return-void
.end method
