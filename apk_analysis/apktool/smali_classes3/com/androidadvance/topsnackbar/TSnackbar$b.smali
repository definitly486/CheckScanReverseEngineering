.class public final Lcom/androidadvance/topsnackbar/TSnackbar$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/androidadvance/topsnackbar/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidadvance/topsnackbar/TSnackbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/androidadvance/topsnackbar/TSnackbar;


# direct methods
.method public constructor <init>(Lcom/androidadvance/topsnackbar/TSnackbar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/androidadvance/topsnackbar/TSnackbar$b;->a:Lcom/androidadvance/topsnackbar/TSnackbar;

    return-void
.end method


# virtual methods
.method public final dismiss(I)V
    .locals 3

    sget-object v0, Lcom/androidadvance/topsnackbar/TSnackbar;->e:Landroid/os/Handler;

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/androidadvance/topsnackbar/TSnackbar$b;->a:Lcom/androidadvance/topsnackbar/TSnackbar;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1, v1, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final show()V
    .locals 2

    sget-object v0, Lcom/androidadvance/topsnackbar/TSnackbar;->e:Landroid/os/Handler;

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/androidadvance/topsnackbar/TSnackbar$b;->a:Lcom/androidadvance/topsnackbar/TSnackbar;

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
