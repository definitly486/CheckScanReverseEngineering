.class public final Lyd6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static final b:Ljava/util/UUID;

.field public static c:Ljava/util/UUID;

.field public static volatile d:Lqb6;

.field public static e:J

.field public static f:J

.field public static volatile g:Z

.field public static volatile h:Z

.field public static volatile i:Lna6;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyd6;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/UUID;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lyd6;->b:Ljava/util/UUID;

    sput-object v0, Lyd6;->c:Ljava/util/UUID;

    return-void
.end method

.method public static a()Ljava/util/UUID;
    .locals 14

    sget-object v0, Lyd6;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lyd6;->c:Ljava/util/UUID;

    sget-object v2, Lyd6;->b:Ljava/util/UUID;

    invoke-static {v1, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v1, :cond_7

    sget-boolean v1, Lyd6;->g:Z

    if-eqz v1, :cond_0

    goto :goto_5

    :cond_0
    sget-object v1, Lyd6;->d:Lqb6;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lqb6;->currentTimeMillis()J

    move-result-wide v5

    goto :goto_0

    :catchall_0
    move-exception v1

    goto/16 :goto_7

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    :goto_0
    sget-wide v7, Lyd6;->f:J

    const-wide/16 v9, 0x0

    cmp-long v1, v7, v9

    const/4 v11, 0x1

    if-lez v1, :cond_2

    const-wide/32 v12, 0x1b7740

    add-long/2addr v7, v12

    cmp-long v1, v7, v5

    if-gtz v1, :cond_2

    move v1, v11

    goto :goto_1

    :cond_2
    move v1, v4

    :goto_1
    if-nez v1, :cond_5

    sget-wide v7, Lyd6;->e:J

    cmp-long v1, v7, v9

    if-lez v1, :cond_3

    const-wide/32 v12, 0x5265c00

    add-long/2addr v7, v12

    cmp-long v1, v7, v5

    if-gtz v1, :cond_3

    move v1, v11

    goto :goto_2

    :cond_3
    move v1, v4

    :goto_2
    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    sget-object v1, Lyd6;->c:Ljava/util/UUID;

    goto :goto_6

    :cond_5
    :goto_3
    sget-boolean v1, Lyd6;->h:Z

    if-eqz v1, :cond_6

    sput-object v2, Lyd6;->c:Ljava/util/UUID;

    sput-wide v9, Lyd6;->e:J

    sput-wide v9, Lyd6;->f:J

    goto :goto_4

    :cond_6
    invoke-static {}, Lgu8;->a()Ljava/util/UUID;

    move-result-object v3

    sput-object v3, Lyd6;->c:Ljava/util/UUID;

    sput-wide v5, Lyd6;->e:J

    sput-wide v5, Lyd6;->f:J

    :goto_4
    move-object v1, v3

    move v4, v11

    goto :goto_6

    :cond_7
    :goto_5
    sget-object v1, Lyd6;->c:Ljava/util/UUID;

    invoke-static {v1, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v3, Lyd6;->c:Ljava/util/UUID;

    :cond_8
    move-object v1, v3

    :goto_6
    sget-object v2, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-eqz v4, :cond_9

    sget-object v0, Lyd6;->i:Lna6;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lna6;->invoke()Ljava/lang/Object;

    :cond_9
    return-object v1

    :goto_7
    monitor-exit v0

    throw v1
.end method

.method public static b()V
    .locals 10

    sget-object v0, Lyd6;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lyd6;->g:Z

    const/4 v2, 0x0

    if-nez v1, :cond_4

    sget-boolean v1, Lyd6;->h:Z

    if-nez v1, :cond_4

    sget-object v1, Lyd6;->c:Ljava/util/UUID;

    sget-object v3, Lyd6;->b:Ljava/util/UUID;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    sget-object v1, Lyd6;->d:Lqb6;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lqb6;->currentTimeMillis()J

    move-result-wide v3

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    :goto_0
    sget-wide v5, Lyd6;->f:J

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    const/4 v7, 0x1

    if-lez v1, :cond_2

    const-wide/32 v8, 0x1b7740

    add-long/2addr v5, v8

    cmp-long v1, v5, v3

    if-gtz v1, :cond_2

    move v1, v7

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    if-eqz v1, :cond_3

    invoke-static {}, Lgu8;->a()Ljava/util/UUID;

    move-result-object v1

    sput-object v1, Lyd6;->c:Ljava/util/UUID;

    sput-wide v3, Lyd6;->e:J

    sput-wide v3, Lyd6;->f:J

    move v2, v7

    goto :goto_2

    :cond_3
    sput-wide v3, Lyd6;->f:J

    :cond_4
    :goto_2
    sget-object v1, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-eqz v2, :cond_5

    sget-object v0, Lyd6;->i:Lna6;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lna6;->invoke()Ljava/lang/Object;

    :cond_5
    return-void

    :goto_3
    monitor-exit v0

    throw v1
.end method
