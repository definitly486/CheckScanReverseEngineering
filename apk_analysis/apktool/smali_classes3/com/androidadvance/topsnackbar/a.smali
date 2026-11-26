.class public final Lcom/androidadvance/topsnackbar/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidadvance/topsnackbar/a$c;,
        Lcom/androidadvance/topsnackbar/a$b;
    }
.end annotation


# static fields
.field public static e:Lcom/androidadvance/topsnackbar/a;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Landroid/os/Handler;

.field public c:Lcom/androidadvance/topsnackbar/a$c;

.field public d:Lcom/androidadvance/topsnackbar/a$c;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/androidadvance/topsnackbar/a;->a:Ljava/lang/Object;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/androidadvance/topsnackbar/a$a;

    invoke-direct {v2, p0}, Lcom/androidadvance/topsnackbar/a$a;-><init>(Lcom/androidadvance/topsnackbar/a;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/androidadvance/topsnackbar/a;->b:Landroid/os/Handler;

    return-void
.end method

.method public static a(Lcom/androidadvance/topsnackbar/a$c;I)Z
    .locals 0

    iget-object p0, p0, Lcom/androidadvance/topsnackbar/a$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/androidadvance/topsnackbar/a$b;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/androidadvance/topsnackbar/a$b;->dismiss(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static c()Lcom/androidadvance/topsnackbar/a;
    .locals 1

    sget-object v0, Lcom/androidadvance/topsnackbar/a;->e:Lcom/androidadvance/topsnackbar/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/androidadvance/topsnackbar/a;

    invoke-direct {v0}, Lcom/androidadvance/topsnackbar/a;-><init>()V

    sput-object v0, Lcom/androidadvance/topsnackbar/a;->e:Lcom/androidadvance/topsnackbar/a;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final b(Lcom/androidadvance/topsnackbar/TSnackbar$b;)V
    .locals 1

    iget-object v0, p0, Lcom/androidadvance/topsnackbar/a;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/androidadvance/topsnackbar/a;->d(Lcom/androidadvance/topsnackbar/a$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/androidadvance/topsnackbar/a;->b:Landroid/os/Handler;

    iget-object p0, p0, Lcom/androidadvance/topsnackbar/a;->c:Lcom/androidadvance/topsnackbar/a$c;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final d(Lcom/androidadvance/topsnackbar/a$b;)Z
    .locals 0

    iget-object p0, p0, Lcom/androidadvance/topsnackbar/a;->c:Lcom/androidadvance/topsnackbar/a$c;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/androidadvance/topsnackbar/a$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final e(Lcom/androidadvance/topsnackbar/a$c;)V
    .locals 2

    iget v0, p1, Lcom/androidadvance/topsnackbar/a$c;->b:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const/16 v0, 0x5dc

    goto :goto_0

    :cond_2
    const/16 v0, 0xabe

    :goto_0
    iget-object p0, p0, Lcom/androidadvance/topsnackbar/a;->b:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-static {p0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
