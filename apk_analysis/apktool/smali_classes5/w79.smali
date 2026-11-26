.class public final Lw79;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt79;
.implements Ljg4;


# instance fields
.field public final b:Lcl4;

.field public final c:Lcl4;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lpo4;->SYNCHRONIZED:Lpo4;

    new-instance v1, Lw79$a;

    invoke-direct {v1, p0}, Lw79$a;-><init>(Lw79;)V

    invoke-static {v0, v1}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object v1

    iput-object v1, p0, Lw79;->b:Lcl4;

    new-instance v1, Lw79$b;

    invoke-direct {v1, p0}, Lw79$b;-><init>(Lw79;)V

    invoke-static {v0, v1}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object v0

    iput-object v0, p0, Lw79;->c:Lcl4;

    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "android.intent.action.VIEW"

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v1, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 6

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x1e

    iget-object v2, p0, Lw79;->b:Lcl4;

    if-lt v0, v1, :cond_0

    :try_start_1
    invoke-interface {v2}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManager;

    sget-object v1, Lcom/warefly/checkscan/CheckScanApplication;->c:Landroid/content/Context;

    invoke-static {}, Lcom/warefly/checkscan/CheckScanApplication$a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstallSourceInfo(Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/InstallSourceInfo;->getInstallingPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManager;

    sget-object v1, Lcom/warefly/checkscan/CheckScanApplication;->c:Landroid/content/Context;

    invoke-static {}, Lcom/warefly/checkscan/CheckScanApplication$a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_0
    new-instance v1, Lk57$a;

    invoke-direct {v1, v0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    :goto_1
    nop

    instance-of v1, v0, Lk57$a;

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    check-cast v0, Ljava/lang/String;

    const-string v1, "com.xiaomi.mipicks"

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "market://details?id=com.warefly.checkscan"

    if-nez v2, :cond_6

    const-string v2, "xiaomi"

    const-string v4, "ruStore"

    const/4 v5, 0x0

    invoke-static {v4, v2, v5}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_3

    :cond_2
    const-string v1, "com.android.vending"

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string p0, "https://play.google.com/store/apps/details?id=com.warefly.checkscan"

    invoke-static {p1, v3, p0, v1}, Lw79;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_3
    const-string v1, "ru.vk.store"

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {v4, v4, v5}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const v1, 0x7f1505f1

    invoke-direct {v0, p1, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lw79;->c:Lcl4;

    invoke-interface {v1}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls47;

    const v3, 0x7f140690

    invoke-interface {v2, v3}, Ls47;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    invoke-interface {v1}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls47;

    const v3, 0x7f14068d

    invoke-interface {v2, v3}, Ls47;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    invoke-interface {v1}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls47;

    const v3, 0x7f14068f

    invoke-interface {v2, v3}, Ls47;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lu79;

    invoke-direct {v3, p0, p1}, Lu79;-><init>(Lw79;Landroid/content/Context;)V

    invoke-virtual {v0, v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p0

    invoke-interface {v1}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls47;

    const v0, 0x7f14068e

    invoke-interface {p1, v0}, Ls47;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lv79;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_4

    :cond_5
    :goto_2
    const-string p0, "rustore://apps.rustore.ru/app/com.warefly.checkscan"

    const-string v0, "https://www.rustore.ru/catalog/app/com.warefly.checkscan"

    invoke-static {p1, p0, v0, v1}, Lw79;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    :goto_3
    const-string p0, "https://global.app.mi.com/details?lo=RU&la=ru_RU&id=com.warefly.checkscan"

    invoke-static {p1, v3, p0, v1}, Lw79;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void
.end method
