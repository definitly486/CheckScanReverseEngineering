.class Landroidx/browser/customtabs/CustomTabsService$1;
.super Lrz3$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/browser/customtabs/CustomTabsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/browser/customtabs/CustomTabsService;


# direct methods
.method public constructor <init>(Landroidx/browser/customtabs/CustomTabsService;)V
    .locals 0

    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabsService$1;->this$0:Landroidx/browser/customtabs/CustomTabsService;

    invoke-direct {p0}, Lrz3$a;-><init>()V

    return-void
.end method

.method public static synthetic f(Landroidx/browser/customtabs/CustomTabsService$1;Landroidx/browser/customtabs/CustomTabsSessionToken;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/browser/customtabs/CustomTabsService$1;->lambda$newSessionInternal$0(Landroidx/browser/customtabs/CustomTabsSessionToken;)V

    return-void
.end method

.method public static synthetic g(Landroidx/browser/customtabs/CustomTabsService$1;Landroidx/browser/auth/AuthTabSessionToken;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/browser/customtabs/CustomTabsService$1;->lambda$newAuthTabSession$1(Landroidx/browser/auth/AuthTabSessionToken;)V

    return-void
.end method

.method private getSessionIdFromBundle(Landroid/os/Bundle;)Landroid/app/PendingIntent;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "android.support.customtabs.extra.SESSION_ID"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    return-object v0
.end method

.method private getTargetOriginFromBundle(Landroid/os/Bundle;)Landroid/net/Uri;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    const-string v1, "target_origin"

    if-lt p0, v0, :cond_1

    const-class p0, Landroid/net/Uri;

    invoke-static {p1, v1, p0}, Landroidx/browser/customtabs/Api33Impl;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    return-object p0

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    return-object p0
.end method

.method private synthetic lambda$newAuthTabSession$1(Landroidx/browser/auth/AuthTabSessionToken;)V
    .locals 0

    iget-object p0, p0, Landroidx/browser/customtabs/CustomTabsService$1;->this$0:Landroidx/browser/customtabs/CustomTabsService;

    invoke-virtual {p0, p1}, Landroidx/browser/customtabs/CustomTabsService;->cleanUpSession(Landroidx/browser/auth/AuthTabSessionToken;)Z

    return-void
.end method

.method private synthetic lambda$newSessionInternal$0(Landroidx/browser/customtabs/CustomTabsSessionToken;)V
    .locals 0

    iget-object p0, p0, Landroidx/browser/customtabs/CustomTabsService$1;->this$0:Landroidx/browser/customtabs/CustomTabsService;

    invoke-virtual {p0, p1}, Landroidx/browser/customtabs/CustomTabsService;->cleanUpSession(Landroidx/browser/customtabs/CustomTabsSessionToken;)Z

    return-void
.end method

.method private newSessionInternal(Lqz3;Landroid/app/PendingIntent;)Z
    .locals 4

    new-instance v0, Landroidx/browser/customtabs/CustomTabsSessionToken;

    invoke-direct {v0, p1, p2}, Landroidx/browser/customtabs/CustomTabsSessionToken;-><init>(Lqz3;Landroid/app/PendingIntent;)V

    const/4 p2, 0x0

    :try_start_0
    new-instance v1, Landroidx/browser/customtabs/d;

    invoke-direct {v1, p0, v0}, Landroidx/browser/customtabs/d;-><init>(Landroidx/browser/customtabs/CustomTabsService$1;Landroidx/browser/customtabs/CustomTabsSessionToken;)V

    iget-object v2, p0, Landroidx/browser/customtabs/CustomTabsService$1;->this$0:Landroidx/browser/customtabs/CustomTabsService;

    iget-object v2, v2, Landroidx/browser/customtabs/CustomTabsService;->mDeathRecipientMap:Landroidx/collection/SimpleArrayMap;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3, v1, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v3, p0, Landroidx/browser/customtabs/CustomTabsService$1;->this$0:Landroidx/browser/customtabs/CustomTabsService;

    iget-object v3, v3, Landroidx/browser/customtabs/CustomTabsService;->mDeathRecipientMap:Landroidx/collection/SimpleArrayMap;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v3, p1, v1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p0, p0, Landroidx/browser/customtabs/CustomTabsService$1;->this$0:Landroidx/browser/customtabs/CustomTabsService;

    invoke-virtual {p0, v0}, Landroidx/browser/customtabs/CustomTabsService;->newSession(Landroidx/browser/customtabs/CustomTabsSessionToken;)Z

    move-result p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return p0

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    return p2
.end method


# virtual methods
.method public extraCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroidx/browser/customtabs/CustomTabsService$1;->this$0:Landroidx/browser/customtabs/CustomTabsService;

    invoke-virtual {p0, p1, p2}, Landroidx/browser/customtabs/CustomTabsService;->extraCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getInterfaceVersion()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isEngagementSignalsApiAvailable(Lqz3;Landroid/os/Bundle;)Z
    .locals 2

    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsService$1;->this$0:Landroidx/browser/customtabs/CustomTabsService;

    new-instance v1, Landroidx/browser/customtabs/CustomTabsSessionToken;

    invoke-direct {p0, p2}, Landroidx/browser/customtabs/CustomTabsService$1;->getSessionIdFromBundle(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-direct {v1, p1, p0}, Landroidx/browser/customtabs/CustomTabsSessionToken;-><init>(Lqz3;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1, p2}, Landroidx/browser/customtabs/CustomTabsService;->isEngagementSignalsApiAvailable(Landroidx/browser/customtabs/CustomTabsSessionToken;Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public mayLaunchUrl(Lqz3;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqz3;",
            "Landroid/net/Uri;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsService$1;->this$0:Landroidx/browser/customtabs/CustomTabsService;

    new-instance v1, Landroidx/browser/customtabs/CustomTabsSessionToken;

    invoke-direct {p0, p3}, Landroidx/browser/customtabs/CustomTabsService$1;->getSessionIdFromBundle(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-direct {v1, p1, p0}, Landroidx/browser/customtabs/CustomTabsSessionToken;-><init>(Lqz3;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1, p2, p3, p4}, Landroidx/browser/customtabs/CustomTabsService;->mayLaunchUrl(Landroidx/browser/customtabs/CustomTabsSessionToken;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public newAuthTabSession(Loz3;Landroid/os/Bundle;)Z
    .locals 4

    invoke-direct {p0, p2}, Landroidx/browser/customtabs/CustomTabsService$1;->getSessionIdFromBundle(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object p2

    new-instance v0, Landroidx/browser/auth/AuthTabSessionToken;

    invoke-direct {v0, p1, p2}, Landroidx/browser/auth/AuthTabSessionToken;-><init>(Loz3;Landroid/app/PendingIntent;)V

    const/4 p2, 0x0

    :try_start_0
    new-instance v1, Landroidx/browser/customtabs/e;

    invoke-direct {v1, p0, v0}, Landroidx/browser/customtabs/e;-><init>(Landroidx/browser/customtabs/CustomTabsService$1;Landroidx/browser/auth/AuthTabSessionToken;)V

    iget-object v2, p0, Landroidx/browser/customtabs/CustomTabsService$1;->this$0:Landroidx/browser/customtabs/CustomTabsService;

    iget-object v2, v2, Landroidx/browser/customtabs/CustomTabsService;->mDeathRecipientMap:Landroidx/collection/SimpleArrayMap;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3, v1, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v3, p0, Landroidx/browser/customtabs/CustomTabsService$1;->this$0:Landroidx/browser/customtabs/CustomTabsService;

    iget-object v3, v3, Landroidx/browser/customtabs/CustomTabsService;->mDeathRecipientMap:Landroidx/collection/SimpleArrayMap;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v3, p1, v1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p0, p0, Landroidx/browser/customtabs/CustomTabsService$1;->this$0:Landroidx/browser/customtabs/CustomTabsService;

    invoke-virtual {p0, v0}, Landroidx/browser/customtabs/CustomTabsService;->registerAuthTabSession(Landroidx/browser/auth/AuthTabSessionToken;)Z

    move-result p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return p0

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    return p2
.end method

.method public newSession(Lqz3;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/browser/customtabs/CustomTabsService$1;->newSessionInternal(Lqz3;Landroid/app/PendingIntent;)Z

    move-result p0

    return p0
.end method

.method public newSessionWithExtras(Lqz3;Landroid/os/Bundle;)Z
    .locals 0

    invoke-direct {p0, p2}, Landroidx/browser/customtabs/CustomTabsService$1;->getSessionIdFromBundle(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroidx/browser/customtabs/CustomTabsService$1;->newSessionInternal(Lqz3;Landroid/app/PendingIntent;)Z

    move-result p0

    return p0
.end method

.method public postMessage(Lqz3;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 2

    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsService$1;->this$0:Landroidx/browser/customtabs/CustomTabsService;

    new-instance v1, Landroidx/browser/customtabs/CustomTabsSessionToken;

    invoke-direct {p0, p3}, Landroidx/browser/customtabs/CustomTabsService$1;->getSessionIdFromBundle(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-direct {v1, p1, p0}, Landroidx/browser/customtabs/CustomTabsSessionToken;-><init>(Lqz3;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1, p2, p3}, Landroidx/browser/customtabs/CustomTabsService;->postMessage(Landroidx/browser/customtabs/CustomTabsSessionToken;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p0

    return p0
.end method

.method public prefetch(Lqz3;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsService$1;->this$0:Landroidx/browser/customtabs/CustomTabsService;

    new-instance v1, Landroidx/browser/customtabs/CustomTabsSessionToken;

    invoke-direct {p0, p3}, Landroidx/browser/customtabs/CustomTabsService$1;->getSessionIdFromBundle(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-direct {v1, p1, p0}, Landroidx/browser/customtabs/CustomTabsSessionToken;-><init>(Lqz3;Landroid/app/PendingIntent;)V

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 p2, 0x0

    aget-object p0, p0, p2

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-static {p3}, Landroidx/browser/customtabs/PrefetchOptions;->fromBundle(Landroid/os/Bundle;)Landroidx/browser/customtabs/PrefetchOptions;

    move-result-object p1

    invoke-virtual {v0, v1, p0, p1}, Landroidx/browser/customtabs/CustomTabsService;->prefetch(Landroidx/browser/customtabs/CustomTabsSessionToken;Ljava/util/List;Landroidx/browser/customtabs/PrefetchOptions;)V

    return-void
.end method

.method public prefetchWithMultipleUrls(Lqz3;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqz3;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsService$1;->this$0:Landroidx/browser/customtabs/CustomTabsService;

    new-instance v1, Landroidx/browser/customtabs/CustomTabsSessionToken;

    invoke-direct {p0, p3}, Landroidx/browser/customtabs/CustomTabsService$1;->getSessionIdFromBundle(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-direct {v1, p1, p0}, Landroidx/browser/customtabs/CustomTabsSessionToken;-><init>(Lqz3;Landroid/app/PendingIntent;)V

    invoke-static {p3}, Landroidx/browser/customtabs/PrefetchOptions;->fromBundle(Landroid/os/Bundle;)Landroidx/browser/customtabs/PrefetchOptions;

    move-result-object p0

    invoke-virtual {v0, v1, p2, p0}, Landroidx/browser/customtabs/CustomTabsService;->prefetch(Landroidx/browser/customtabs/CustomTabsSessionToken;Ljava/util/List;Landroidx/browser/customtabs/PrefetchOptions;)V

    return-void
.end method

.method public receiveFile(Lqz3;Landroid/net/Uri;ILandroid/os/Bundle;)Z
    .locals 2

    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsService$1;->this$0:Landroidx/browser/customtabs/CustomTabsService;

    new-instance v1, Landroidx/browser/customtabs/CustomTabsSessionToken;

    invoke-direct {p0, p4}, Landroidx/browser/customtabs/CustomTabsService$1;->getSessionIdFromBundle(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-direct {v1, p1, p0}, Landroidx/browser/customtabs/CustomTabsSessionToken;-><init>(Lqz3;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1, p2, p3, p4}, Landroidx/browser/customtabs/CustomTabsService;->receiveFile(Landroidx/browser/customtabs/CustomTabsSessionToken;Landroid/net/Uri;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public requestPostMessageChannel(Lqz3;Landroid/net/Uri;)Z
    .locals 2

    iget-object p0, p0, Landroidx/browser/customtabs/CustomTabsService$1;->this$0:Landroidx/browser/customtabs/CustomTabsService;

    new-instance v0, Landroidx/browser/customtabs/CustomTabsSessionToken;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/browser/customtabs/CustomTabsSessionToken;-><init>(Lqz3;Landroid/app/PendingIntent;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0, p2, v1, p1}, Landroidx/browser/customtabs/CustomTabsService;->requestPostMessageChannel(Landroidx/browser/customtabs/CustomTabsSessionToken;Landroid/net/Uri;Landroid/net/Uri;Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public requestPostMessageChannelWithExtras(Lqz3;Landroid/net/Uri;Landroid/os/Bundle;)Z
    .locals 3

    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsService$1;->this$0:Landroidx/browser/customtabs/CustomTabsService;

    new-instance v1, Landroidx/browser/customtabs/CustomTabsSessionToken;

    invoke-direct {p0, p3}, Landroidx/browser/customtabs/CustomTabsService$1;->getSessionIdFromBundle(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroidx/browser/customtabs/CustomTabsSessionToken;-><init>(Lqz3;Landroid/app/PendingIntent;)V

    invoke-direct {p0, p3}, Landroidx/browser/customtabs/CustomTabsService$1;->getTargetOriginFromBundle(Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, v1, p2, p0, p3}, Landroidx/browser/customtabs/CustomTabsService;->requestPostMessageChannel(Landroidx/browser/customtabs/CustomTabsSessionToken;Landroid/net/Uri;Landroid/net/Uri;Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public setEngagementSignalsCallback(Lqz3;Landroid/os/IBinder;Landroid/os/Bundle;)Z
    .locals 2

    invoke-static {p2}, Landroidx/browser/customtabs/EngagementSignalsCallbackRemote;->fromBinder(Landroid/os/IBinder;)Landroidx/browser/customtabs/EngagementSignalsCallbackRemote;

    move-result-object p2

    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsService$1;->this$0:Landroidx/browser/customtabs/CustomTabsService;

    new-instance v1, Landroidx/browser/customtabs/CustomTabsSessionToken;

    invoke-direct {p0, p3}, Landroidx/browser/customtabs/CustomTabsService$1;->getSessionIdFromBundle(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-direct {v1, p1, p0}, Landroidx/browser/customtabs/CustomTabsSessionToken;-><init>(Lqz3;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1, p2, p3}, Landroidx/browser/customtabs/CustomTabsService;->setEngagementSignalsCallback(Landroidx/browser/customtabs/CustomTabsSessionToken;Landroidx/browser/customtabs/EngagementSignalsCallback;Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public updateVisuals(Lqz3;Landroid/os/Bundle;)Z
    .locals 2

    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsService$1;->this$0:Landroidx/browser/customtabs/CustomTabsService;

    new-instance v1, Landroidx/browser/customtabs/CustomTabsSessionToken;

    invoke-direct {p0, p2}, Landroidx/browser/customtabs/CustomTabsService$1;->getSessionIdFromBundle(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-direct {v1, p1, p0}, Landroidx/browser/customtabs/CustomTabsSessionToken;-><init>(Lqz3;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1, p2}, Landroidx/browser/customtabs/CustomTabsService;->updateVisuals(Landroidx/browser/customtabs/CustomTabsSessionToken;Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public validateRelationship(Lqz3;ILandroid/net/Uri;Landroid/os/Bundle;)Z
    .locals 2

    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsService$1;->this$0:Landroidx/browser/customtabs/CustomTabsService;

    new-instance v1, Landroidx/browser/customtabs/CustomTabsSessionToken;

    invoke-direct {p0, p4}, Landroidx/browser/customtabs/CustomTabsService$1;->getSessionIdFromBundle(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-direct {v1, p1, p0}, Landroidx/browser/customtabs/CustomTabsSessionToken;-><init>(Lqz3;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1, p2, p3, p4}, Landroidx/browser/customtabs/CustomTabsService;->validateRelationship(Landroidx/browser/customtabs/CustomTabsSessionToken;ILandroid/net/Uri;Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public warmup(J)Z
    .locals 0

    iget-object p0, p0, Landroidx/browser/customtabs/CustomTabsService$1;->this$0:Landroidx/browser/customtabs/CustomTabsService;

    invoke-virtual {p0, p1, p2}, Landroidx/browser/customtabs/CustomTabsService;->warmup(J)Z

    move-result p0

    return p0
.end method
