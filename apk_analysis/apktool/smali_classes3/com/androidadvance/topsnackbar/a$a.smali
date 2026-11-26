.class public final Lcom/androidadvance/topsnackbar/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androidadvance/topsnackbar/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/androidadvance/topsnackbar/a;


# direct methods
.method public constructor <init>(Lcom/androidadvance/topsnackbar/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/androidadvance/topsnackbar/a$a;->b:Lcom/androidadvance/topsnackbar/a;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/androidadvance/topsnackbar/a$a;->b:Lcom/androidadvance/topsnackbar/a;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/androidadvance/topsnackbar/a$c;

    iget-object v0, p0, Lcom/androidadvance/topsnackbar/a;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/androidadvance/topsnackbar/a;->c:Lcom/androidadvance/topsnackbar/a$c;

    if-eq v1, p1, :cond_1

    iget-object p0, p0, Lcom/androidadvance/topsnackbar/a;->d:Lcom/androidadvance/topsnackbar/a$c;

    if-ne p0, p1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x2

    invoke-static {p1, p0}, Lcom/androidadvance/topsnackbar/a;->a(Lcom/androidadvance/topsnackbar/a$c;I)Z

    :cond_2
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
