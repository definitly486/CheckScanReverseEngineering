.class public final Lyads/zt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final b:Landroid/graphics/Bitmap;

.field public final c:Lyads/t65;

.field public final d:Lyads/ju;

.field public final e:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lyads/t65;Lyads/ju;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/zt;->b:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lyads/zt;->c:Lyads/t65;

    iput-object p3, p0, Lyads/zt;->d:Lyads/ju;

    iput-object p4, p0, Lyads/zt;->e:Landroid/os/Handler;

    return-void
.end method

.method public static final a(Lyads/zt;Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object p0, p0, Lyads/zt;->c:Lyads/t65;

    iget-object v0, p0, Lyads/t65;->a:Lyads/u65;

    iget-object v0, v0, Lyads/u65;->d:Lyads/s65;

    iget-object v1, p0, Lyads/t65;->b:Lyads/am4;

    iget-object p0, p0, Lyads/t65;->c:Lyads/v65;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0, p1}, Lyads/s65;->a(Lyads/am4;Lyads/v65;Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 17
    iget-object v0, p0, Lyads/zt;->e:Landroid/os/Handler;

    new-instance v1, Lzs2;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p0, p1}, Lzs2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final run()V
    .locals 4

    iget-object v0, p0, Lyads/zt;->d:Lyads/ju;

    iget-object v1, p0, Lyads/zt;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide v2, 0x3fb999999999999aL    # 0.1

    :try_start_0
    invoke-static {v1, v2, v3}, Lyads/ju;->a(Landroid/graphics/Bitmap;D)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    invoke-virtual {p0, v1}, Lyads/zt;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
