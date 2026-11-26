.class public final Lky3;
.super Ljl8;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lhy3$c;

.field public final synthetic f:Lor7;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lhy3$c;Lor7;)V
    .locals 0

    iput-object p2, p0, Lky3;->e:Lhy3$c;

    iput-object p3, p0, Lky3;->f:Lor7;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Ljl8;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 12

    iget-object v0, p0, Lky3;->e:Lhy3$c;

    iget-object p0, p0, Lky3;->f:Lor7;

    new-instance v1, Lr07;

    invoke-direct {v1}, Lr07;-><init>()V

    iget-object v0, v0, Lhy3$c;->c:Lhy3;

    iget-object v2, v0, Lhy3;->x:Lwy3;

    monitor-enter v2

    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, v0, Lhy3;->r:Lor7;

    new-instance v4, Lor7;

    invoke-direct {v4}, Lor7;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const/16 v7, 0xa

    const/4 v8, 0x1

    if-ge v6, v7, :cond_1

    shl-int v7, v8, v6

    iget v8, v3, Lor7;->a:I

    and-int/2addr v7, v8

    if-eqz v7, :cond_0

    iget-object v7, v3, Lor7;->b:[I

    aget v7, v7, v6

    invoke-virtual {v4, v6, v7}, Lor7;->b(II)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    move v6, v5

    :goto_1
    if-ge v6, v7, :cond_3

    shl-int v9, v8, v6

    iget v10, p0, Lor7;->a:I

    and-int/2addr v9, v10

    if-eqz v9, :cond_2

    iget-object v9, p0, Lor7;->b:[I

    aget v9, v9, v6

    invoke-virtual {v4, v6, v9}, Lor7;->b(II)V

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    iput-object v4, v1, Lr07;->b:Ljava/lang/Object;

    invoke-virtual {v4}, Lor7;->a()I

    move-result p0

    int-to-long v6, p0

    invoke-virtual {v3}, Lor7;->a()I

    move-result p0

    int-to-long v3, p0

    sub-long/2addr v6, v3

    const-wide/16 v3, 0x0

    cmp-long p0, v6, v3

    if-eqz p0, :cond_5

    iget-object v8, v0, Lhy3;->c:Ljava/util/LinkedHashMap;

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_2

    :cond_4
    iget-object v8, v0, Lhy3;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v8

    new-array v9, v5, [Lvy3;

    invoke-interface {v8, v9}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lvy3;

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_6

    :cond_5
    :goto_2
    const/4 v8, 0x0

    :goto_3
    iget-object v9, v1, Lr07;->b:Ljava/lang/Object;

    check-cast v9, Lor7;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v9, v0, Lhy3;->r:Lor7;

    iget-object v9, v0, Lhy3;->k:Ldo8;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v0, Lhy3;->d:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " onSettings"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Liy3;

    invoke-direct {v11, v10, v0, v1}, Liy3;-><init>(Ljava/lang/String;Lhy3;Lr07;)V

    invoke-virtual {v9, v11, v3, v4}, Ldo8;->c(Ljl8;J)V

    sget-object v3, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v3, v0, Lhy3;->x:Lwy3;

    iget-object v1, v1, Lr07;->b:Ljava/lang/Object;

    check-cast v1, Lor7;

    invoke-virtual {v3, v1}, Lwy3;->a(Lor7;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_7

    :catch_0
    move-exception v1

    :try_start_4
    sget-object v3, Lp03;->PROTOCOL_ERROR:Lp03;

    invoke-virtual {v0, v3, v3, v1}, Lhy3;->a(Lp03;Lp03;Ljava/io/IOException;)V

    :goto_4
    sget-object v0, Lj59;->a:Lj59;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v2

    if-eqz v8, :cond_7

    array-length v0, v8

    :goto_5
    if-ge v5, v0, :cond_7

    aget-object v1, v8, v5

    monitor-enter v1

    :try_start_5
    iget-wide v2, v1, Lvy3;->f:J

    add-long/2addr v2, v6

    iput-wide v2, v1, Lvy3;->f:J

    if-lez p0, :cond_6

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :cond_6
    sget-object v2, Lj59;->a:Lj59;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :catchall_2
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_7
    const-wide/16 v0, -0x1

    return-wide v0

    :goto_6
    :try_start_6
    monitor-exit v0

    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_7
    monitor-exit v2

    throw p0
.end method
