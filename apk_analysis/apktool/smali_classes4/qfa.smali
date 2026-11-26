.class public final Lqfa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldha;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqfa$b;
    }
.end annotation


# static fields
.field public static final g:Lw7;

.field public static final h:Lqfa$a;

.field public static i:I


# instance fields
.field public final a:Lkt9;

.field public final b:Landroid/os/Handler;

.field public final c:Lyea;

.field public d:Landroidx/browser/customtabs/CustomTabsSession;

.field public e:Lqfa$b;

.field public f:Lrfa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lw7;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lqfa;->g:Lw7;

    new-instance v0, Lqfa$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lqfa;->h:Lqfa$a;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lkt9;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqfa;->b:Landroid/os/Handler;

    iput-object p2, p0, Lqfa;->a:Lkt9;

    new-instance p1, Lyea;

    iget-object p2, p2, Lkt9;->a:Landroid/content/Context;

    check-cast p2, Landroid/app/Application;

    invoke-direct {p1, p2}, Lyea;-><init>(Landroid/app/Application;)V

    iput-object p1, p0, Lqfa;->c:Lyea;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 149
    iget-object v0, p0, Lqfa;->c:Lyea;

    .line 150
    monitor-enter v0

    .line 151
    :try_start_0
    iget-object v1, v0, Lyea;->b:Lyea$a;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 152
    iget-object v3, v0, Lyea;->a:Landroid/app/Application;

    invoke-virtual {v3, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 153
    iput-object v2, v0, Lyea;->b:Lyea$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 154
    :goto_0
    :try_start_1
    iget-object v0, p0, Lqfa;->f:Lrfa;

    if-eqz v0, :cond_1

    .line 155
    iget-object v1, p0, Lqfa;->a:Lkt9;

    iget-object v1, v1, Lkt9;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 156
    :cond_1
    iput-object v2, p0, Lqfa;->f:Lrfa;

    .line 157
    iput-object v2, p0, Lqfa;->d:Landroidx/browser/customtabs/CustomTabsSession;

    .line 158
    iput-object v2, p0, Lqfa;->e:Lqfa$b;

    return-void

    .line 159
    :catchall_1
    iput-object v2, p0, Lqfa;->f:Lrfa;

    .line 160
    iput-object v2, p0, Lqfa;->d:Landroidx/browser/customtabs/CustomTabsSession;

    .line 161
    iput-object v2, p0, Lqfa;->e:Lqfa$b;

    return-void

    .line 162
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final a(Lcom/my/target/h2;Landroid/net/Uri;Lpp9;Landroid/content/Context;)Z
    .locals 9

    iget-object v0, p0, Lqfa;->e:Lqfa$b;

    iget-object v1, p0, Lqfa;->d:Landroidx/browser/customtabs/CustomTabsSession;

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v3, Lvx7;

    invoke-direct {v3, p1}, Lvx7;-><init>(Ljava/lang/Object;)V

    iput-object v3, v0, Lqfa$b;->c:Le5a;

    iget-object p0, p0, Lqfa;->c:Lyea;

    new-instance v0, Las1;

    const/4 v3, 0x3

    invoke-direct {v0, p1, v3}, Las1;-><init>(Ljava/lang/Object;I)V

    new-instance v3, Lm97;

    const/4 v4, 0x2

    invoke-direct {v3, p1, v4}, Lm97;-><init>(Ljava/lang/Object;I)V

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lyea;->b:Lyea$a;

    if-nez p1, :cond_1

    new-instance p1, Lyea$a;

    invoke-direct {p1, v0, v3}, Lyea$a;-><init>(Las1;Lm97;)V

    iput-object p1, p0, Lyea;->b:Lyea$a;

    iget-object v0, p0, Lyea;->a:Landroid/app/Application;

    invoke-virtual {v0, p1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :goto_0
    new-instance p0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {p0, v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>(Landroidx/browser/customtabs/CustomTabsSession;)V

    invoke-virtual {p0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object p0

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p1, v0, :cond_3

    instance-of p1, p4, Landroid/app/Activity;

    if-eqz p1, :cond_3

    move-object p1, p4

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    :cond_3
    instance-of p1, p4, Landroid/app/Activity;

    if-nez p1, :cond_4

    iget-object p1, p0, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_4
    :try_start_1
    invoke-virtual {p0, p4, p2}, Landroidx/browser/customtabs/CustomTabsIntent;->launchUrl(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 p0, 0x1

    return p0

    :catchall_1
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p4, "cti, message="

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\nurl="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x2

    const/16 v7, 0x1b59

    move-object v3, p3

    invoke-virtual/range {v3 .. v8}, Lpp9;->b(Ljava/lang/String;IIILjava/lang/String;)V

    return v2

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_5
    :goto_2
    return v2
.end method

.method public final b()V
    .locals 4

    invoke-virtual {p0}, Lqfa;->a()V

    new-instance v0, Lqfa$b;

    iget-object v1, p0, Lqfa;->b:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lqfa$b;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lqfa;->e:Lqfa$b;

    new-instance v0, Lrfa;

    invoke-direct {v0, p0}, Lrfa;-><init>(Lqfa;)V

    iput-object v0, p0, Lqfa;->f:Lrfa;

    iget-object v0, p0, Lqfa;->a:Lkt9;

    iget-object v1, v0, Lkt9;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/browser/customtabs/CustomTabsClient;->getPackageName(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lkt9;->a:Landroid/content/Context;

    iget-object v3, p0, Lqfa;->f:Lrfa;

    invoke-static {v0, v1, v3}, Landroidx/browser/customtabs/CustomTabsClient;->bindCustomTabsService(Landroid/content/Context;Ljava/lang/String;Landroidx/browser/customtabs/CustomTabsServiceConnection;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iput-object v2, p0, Lqfa;->e:Lqfa$b;

    iput-object v2, p0, Lqfa;->f:Lrfa;

    iput-object v2, p0, Lqfa;->d:Landroidx/browser/customtabs/CustomTabsSession;

    :cond_1
    return-void
.end method
