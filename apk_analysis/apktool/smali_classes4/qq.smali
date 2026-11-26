.class public final Lqq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqe;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lfh8;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqq;->a:Landroid/content/Context;

    sget-object p1, Lqq$a;->f:Lqq$a;

    invoke-static {p1}, Lnm4;->b(Lll3;)Lfh8;

    move-result-object p1

    iput-object p1, p0, Lqq;->b:Lfh8;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const-string p1, "granted"

    goto :goto_0

    :cond_0
    const-string p1, "not_granted"

    :goto_0
    invoke-virtual {p0}, Lqq;->h()Lre;

    move-result-object p0

    const-string v0, "notifications"

    if-eqz p0, :cond_1

    invoke-interface {p0, v0, p1}, Lre;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lio/appmetrica/analytics/profile/UserProfile;->newBuilder()Lio/appmetrica/analytics/profile/UserProfile$Builder;

    move-result-object p0

    invoke-static {v0}, Lio/appmetrica/analytics/profile/Attribute;->customString(Ljava/lang/String;)Lio/appmetrica/analytics/profile/StringAttribute;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/profile/StringAttribute;->withValue(Ljava/lang/String;)Lio/appmetrica/analytics/profile/UserProfileUpdate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/profile/UserProfile$Builder;->apply(Lio/appmetrica/analytics/profile/UserProfileUpdate;)Lio/appmetrica/analytics/profile/UserProfile$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/profile/UserProfile$Builder;->build()Lio/appmetrica/analytics/profile/UserProfile;

    move-result-object p0

    invoke-static {p0}, Lio/appmetrica/analytics/AppMetrica;->reportUserProfile(Lio/appmetrica/analytics/profile/UserProfile;)V

    return-void
.end method

.method public final b(Z)V
    .locals 2

    invoke-virtual {p0}, Lqq;->h()Lre;

    move-result-object p0

    const-string v0, "is_electro_user"

    if-eqz p0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lre;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lio/appmetrica/analytics/profile/UserProfile;->newBuilder()Lio/appmetrica/analytics/profile/UserProfile$Builder;

    move-result-object p0

    invoke-static {v0}, Lio/appmetrica/analytics/profile/Attribute;->customBoolean(Ljava/lang/String;)Lio/appmetrica/analytics/profile/BooleanAttribute;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/profile/BooleanAttribute;->withValue(Z)Lio/appmetrica/analytics/profile/UserProfileUpdate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/profile/UserProfile$Builder;->apply(Lio/appmetrica/analytics/profile/UserProfileUpdate;)Lio/appmetrica/analytics/profile/UserProfile$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/profile/UserProfile$Builder;->build()Lio/appmetrica/analytics/profile/UserProfile;

    move-result-object p0

    invoke-static {p0}, Lio/appmetrica/analytics/AppMetrica;->reportUserProfile(Lio/appmetrica/analytics/profile/UserProfile;)V

    return-void
.end method

.method public final c(J)V
    .locals 1

    invoke-virtual {p0}, Lqq;->h()Lre;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "first_launch_time"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lre;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final d(I)V
    .locals 3

    invoke-virtual {p0}, Lqq;->h()Lre;

    move-result-object p0

    const-string v0, "bonuses_area_id"

    if-eqz p0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lre;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lio/appmetrica/analytics/profile/UserProfile;->newBuilder()Lio/appmetrica/analytics/profile/UserProfile$Builder;

    move-result-object p0

    invoke-static {v0}, Lio/appmetrica/analytics/profile/Attribute;->customNumber(Ljava/lang/String;)Lio/appmetrica/analytics/profile/NumberAttribute;

    move-result-object v0

    int-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lio/appmetrica/analytics/profile/NumberAttribute;->withValue(D)Lio/appmetrica/analytics/profile/UserProfileUpdate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/profile/UserProfile$Builder;->apply(Lio/appmetrica/analytics/profile/UserProfileUpdate;)Lio/appmetrica/analytics/profile/UserProfile$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/profile/UserProfile$Builder;->build()Lio/appmetrica/analytics/profile/UserProfile;

    move-result-object p0

    invoke-static {p0}, Lio/appmetrica/analytics/AppMetrica;->reportUserProfile(Lio/appmetrica/analytics/profile/UserProfile;)V

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lqq;->h()Lre;

    move-result-object p0

    const-string v0, "experiment_online_shop_tutorial"

    if-eqz p0, :cond_0

    invoke-interface {p0, v0, p1}, Lre;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lio/appmetrica/analytics/profile/UserProfile;->newBuilder()Lio/appmetrica/analytics/profile/UserProfile$Builder;

    move-result-object p0

    invoke-static {v0}, Lio/appmetrica/analytics/profile/Attribute;->customString(Ljava/lang/String;)Lio/appmetrica/analytics/profile/StringAttribute;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/profile/StringAttribute;->withValue(Ljava/lang/String;)Lio/appmetrica/analytics/profile/UserProfileUpdate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/profile/UserProfile$Builder;->apply(Lio/appmetrica/analytics/profile/UserProfileUpdate;)Lio/appmetrica/analytics/profile/UserProfile$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/profile/UserProfile$Builder;->build()Lio/appmetrica/analytics/profile/UserProfile;

    move-result-object p0

    invoke-static {p0}, Lio/appmetrica/analytics/AppMetrica;->reportUserProfile(Lio/appmetrica/analytics/profile/UserProfile;)V

    return-void
