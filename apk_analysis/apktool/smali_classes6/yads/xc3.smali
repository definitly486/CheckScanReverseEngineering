.class public final Lyads/xc3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/graphics/Bitmap;

.field public final b:Lyads/yc3;

.field public final c:Ljava/lang/String;

.field public final synthetic d:Lyads/zc3;


# direct methods
.method public constructor <init>(Lyads/zc3;Landroid/graphics/Bitmap;Ljava/lang/String;Lyads/yc3;)V
    .locals 0

    iput-object p1, p0, Lyads/xc3;->d:Lyads/zc3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/xc3;->a:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lyads/xc3;->c:Ljava/lang/String;

    iput-object p4, p0, Lyads/xc3;->b:Lyads/yc3;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lyads/xc3;->b:Lyads/yc3;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lyads/xc3;->d:Lyads/zc3;

    iget-object v0, v0, Lyads/zc3;->d:Ljava/util/HashMap;

    iget-object v1, p0, Lyads/xc3;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/wc3;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lyads/wc3;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, v0, Lyads/wc3;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v0, v0, Lyads/wc3;->a:Lyads/id3;

    invoke-virtual {v0}, Lyads/id3;->a()V

    iget-object v0, p0, Lyads/xc3;->d:Lyads/zc3;

    iget-object v0, v0, Lyads/zc3;->d:Ljava/util/HashMap;

    iget-object p0, p0, Lyads/xc3;->c:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    iget-object v0, p0, Lyads/xc3;->d:Lyads/zc3;

    iget-object v0, v0, Lyads/zc3;->e:Ljava/util/HashMap;

    iget-object v1, p0, Lyads/xc3;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/wc3;

    if-eqz v0, :cond_3

    iget-object v1, v0, Lyads/wc3;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, v0, Lyads/wc3;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lyads/wc3;->a:Lyads/id3;

    invoke-virtual {v1}, Lyads/id3;->a()V

    :cond_2
    iget-object v0, v0, Lyads/wc3;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lyads/xc3;->d:Lyads/zc3;

    iget-object v0, v0, Lyads/zc3;->e:Ljava/util/HashMap;

    iget-object p0, p0, Lyads/xc3;->c:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    return-void

    :cond_4
    const-string p0, "Must be invoked from the main thread."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method
