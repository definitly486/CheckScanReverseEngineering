.class public final Lyads/n13;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ly22;

.field public final b:Ljava/util/Map;

.field public final c:Lyads/al0;

.field public final d:Lyads/uz4;

.field public final e:Lyads/g1;


# direct methods
.method public constructor <init>(Ly22;Ljava/util/Map;)V
    .locals 4

    sget-object v0, Lyads/al0;->a:Lyads/al0;

    new-instance v1, Lyads/uz4;

    invoke-direct {v1}, Lyads/uz4;-><init>()V

    sget-object v2, Lyads/g1;->d:Lyads/g1;

    if-nez v2, :cond_1

    sget-object v2, Lyads/g1;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lyads/g1;->d:Lyads/g1;

    if-nez v3, :cond_0

    new-instance v3, Lyads/g1;

    invoke-direct {v3}, Lyads/g1;-><init>()V

    sput-object v3, Lyads/g1;->d:Lyads/g1;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v3, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    goto :goto_2

    :goto_1
    monitor-exit v2

    throw p0

    :cond_1
    :goto_2
    sget-object v2, Lyads/g1;->d:Lyads/g1;

    if-eqz v2, :cond_2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/n13;->a:Ly22;

    iput-object p2, p0, Lyads/n13;->b:Ljava/util/Map;

    iput-object v0, p0, Lyads/n13;->c:Lyads/al0;

    iput-object v1, p0, Lyads/n13;->d:Lyads/uz4;

    iput-object v2, p0, Lyads/n13;->e:Lyads/g1;

    return-void

    :cond_2
    const-string p0, "Required value was null."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