.end method

.method public final f()V
    .locals 2

    invoke-virtual {p0}, Lqq;->h()Lre;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "Register"

    const-string v1, "SUCCESSFUL_REGISTER"

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "Account"

    invoke-static {v1, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lre;->e(Landroid/os/Bundle;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final g(J)V
    .locals 8

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/appmetrica/analytics/AppMetrica;->setUserProfileID(Ljava/lang/String;)V

    invoke-virtual {p0}, Lqq;->h()Lre;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lre;->a(Ljava/lang/String;)V

    :cond_0
    sget-object p2, Loa6;->I:Loa6$a;

    sget-object p2, Loa6;->J:Loa6;

    invoke-virtual {p2}, Lae6;->h()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "version"

    const-string v2, "build"

    const-string v3, "deviceId"

    const-string v4, "sessionReplay"

    const-string v5, "errorTracking"

    const-string v6, "capturePerformance"

    const-string v7, "surveys"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lu96;->k([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2}, Lae6;->g()Loc6;

    move-result-object v1

    invoke-static {v0}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Loc6;->c(Ljava/util/List;)V

    invoke-virtual {p2}, Loa6;->p()Lad6;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lad6;->b()V

    :cond_2
    iget-object v0, p2, Loa6;->x:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p2, Loa6;->v:Ljava/lang/String;

    iget-object v1, p2, Loa6;->s:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    monitor-exit v1

    iget-object v1, p2, Loa6;->p:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p2, Loa6;->B:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    monitor-exit v1

    iget-object v1, p2, Loa6;->q:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    iput-boolean v2, p2, Loa6;->C:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit v1

    iget-object v1, p2, Loa6;->n:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object v0, p2, Loa6;->E:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v1

    invoke-virtual {p2}, Loa6;->l()V

    invoke-virtual {p2}, Loa6;->C()V

    invoke-virtual {p2, v0}, Loa6;->x(Lng;)V

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, p1}, Loa6;->s(Ljava/lang/String;)V

    :try_start_4
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setUserId(Ljava/lang/String;)V

    sget-object p1, Lj59;->a:Lj59;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    iget-object p1, p0, Lqq;->a:Landroid/content/Context;

    invoke-static {p1}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result p1

    invoke-static {}, Lio/appmetrica/analytics/profile/UserProfile;->newBuilder()Lio/appmetrica/analytics/profile/UserProfile$Builder;

    move-result-object p2

    invoke-static {}, Lio/appmetrica/analytics/profile/Attribute;->notificationsEnabled()Lio/appmetrica/analytics/profile/NotificationsEnabledAttribute;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/profile/BooleanAttribute;->withValue(Z)Lio/appmetrica/analytics/profile/UserProfileUpdate;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/appmetrica/analytics/profile/UserProfile$Builder;->apply(Lio/appmetrica/analytics/profile/UserProfileUpdate;)Lio/appmetrica/analytics/profile/UserProfile$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lio/appmetrica/analytics/profile/UserProfile$Builder;->build()Lio/appmetrica/analytics/profile/UserProfile;

    move-result-object p2

    invoke-static {p2}, Lio/appmetrica/analytics/AppMetrica;->reportUserProfile(Lio/appmetrica/analytics/profile/UserProfile;)V

    invoke-virtual {p0}, Lqq;->h()Lre;

    move-result-object p0

    if-eqz p0, :cond_3

    const-string p2, "notifs_on"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Lre;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    :catchall_1
    move-exception v0

    move-object p0, v0

    monitor-exit v1

    throw p0

    :catchall_2
    move-exception v0

    move-object p0, v0

    monitor-exit v1

    throw p0

    :catchall_3
    move-exception v0

    move-object p0, v0

    monitor-exit v1

    throw p0

    :catchall_4
    move-exception v0

    move-object p0, v0

    monitor-exit v1

    throw p0
.end method

.method public final h()Lre;
    .locals 0

    iget-object p0, p0, Lqq;->b:Lfh8;

    invoke-virtual {p0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lre;

    return-object p0
.end method
