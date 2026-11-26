.class public final Lyads/u10;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:Lyads/w10;

.field public static final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyads/u10;->b:Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lyads/w10;
    .locals 2

    sget-object v0, Lyads/u10;->a:Lyads/w10;

    if-nez v0, :cond_1

    sget-object v0, Lyads/u10;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lyads/u10;->a:Lyads/w10;

    if-nez v1, :cond_0

    invoke-static {p0}, Lyads/v10;->a(Landroid/content/Context;)Lyads/w10;

    move-result-object p0

    sput-object p0, Lyads/u10;->a:Lyads/w10;

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
    sget-object p0, Lyads/u10;->a:Lyads/w10;

    if-eqz p0, :cond_2

    return-object p0

    :cond_2
    const-string p0, "Required value was null."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
