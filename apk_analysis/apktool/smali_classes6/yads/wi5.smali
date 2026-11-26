.class public final Lyads/wi5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static volatile b:Lyads/xi5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyads/wi5;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lyads/xi5;
    .locals 3

    sget-object v0, Lyads/wi5;->b:Lyads/xi5;

    if-nez v0, :cond_1

    sget-object v0, Lyads/wi5;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lyads/wi5;->b:Lyads/xi5;

    if-nez v1, :cond_0

    new-instance v1, Lyads/xi5;

    const-string v2, "YadPreferenceFile"

    invoke-static {p0, v2}, Lyads/bv3;->a(Landroid/content/Context;Ljava/lang/String;)Lyads/zu3;

    move-result-object p0

    invoke-direct {v1, p0}, Lyads/xi5;-><init>(Lyads/zu3;)V

    sput-object v1, Lyads/wi5;->b:Lyads/xi5;
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
