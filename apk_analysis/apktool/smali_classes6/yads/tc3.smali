.class public final Lyads/tc3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/y85;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lyads/zc3;


# direct methods
.method public constructor <init>(Lyads/zc3;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lyads/tc3;->b:Lyads/zc3;

    iput-object p2, p0, Lyads/tc3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lyads/tc3;->b:Lyads/zc3;

    iget-object p0, p0, Lyads/tc3;->a:Ljava/lang/String;

    iget-object v1, v0, Lyads/zc3;->c:Lyads/sn4;

    invoke-virtual {v1, p0, p1}, Lyads/sn4;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v1, v0, Lyads/zc3;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/wc3;

    if-eqz v1, :cond_0

    iput-object p1, v1, Lyads/wc3;->b:Landroid/graphics/Bitmap;

    iget-object p1, v0, Lyads/zc3;->e:Ljava/util/HashMap;

    invoke-virtual {p1, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, v0, Lyads/zc3;->g:Lyads/vc3;

    if-nez p0, :cond_0

    new-instance p0, Lyads/vc3;

    invoke-direct {p0, v0}, Lyads/vc3;-><init>(Lyads/zc3;)V

    iput-object p0, v0, Lyads/zc3;->g:Lyads/vc3;

    iget-object p1, v0, Lyads/zc3;->f:Landroid/os/Handler;

    iget v0, v0, Lyads/zc3;->b:I

    int-to-long v0, v0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
