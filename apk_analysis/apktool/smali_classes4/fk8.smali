.class public final synthetic Lfk8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lfk8;->b:I

    iput-object p2, p0, Lfk8;->c:Ljava/lang/Object;

    iput-object p3, p0, Lfk8;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lfk8;->b:I

    iget-object v1, p0, Lfk8;->d:Ljava/lang/Object;

    iget-object p0, p0, Lfk8;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/my/target/e2$e;

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lcom/my/target/e2$e;->b:Ljava/lang/String;

    new-instance v2, Lcom/my/target/h2;

    invoke-direct {v2, p0}, Lcom/my/target/h2;-><init>(Lcom/my/target/e2$e;)V

    sget-object v3, Lcom/my/target/e2;->e:Ljava/util/WeakHashMap;

    iget-object v3, p0, Lcom/my/target/e2$e;->c:Ldha;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object p0, p0, Lcom/my/target/e2$a;->a:Lao9;

    iget-object v5, p0, Lao9;->Q:Lpp9;

    invoke-interface {v3, v2, v4, v5, v1}, Ldha;->a(Lcom/my/target/h2;Landroid/net/Uri;Lpp9;Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v3}, Ldha;->a()V

    :cond_0
    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v3}, Ldha;->a()V

    iget-object p0, p0, Lao9;->m:Ljava/lang/String;

    const-string v2, "store"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt p0, v2, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result p0

    :goto_0
    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Lcom/my/target/e2$f;

    invoke-direct {p0, v0}, Lcom/my/target/e2$f;-><init>(Ljava/lang/String;)V

    sput-object p0, Lcom/my/target/common/MyTargetActivity;->f:Lcom/my/target/common/MyTargetActivity$a;

    new-instance p0, Landroid/content/Intent;

    const-class v0, Lcom/my/target/common/MyTargetActivity;

    invoke-direct {p0, v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    instance-of v0, v1, Landroid/app/Activity;

    if-nez v0, :cond_4

    const/high16 v0, 0x10000000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_4
    invoke-virtual {v1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_5
    :goto_1
    const/4 p0, 0x0

    invoke-static {v1, v0, p0, p0, p0}, Ly14;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Intent;)Z

    :goto_2
    return-void

    :pswitch_0
    check-cast p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    check-cast v1, Ljava/lang/Exception;

    invoke-static {p0, v1}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->b(Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Ljava/lang/Exception;)V

    return-void

    :pswitch_1
    check-cast p0, Landroidx/camera/core/imagecapture/TakePictureRequest;

    check-cast v1, Landroidx/camera/core/ImageCapture$OutputFileResults;

    invoke-static {p0, v1}, Landroidx/camera/core/imagecapture/TakePictureRequest;->b(Landroidx/camera/core/imagecapture/TakePictureRequest;Landroidx/camera/core/ImageCapture$OutputFileResults;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
