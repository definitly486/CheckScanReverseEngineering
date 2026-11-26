.class public final Lyads/dg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyads/dg;

.field public static volatile b:Lyads/vg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/dg;

    invoke-direct {v0}, Lyads/dg;-><init>()V

    sput-object v0, Lyads/dg;->a:Lyads/dg;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/content/Context;)Lyads/vg;
    .locals 2

    sget-object v0, Lyads/dg;->b:Lyads/vg;

    if-nez v0, :cond_1

    sget-object v0, Lyads/dg;->a:Lyads/dg;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lyads/w60;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    sget-object v1, Lyads/dg;->b:Lyads/vg;

    if-nez v1, :cond_0

    new-instance v1, Lyads/vg;

    invoke-direct {v1, p0}, Lyads/vg;-><init>(Landroid/content/Context;)V

    sput-object v1, Lyads/dg;->b:Lyads/vg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw p0

    :cond_1
    return-object v0
.end method
