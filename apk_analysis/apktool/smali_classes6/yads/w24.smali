.class public final Lyads/w24;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic d:[Lze4;


# instance fields
.field public final a:Lyads/e55;

.field public b:I

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lyads/w24;

    const-string v1, "activityRef"

    const-string v2, "getActivityRef()Landroid/app/Activity;"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lyads/mo;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lxe4;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v3

    sput-object v1, Lyads/w24;->d:[Lze4;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyads/e55;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lyads/e55;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lyads/w24;->a:Lyads/e55;

    const/4 v0, -0x1

    iput v0, p0, Lyads/w24;->b:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget-boolean v0, p0, Lyads/w24;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lyads/w24;->a:Lyads/e55;

    sget-object v4, Lyads/w24;->d:[Lze4;

    aget-object v4, v4, v2

    iget-object v3, v3, Lyads/e55;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_1

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-eq v4, v5, :cond_1

    iget v4, p0, Lyads/w24;->b:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_1

    :cond_1
    :goto_0
    iput-boolean v2, p0, Lyads/w24;->c:Z

    iput v1, p0, Lyads/w24;->b:I

    invoke-virtual {p0, v0}, Lyads/w24;->b(Landroid/app/Activity;)V

    return-void

    :goto_1
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-boolean v2, p0, Lyads/w24;->c:Z

    iput v1, p0, Lyads/w24;->b:I

    invoke-virtual {p0, v0}, Lyads/w24;->b(Landroid/app/Activity;)V

    return-void

    :goto_2
    iput-boolean v2, p0, Lyads/w24;->c:Z

    iput v1, p0, Lyads/w24;->b:I

    invoke-virtual {p0, v0}, Lyads/w24;->b(Landroid/app/Activity;)V

    throw v3
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 3

    .line 73
    :try_start_0
    iget-boolean v0, p0, Lyads/w24;->c:Z

    if-eqz v0, :cond_0

    return-void

    .line 74
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_1

    return-void

    .line 75
    :cond_1
    invoke-virtual {p0, p1}, Lyads/w24;->b(Landroid/app/Activity;)V

    .line 76
    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lyads/w24;->b:I

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v1, 0x258

    const/4 v2, 0x1

    if-lt v0, v1, :cond_2

    const/16 v0, 0xe

    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_3

    const/4 v0, 0x7

    goto :goto_0

    :cond_3
    const/4 v0, 0x6

    .line 79
    :goto_0
    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 80
    iput-boolean v2, p0, Lyads/w24;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 81
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public final b(Landroid/app/Activity;)V
    .locals 2

    iget-object p0, p0, Lyads/w24;->a:Lyads/e55;

    sget-object v0, Lyads/w24;->d:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lyads/e55;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method
