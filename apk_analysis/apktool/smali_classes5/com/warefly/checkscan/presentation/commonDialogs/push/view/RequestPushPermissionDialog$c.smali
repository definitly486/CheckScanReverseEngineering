.class public final Lcom/warefly/checkscan/presentation/commonDialogs/push/view/RequestPushPermissionDialog$c;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/commonDialogs/push/view/RequestPushPermissionDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Landroid/view/View;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/commonDialogs/push/view/RequestPushPermissionDialog;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/commonDialogs/push/view/RequestPushPermissionDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/commonDialogs/push/view/RequestPushPermissionDialog$c;->f:Lcom/warefly/checkscan/presentation/commonDialogs/push/view/RequestPushPermissionDialog;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/commonDialogs/push/view/RequestPushPermissionDialog$c;->f:Lcom/warefly/checkscan/presentation/commonDialogs/push/view/RequestPushPermissionDialog;

    sget-object p1, Lcom/warefly/checkscan/presentation/commonDialogs/push/view/RequestPushPermissionDialog;->d:Lcom/warefly/checkscan/presentation/commonDialogs/push/view/RequestPushPermissionDialog$a;

    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.APP_NOTIFICATION_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "android.provider.extra.APP_PACKAGE"

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    sget-object p1, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
