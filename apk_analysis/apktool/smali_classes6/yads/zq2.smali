.class public final Lyads/zq2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ljava/lang/Object;

.field public static volatile d:Lyads/zq2;


# instance fields
.field public final a:Lyads/yq2;

.field public b:Lyads/ok5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyads/zq2;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Lyads/yq2;

    invoke-direct {v0}, Lyads/yq2;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/zq2;->a:Lyads/yq2;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lyads/yv;
    .locals 2

    sget-object v0, Lyads/zq2;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lyads/zq2;->b:Lyads/ok5;

    if-nez v1, :cond_0

    iget-object v1, p0, Lyads/zq2;->a:Lyads/yq2;

    invoke-virtual {v1, p1}, Lyads/yq2;->a(Landroid/content/Context;)Lyads/ok5;

    move-result-object v1

    iput-object v1, p0, Lyads/zq2;->b:Lyads/ok5;
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
.end method
