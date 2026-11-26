.class public final Ll90;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Ll90;->f:I

    iput-object p1, p0, Ll90;->g:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Ll90;->f:I

    iget-object p0, p0, Ll90;->g:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    const-string v0, "ru.vk.store"

    check-cast p1, La08;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lru6;

    iget-object v1, p0, Lru6;->a:Landroid/content/Context;

    iget-object v2, p0, Lru6;->a:Landroid/content/Context;

    const-string v3, "ru.vk.store.qa"

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :try_start_1
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    iget-object v1, p0, Lru6;->d:Low9;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Luz4;

    invoke-direct {v5}, Luz4;-><init>()V

    const-string v6, "sdkVersion"

    const-string v7, "10.0.0"

    invoke-virtual {v5, v6, v7}, Luz4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Low9;->a()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const-string v7, "appVersion"

    invoke-virtual {v5, v7, v6}, Luz4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v5}, Low9;->b(Luz4;)V

    sget-object v6, Lj59;->a:Lj59;

    invoke-virtual {v5}, Luz4;->b()Luz4;

    move-result-object v5

    const-string v6, "SDKInstallReferrerRefidRequest"

    invoke-virtual {v1, v6, v5}, Low9;->c(Ljava/lang/String;Luz4;)V

    new-instance v1, Landroid/content/Intent;

    const-string v5, "ru.vk.store.sdk.install.referrer.InstallReferrerProvider"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v4, Ljava/lang/Iterable;

    const/16 v5, 0xa

    invoke-static {v4, v5}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-static {v5}, Lm05;->b(I)I

    move-result v5

    const/16 v6, 0x10

    if-ge v5, v6, :cond_0

    move v5, v6

    :cond_0
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6, v5}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-virtual {v6, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    if-nez v3, :cond_2

    invoke-virtual {v6, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/content/pm/ResolveInfo;

    :cond_2
    if-eqz v3, :cond_3

    new-instance v0, Landroid/content/ComponentName;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v4, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_4

    new-instance p0, Lru/rustore/sdk/core/exception/RuStoreOutdatedException;

    invoke-direct {p0}, Lru/rustore/sdk/core/exception/RuStoreOutdatedException;-><init>()V

    invoke-interface {p1, p0}, La08;->b(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_4
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v0, Lr07;

    invoke-direct {v0}, Lr07;-><init>()V

    new-instance v3, Lnh8;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, p0, Lru6;->c:Leg9;

    new-instance v6, Li;

    invoke-direct {v6, v0, p0, p1}, Li;-><init>(Lr07;Lru6;La08;)V

    new-instance v7, Luz;

    invoke-direct {v7, v0, p0, p1}, Luz;-><init>(Lr07;Lru6;La08;)V

    invoke-direct {v3, v4, v5, v6, v7}, Lnh8;-><init>(Ljava/lang/String;Leg9;Li;Luz;)V

    iput-object v3, v0, Lr07;->b:Ljava/lang/Object;

    const/4 p0, 0x1

    :try_start_2
    invoke-virtual {v2, v1, v3, p0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    new-instance v1, Lk57$a;

    invoke-direct {v1, p0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v1

    :goto_3
    invoke-static {p0}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_5

    iget-object v0, v0, Lr07;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/ServiceConnection;

    invoke-static {v2, v0}, Lny1;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    invoke-interface {p1, p0}, La08;->b(Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_1
    new-instance p0, Lru/rustore/sdk/core/exception/RuStoreNotInstalledException;

    invoke-direct {p0}, Lru/rustore/sdk/core/exception/RuStoreNotInstalledException;-><init>()V

    invoke-interface {p1, p0}, La08;->b(Ljava/lang/Throwable;)V

    :cond_5
    :goto_4
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/dialogs/BankClientVerificationDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
