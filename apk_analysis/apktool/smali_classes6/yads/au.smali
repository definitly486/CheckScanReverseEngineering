.class public final Lyads/au;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/ExecutorService;

.field public final b:Lyads/ju;

.field public final c:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lyads/ju;

    invoke-direct {v1}, Lyads/ju;-><init>()V

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/au;->a:Ljava/util/concurrent/ExecutorService;

    iput-object v1, p0, Lyads/au;->b:Lyads/ju;

    iput-object v2, p0, Lyads/au;->c:Landroid/os/Handler;

    return-void
.end method
