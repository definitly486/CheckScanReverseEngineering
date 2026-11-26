.class Landroidx/browser/auth/AuthTabSessionToken$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/browser/auth/AuthTabCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/browser/auth/AuthTabSessionToken;-><init>(Loz3;Landroid/app/PendingIntent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/browser/auth/AuthTabSessionToken;


# direct methods
.method public constructor <init>(Landroidx/browser/auth/AuthTabSessionToken;)V
    .locals 0

    iput-object p1, p0, Landroidx/browser/auth/AuthTabSessionToken$1;->this$0:Landroidx/browser/auth/AuthTabSessionToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExtraCallback(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroidx/browser/auth/AuthTabSessionToken$1;->this$0:Landroidx/browser/auth/AuthTabSessionToken;

    invoke-static {p0}, Landroidx/browser/auth/AuthTabSessionToken;->access$000(Landroidx/browser/auth/AuthTabSessionToken;)Loz3;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Loz3;->onExtraCallback(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "AuthTabSessionToken"

    const-string p1, "RemoteException during IAuthTabCallback transaction"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onExtraCallbackWithResult(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroidx/browser/auth/AuthTabSessionToken$1;->this$0:Landroidx/browser/auth/AuthTabSessionToken;

    invoke-static {p0}, Landroidx/browser/auth/AuthTabSessionToken;->access$000(Landroidx/browser/auth/AuthTabSessionToken;)Loz3;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Loz3;->onExtraCallbackWithResult(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "AuthTabSessionToken"

    const-string p1, "RemoteException during IAuthTabCallback transaction"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object p0
.end method

.method public onNavigationEvent(ILandroid/os/Bundle;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroidx/browser/auth/AuthTabSessionToken$1;->this$0:Landroidx/browser/auth/AuthTabSessionToken;

    invoke-static {p0}, Landroidx/browser/auth/AuthTabSessionToken;->access$000(Landroidx/browser/auth/AuthTabSessionToken;)Loz3;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Loz3;->onNavigationEvent(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "AuthTabSessionToken"

    const-string p1, "RemoteException during IAuthTabCallback transaction"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onWarmupCompleted(Landroid/os/Bundle;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroidx/browser/auth/AuthTabSessionToken$1;->this$0:Landroidx/browser/auth/AuthTabSessionToken;

    invoke-static {p0}, Landroidx/browser/auth/AuthTabSessionToken;->access$000(Landroidx/browser/auth/AuthTabSessionToken;)Loz3;

    move-result-object p0

    invoke-interface {p0, p1}, Loz3;->onWarmupCompleted(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "AuthTabSessionToken"

    const-string p1, "RemoteException during IAuthTabCallback transaction"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
