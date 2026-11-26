.class public final Lyads/m00;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/t5;

.field public final b:Lyads/iu4;

.field public final c:Lyads/s5;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyads/t5;

    invoke-direct {v0}, Lyads/t5;-><init>()V

    iput-object v0, p0, Lyads/m00;->a:Lyads/t5;

    new-instance v0, Lyads/iu4;

    invoke-direct {v0}, Lyads/iu4;-><init>()V

    iput-object v0, p0, Lyads/m00;->b:Lyads/iu4;

    sget-object v0, Lyads/s5;->G:Lyads/s5;

    iput-object v0, p0, Lyads/m00;->c:Lyads/s5;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Long;
    .locals 5

    iget-object v0, p0, Lyads/m00;->a:Lyads/t5;

    iget-object v1, v0, Lyads/t5;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lyads/t5;->d:Ljava/util/ArrayList;

    invoke-static {v0}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lyads/r5;

    iget-object v3, v3, Lyads/r5;->a:Lyads/s5;

    iget-object v4, p0, Lyads/m00;->c:Lyads/s5;

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    check-cast v1, Lyads/r5;

    if-nez v1, :cond_2

    return-object v2

    :cond_2
    iget-object p0, v1, Lyads/r5;->b:Ljava/util/Map;

    const-string v0, "duration"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_3

    check-cast p0, Ljava/lang/Long;

    return-object p0

    :cond_3
    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
.end method
