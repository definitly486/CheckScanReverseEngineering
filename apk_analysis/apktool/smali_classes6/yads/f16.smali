.class public final Lyads/f16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/u1;


# static fields
.field public static final synthetic d:[Lze4;


# instance fields
.field public final a:Lyads/hj4;

.field public final b:Lyads/i1;

.field public final c:Lyads/e55;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lyads/f16;

    const-string v1, "contextReference"

    const-string v2, "getContextReference()Landroid/content/Context;"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lyads/cb;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lbf4;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v3

    sput-object v1, Lyads/f16;->d:[Lze4;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lyads/hj4;)V
    .locals 2

    sget-object v0, Lyads/i1;->g:Lyads/i1;

    if-nez v0, :cond_1

    sget-object v0, Lyads/i1;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lyads/i1;->g:Lyads/i1;

    if-nez v1, :cond_0

    new-instance v1, Lyads/i1;

    invoke-direct {v1}, Lyads/i1;-><init>()V

    sput-object v1, Lyads/i1;->g:Lyads/i1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    move-object v0, v1

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw p0

    :cond_1
    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/f16;->a:Lyads/hj4;

    iput-object v0, p0, Lyads/f16;->b:Lyads/i1;

    new-instance p2, Lyads/e55;

    invoke-direct {p2, p1}, Lyads/e55;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lyads/f16;->c:Lyads/e55;

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 3

    iget-object v0, p0, Lyads/f16;->c:Lyads/e55;

    sget-object v1, Lyads/f16;->d:[Lze4;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v0, v0, Lyads/e55;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lyads/f16;->a:Lyads/hj4;

    iget-object p0, p0, Lyads/hj4;->a:Lyads/ij4;

    invoke-virtual {p0}, Lyads/ij4;->j()V

    :cond_0
    return-void
.end method

.method public final b(Landroid/app/Activity;)V
    .locals 3

    iget-object v0, p0, Lyads/f16;->c:Lyads/e55;

    sget-object v1, Lyads/f16;->d:[Lze4;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v0, v0, Lyads/e55;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lyads/f16;->a:Lyads/hj4;

    iget-object p0, p0, Lyads/hj4;->a:Lyads/ij4;

    invoke-virtual {p0}, Lyads/ij4;->i()V

    :cond_0
    return-void
.end method
