.class public abstract Lcom/tapjoy/internal/u2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:J

.field public static volatile b:J

.field public static volatile c:J

.field public static final synthetic d:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-class v4, Lcom/tapjoy/internal/u2;

    monitor-enter v4

    :try_start_0
    sput-wide v2, Lcom/tapjoy/internal/u2;->a:J

    sput-wide v0, Lcom/tapjoy/internal/u2;->b:J

    sget-wide v0, Lcom/tapjoy/internal/u2;->a:J

    sget-wide v2, Lcom/tapjoy/internal/u2;->b:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/tapjoy/internal/u2;->c:J

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method
