.class public final Lcom/google/firebase/perf/FirebasePerformance_Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxs6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxs6;"
    }
.end annotation


# instance fields
.field private final configResolverProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Lcom/google/firebase/perf/config/ConfigResolver;",
            ">;"
        }
    .end annotation
.end field

.field private final firebaseAppProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Lcom/google/firebase/FirebaseApp;",
            ">;"
        }
    .end annotation
.end field

.field private final firebaseInstallationsApiProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Lcom/google/firebase/installations/FirebaseInstallationsApi;",
            ">;"
        }
    .end annotation
.end field

.field private final firebaseRemoteConfigProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/remoteconfig/RemoteConfigComponent;",
            ">;>;"
        }
    .end annotation
.end field

.field private final remoteConfigManagerProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Lcom/google/firebase/perf/config/RemoteConfigManager;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionManagerProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Lcom/google/firebase/perf/session/SessionManager;",
            ">;"
        }
    .end annotation
.end field

.field private final transportFactoryProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Lcom/google/firebase/inject/Provider<",
            "Lt29;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Lcom/google/firebase/FirebaseApp;",
            ">;",
            "Lxs6<",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/remoteconfig/RemoteConfigComponent;",
            ">;>;",
            "Lxs6<",
            "Lcom/google/firebase/installations/FirebaseInstallationsApi;",
            ">;",
            "Lxs6<",
            "Lcom/google/firebase/inject/Provider<",
            "Lt29;",
            ">;>;",
            "Lxs6<",
            "Lcom/google/firebase/perf/config/RemoteConfigManager;",
            ">;",
            "Lxs6<",
            "Lcom/google/firebase/perf/config/ConfigResolver;",
            ">;",
            "Lxs6<",
            "Lcom/google/firebase/perf/session/SessionManager;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/perf/FirebasePerformance_Factory;->firebaseAppProvider:Lxs6;

    iput-object p2, p0, Lcom/google/firebase/perf/FirebasePerformance_Factory;->firebaseRemoteConfigProvider:Lxs6;

    iput-object p3, p0, Lcom/google/firebase/perf/FirebasePerformance_Factory;->firebaseInstallationsApiProvider:Lxs6;

    iput-object p4, p0, Lcom/google/firebase/perf/FirebasePerformance_Factory;->transportFactoryProvider:Lxs6;

    iput-object p5, p0, Lcom/google/firebase/perf/FirebasePerformance_Factory;->remoteConfigManagerProvider:Lxs6;

    iput-object p6, p0, Lcom/google/firebase/perf/FirebasePerformance_Factory;->configResolverProvider:Lxs6;

    iput-object p7, p0, Lcom/google/firebase/perf/FirebasePerformance_Factory;->sessionManagerProvider:Lxs6;

    return-void
.end method

.method public static create(Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;)Lcom/google/firebase/perf/FirebasePerformance_Factory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Lcom/google/firebase/FirebaseApp;",
            ">;",
            "Lxs6<",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/remoteconfig/RemoteConfigComponent;",
            ">;>;",
            "Lxs6<",
            "Lcom/google/firebase/installations/FirebaseInstallationsApi;",
            ">;",
            "Lxs6<",
            "Lcom/google/firebase/inject/Provider<",
            "Lt29;",
            ">;>;",
            "Lxs6<",
            "Lcom/google/firebase/perf/config/RemoteConfigManager;",
            ">;",
            "Lxs6<",
            "Lcom/google/firebase/perf/config/ConfigResolver;",
            ">;",
            "Lxs6<",
            "Lcom/google/firebase/perf/session/SessionManager;",
            ">;)",
            "Lcom/google/firebase/perf/FirebasePerformance_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/google/firebase/perf/FirebasePerformance_Factory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/perf/FirebasePerformance_Factory;-><init>(Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;Lxs6;)V

    return-object v0
.end method

.method public static newInstance(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/inject/Provider;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/firebase/inject/Provider;Lcom/google/firebase/perf/config/RemoteConfigManager;Lcom/google/firebase/perf/config/ConfigResolver;Lcom/google/firebase/perf/session/SessionManager;)Lcom/google/firebase/perf/FirebasePerformance;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/remoteconfig/RemoteConfigComponent;",
            ">;",
            "Lcom/google/firebase/installations/FirebaseInstallationsApi;",
            "Lcom/google/firebase/inject/Provider<",
            "Lt29;",
            ">;",
            "Lcom/google/firebase/perf/config/RemoteConfigManager;",
            "Lcom/google/firebase/perf/config/ConfigResolver;",
            "Lcom/google/firebase/perf/session/SessionManager;",
            ")",
            "Lcom/google/firebase/perf/FirebasePerformance;"
        }
    .end annotation

    new-instance v0, Lcom/google/firebase/perf/FirebasePerformance;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/perf/FirebasePerformance;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/inject/Provider;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/firebase/inject/Provider;Lcom/google/firebase/perf/config/RemoteConfigManager;Lcom/google/firebase/perf/config/ConfigResolver;Lcom/google/firebase/perf/session/SessionManager;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/firebase/perf/FirebasePerformance;
    .locals 8

    iget-object v0, p0, Lcom/google/firebase/perf/FirebasePerformance_Factory;->firebaseAppProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/firebase/FirebaseApp;

    iget-object v0, p0, Lcom/google/firebase/perf/FirebasePerformance_Factory;->firebaseRemoteConfigProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/firebase/inject/Provider;

    iget-object v0, p0, Lcom/google/firebase/perf/FirebasePerformance_Factory;->firebaseInstallationsApiProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/firebase/installations/FirebaseInstallationsApi;

    iget-object v0, p0, Lcom/google/firebase/perf/FirebasePerformance_Factory;->transportFactoryProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/firebase/inject/Provider;

    iget-object v0, p0, Lcom/google/firebase/perf/FirebasePerformance_Factory;->remoteConfigManagerProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/firebase/perf/config/RemoteConfigManager;

    iget-object v0, p0, Lcom/google/firebase/perf/FirebasePerformance_Factory;->configResolverProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/firebase/perf/config/ConfigResolver;

    iget-object p0, p0, Lcom/google/firebase/perf/FirebasePerformance_Factory;->sessionManagerProvider:Lxs6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lcom/google/firebase/perf/session/SessionManager;

    invoke-static/range {v1 .. v7}, Lcom/google/firebase/perf/FirebasePerformance_Factory;->newInstance(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/inject/Provider;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/firebase/inject/Provider;Lcom/google/firebase/perf/config/RemoteConfigManager;Lcom/google/firebase/perf/config/ConfigResolver;Lcom/google/firebase/perf/session/SessionManager;)Lcom/google/firebase/perf/FirebasePerformance;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0}, Lcom/google/firebase/perf/FirebasePerformance_Factory;->get()Lcom/google/firebase/perf/FirebasePerformance;

    move-result-object p0

    return-object p0
.end method
