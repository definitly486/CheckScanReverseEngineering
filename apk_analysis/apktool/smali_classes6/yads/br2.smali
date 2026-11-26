.class public final Lyads/br2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ljava/lang/Object;

.field public static volatile c:Lyads/br2;


# instance fields
.field public final a:Lyads/ar2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyads/br2;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lyads/yg5;->a()Lyads/zg5;

    move-result-object v0

    sget-object v1, Lyads/zg5;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lyads/zg5;->j:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lkx6;->f(III)I

    move-result v1

    :cond_0
    new-instance v0, Lyads/ar2;

    invoke-direct {v0, v1}, Lyads/ar2;-><init>(I)V

    iput-object v0, p0, Lyads/br2;->a:Lyads/ar2;

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
.end method


# virtual methods
.method public final a(Lyads/ja6;)Lyads/gr2;
    .locals 0

    iget-object p0, p0, Lyads/br2;->a:Lyads/ar2;

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/gr2;

    return-object p0
.end method

.method public final a(Lyads/ja6;Lyads/gr2;)V
    .locals 0

    .line 9
    iget-object p0, p0, Lyads/br2;->a:Lyads/ar2;

    invoke-virtual {p0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
