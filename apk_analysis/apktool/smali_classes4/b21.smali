.class public final synthetic Lb21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;
.implements Leh8$a;
.implements Ls0a$b;


# instance fields
.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lb21;->b:Ljava/lang/Object;

    iput-object p2, p0, Lb21;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lb21;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/WeakReference;

    iget-object p0, p0, Lb21;->c:Ljava/lang/Object;

    check-cast p0, Lh14;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    sget-object v1, Ls0a;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh14;

    if-ne p0, v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lxha;->d:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Bitmap;

    if-eqz p0, :cond_1

    instance-of v1, v0, Lcom/my/target/zh;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/my/target/zh;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/my/target/zh;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    return-void

    :cond_0
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method public attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lb21;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/core/CameraX;

    iget-object p0, p0, Lb21;->c:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {v0, p0, p1}, Landroidx/camera/core/CameraX;->d(Landroidx/camera/core/CameraX;Landroid/content/Context;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public execute()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lb21;->b:Ljava/lang/Object;

    check-cast v0, Lr89;

    iget-object p0, p0, Lb21;->c:Ljava/lang/Object;

    check-cast p0, Lhz;

    iget-object v0, v0, Lr89;->c:Lf13;

    invoke-interface {v0, p0}, Lf13;->K(Lhz;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method
