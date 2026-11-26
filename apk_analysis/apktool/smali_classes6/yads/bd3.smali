.class public final Lyads/bd3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/g05;

.field public final b:Lyads/h05;

.field public final c:Lyads/ju;


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Lyads/g05;

    invoke-direct {v0}, Lyads/g05;-><init>()V

    new-instance v1, Lyads/h05;

    invoke-direct {v1}, Lyads/h05;-><init>()V

    new-instance v2, Lyads/ju;

    invoke-direct {v2}, Lyads/ju;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/bd3;->a:Lyads/g05;

    iput-object v1, p0, Lyads/bd3;->b:Lyads/h05;

    iput-object v2, p0, Lyads/bd3;->c:Lyads/ju;

    return-void
.end method


# virtual methods
.method public final a(Lyads/rd3;)Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p1, Lyads/rd3;->g:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lyads/bd3;->a:Lyads/g05;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lyads/g05;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v2, p0, Lyads/bd3;->b:Lyads/h05;

    invoke-virtual {v2, v0, p1}, Lyads/h05;->a(Landroid/graphics/Bitmap;Lyads/rd3;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance v0, Lk57$a;

    invoke-direct {v0, p1}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_0
    nop

    instance-of v0, p1, Lk57$a;

    if-eqz v0, :cond_1

    move-object p1, v1

    :cond_1
    check-cast p1, Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_2
    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_3

    iget-object p0, p0, Lyads/bd3;->c:Lyads/ju;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :try_start_1
    invoke-static {p1, v0, v1}, Lyads/ju;->a(Landroid/graphics/Bitmap;D)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-object v1, p1

    :cond_3
    :goto_2
    return-object v1
.end method
