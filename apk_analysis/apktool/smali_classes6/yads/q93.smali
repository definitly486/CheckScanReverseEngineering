.class public abstract Lyads/q93;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static volatile b:Lyads/c23;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyads/q93;->a:Ljava/lang/Object;

    return-void
.end method

.method public static final a(Landroid/content/Context;)Lyads/c23;
    .locals 3

    sget-object v0, Lyads/q93;->b:Lyads/c23;

    if-nez v0, :cond_1

    sget-object v0, Lyads/q93;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lyads/q93;->b:Lyads/c23;

    if-nez v1, :cond_0

    new-instance v1, Lyads/c23;

    const-string v2, "com.huawei.hms.location.LocationServices"

    invoke-direct {v1, p0, v2}, Lyads/c23;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lyads/q93;->b:Lyads/c23;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lyads/q93;->b:Lyads/c23;

    if-eqz p0, :cond_2

    return-object p0

    :cond_2
    const-string p0, "Required value was null."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
