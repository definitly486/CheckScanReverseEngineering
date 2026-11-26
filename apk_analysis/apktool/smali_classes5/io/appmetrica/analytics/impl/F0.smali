.class public final Lio/appmetrica/analytics/impl/F0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Qa;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lio/appmetrica/analytics/impl/Pa;

.field public final c:Lio/appmetrica/analytics/impl/if;

.field public final d:Lio/appmetrica/analytics/impl/em;

.field public final e:Lio/appmetrica/analytics/impl/mg;

.field public final f:Lio/appmetrica/analytics/impl/Pf;

.field public final g:Lio/appmetrica/analytics/impl/ri;

.field public final h:Lio/appmetrica/analytics/impl/Ei;

.field public final i:Lio/appmetrica/analytics/impl/P7;

.field public final j:Lio/appmetrica/analytics/impl/pl;

.field public volatile k:Lio/appmetrica/analytics/impl/yc;

.field public final l:Lio/appmetrica/analytics/impl/p0;

.field public m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Pa;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/F0;->a:Landroid/content/Context;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/F0;->b:Lio/appmetrica/analytics/impl/Pa;

    invoke-static {}, Lio/appmetrica/analytics/impl/p4;->l()Lio/appmetrica/analytics/impl/p4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/p4;->b(Landroid/content/Context;)Lio/appmetrica/analytics/impl/if;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/F0;->c:Lio/appmetrica/analytics/impl/if;

    invoke-static {}, Lio/appmetrica/analytics/impl/Ed;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {}, Lio/appmetrica/analytics/impl/p4;->l()Lio/appmetrica/analytics/impl/p4;

    move-result-object v2

    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/p4;->m()Lio/appmetrica/analytics/impl/m4;

    move-result-object v3

    new-instance v4, Lio/appmetrica/analytics/impl/Y3;

    invoke-direct {v4, p1}, Lio/appmetrica/analytics/impl/Y3;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Lio/appmetrica/analytics/impl/m4;->a(Lio/appmetrica/analytics/impl/S5;)V

    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/p4;->i()Lio/appmetrica/analytics/impl/E6;

    move-result-object v3

    invoke-virtual {v3}, Lio/appmetrica/analytics/impl/E6;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lio/appmetrica/analytics/impl/Ye;

    invoke-static {}, Lio/appmetrica/analytics/impl/Ib;->a()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Lio/appmetrica/analytics/impl/Ye;-><init>(Ljava/util/List;)V

    invoke-virtual {v3}, Lio/appmetrica/analytics/impl/Ye;->a()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {p1}, Lio/appmetrica/analytics/impl/G0;->a(Landroid/content/Context;)Lio/appmetrica/analytics/impl/od;

    move-result-object v4

    invoke-static {v3, v1}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v4, v1}, Lio/appmetrica/analytics/impl/od;->a(Ljava/util/List;)V

    :cond_0
    invoke-interface {p2}, Lio/appmetrica/analytics/impl/Pa;->b()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1, p0}, Lio/appmetrica/analytics/impl/G0;->a(Landroid/os/Handler;Lio/appmetrica/analytics/impl/F0;)Lio/appmetrica/analytics/impl/P6;

    move-result-object v1

    invoke-static {p1, v1}, Lio/appmetrica/analytics/impl/G0;->a(Landroid/content/Context;Lio/appmetrica/analytics/impl/P6;)Lio/appmetrica/analytics/impl/Pf;

    move-result-object v1

    iput-object v1, p0, Lio/appmetrica/analytics/impl/F0;->f:Lio/appmetrica/analytics/impl/Pf;

    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/p4;->j()Lio/appmetrica/analytics/impl/P7;

    move-result-object v3

    iput-object v3, p0, Lio/appmetrica/analytics/impl/F0;->i:Lio/appmetrica/analytics/impl/P7;

    invoke-interface {p2}, Lio/appmetrica/analytics/impl/Pa;->getDefaultExecutor()Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    move-result-object v4

    invoke-static {v1, p1, v4}, Lio/appmetrica/analytics/impl/G0;->a(Lio/appmetrica/analytics/impl/Pf;Landroid/content/Context;Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;)Lio/appmetrica/analytics/impl/Ei;

    move-result-object v4

    iput-object v4, p0, Lio/appmetrica/analytics/impl/F0;->h:Lio/appmetrica/analytics/impl/Ei;

    invoke-virtual {v3, v4}, Lio/appmetrica/analytics/impl/P7;->a(Lio/appmetrica/analytics/impl/Ei;)V

    invoke-interface {p2}, Lio/appmetrica/analytics/impl/Pa;->b()Landroid/os/Handler;

    move-result-object v3

    invoke-static {p1, v4, v3}, Lio/appmetrica/analytics/impl/G0;->a(Landroid/content/Context;Lio/appmetrica/analytics/impl/Ei;Landroid/os/Handler;)Lio/appmetrica/analytics/impl/em;

    move-result-object v3

    iput-object v3, p0, Lio/appmetrica/analytics/impl/F0;->d:Lio/appmetrica/analytics/impl/em;

    invoke-virtual {v4, v3}, Lio/appmetrica/analytics/impl/Ei;->a(Lio/appmetrica/analytics/impl/em;)V

    invoke-interface {p2}, Lio/appmetrica/analytics/impl/Pa;->b()Landroid/os/Handler;

    move-result-object v5

    invoke-static {v4, v0, v5}, Lio/appmetrica/analytics/impl/G0;->a(Lio/appmetrica/analytics/impl/Ei;Lio/appmetrica/analytics/impl/if;Landroid/os/Handler;)Lio/appmetrica/analytics/impl/mg;

    move-result-object v5

    iput-object v5, p0, Lio/appmetrica/analytics/impl/F0;->e:Lio/appmetrica/analytics/impl/mg;

    invoke-interface {p2}, Lio/appmetrica/analytics/impl/Pa;->b()Landroid/os/Handler;

    move-result-object p2

    invoke-static {p1, v1, v4, p2, v3}, Lio/appmetrica/analytics/impl/G0;->a(Landroid/content/Context;Lio/appmetrica/analytics/impl/Pf;Lio/appmetrica/analytics/impl/Ei;Landroid/os/Handler;Lio/appmetrica/analytics/impl/em;)Lio/appmetrica/analytics/impl/ri;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/F0;->g:Lio/appmetrica/analytics/impl/ri;

    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/p4;->o()Lio/appmetrica/analytics/impl/pl;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/F0;->j:Lio/appmetrica/analytics/impl/pl;

    new-instance p1, Lio/appmetrica/analytics/impl/p0;

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/p0;-><init>(Lio/appmetrica/analytics/impl/if;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/F0;->l:Lio/appmetrica/analytics/impl/p0;

    return-void
.end method

.method public static final synthetic a(Lio/appmetrica/analytics/impl/F0;)Lio/appmetrica/analytics/impl/P7;
    .locals 0

    .line 286
    iget-object p0, p0, Lio/appmetrica/analytics/impl/F0;->i:Lio/appmetrica/analytics/impl/P7;

    return-object p0
.end method

.method public static final synthetic b(Lio/appmetrica/analytics/impl/F0;)Lio/appmetrica/analytics/impl/ri;
    .locals 0

    .line 123
    iget-object p0, p0, Lio/appmetrica/analytics/impl/F0;->g:Lio/appmetrica/analytics/impl/ri;

    return-object p0
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/cb;
    .locals 0

    .line 292
    iget-object p0, p0, Lio/appmetrica/analytics/impl/F0;->g:Lio/appmetrica/analytics/impl/ri;

    return-object p0
.end method

.method public final a(ILandroid/os/Bundle;)V
    .locals 0

    .line 259
    iget-object p0, p0, Lio/appmetrica/analytics/impl/F0;->d:Lio/appmetrica/analytics/impl/em;

    const/4 p1, 0x0

    .line 260
    invoke-virtual {p0, p2, p1}, Lio/appmetrica/analytics/impl/em;->b(Landroid/os/Bundle;Lio/appmetrica/analytics/StartupParamsCallback;)V

    return-void
.end method

.method public final a(Landroid/location/Location;)V
    .locals 0

    .line 287
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/F0;->j()Lio/appmetrica/analytics/impl/Wa;

    move-result-object p0

    invoke-interface {p0, p1}, Lio/appmetrica/analytics/impl/Wa;->a(Landroid/location/Location;)V

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig;)V
    .locals 5

    .line 232
    iget-object v0, p0, Lio/appmetrica/analytics/impl/F0;->i:Lio/appmetrica/analytics/impl/P7;

    .line 233
    iget-object v1, p0, Lio/appmetrica/analytics/impl/F0;->l:Lio/appmetrica/analytics/impl/p0;

    .line 234
    iget-object v2, v1, Lio/appmetrica/analytics/impl/p0;->b:Lio/appmetrica/analytics/impl/z0;

    .line 235
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 236
    const-string v3, "629a824d-c717-4ba5-bc0f-3f3968554d01"

    invoke-static {v3}, Lio/appmetrica/analytics/AppMetricaConfig;->newConfigBuilder(Ljava/lang/String;)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    move-result-object v3

    .line 237
    iget-object v4, v2, Lio/appmetrica/analytics/impl/z0;->a:Lio/appmetrica/analytics/impl/E6;

    invoke-virtual {v4}, Lio/appmetrica/analytics/impl/E6;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v2, v2, Lio/appmetrica/analytics/impl/z0;->b:Lio/appmetrica/analytics/impl/ra;

    .line 238
    iget-object v2, v2, Lio/appmetrica/analytics/impl/ra;->a:Ljava/lang/Boolean;

    .line 239
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 240
    invoke-virtual {v3, v2}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->handleFirstActivationAsUpdate(Z)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 241
    :cond_0
    iget-object p1, p1, Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig;->advIdentifiersTracking:Ljava/lang/Boolean;

    if-nez p1, :cond_1

    .line 242
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 243
    invoke-virtual {v3, p1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withAdvIdentifiersTracking(Z)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 244
    invoke-virtual {v3}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->build()Lio/appmetrica/analytics/AppMetricaConfig;

    move-result-object p1

    .line 245
    iget-object v1, v1, Lio/appmetrica/analytics/impl/p0;->a:Lio/appmetrica/analytics/impl/if;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/if;->f()Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 246
    :cond_2
    invoke-virtual {v1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->build()Lio/appmetrica/analytics/AppMetricaConfig;

    move-result-object v2

    iget-object v2, v2, Lio/appmetrica/analytics/AppMetricaConfig;->advIdentifiersTracking:Ljava/lang/Boolean;

    if-nez v2, :cond_3

    .line 247
    iget-object p1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->advIdentifiersTracking:Ljava/lang/Boolean;

    if-eqz p1, :cond_3

    .line 248
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v1, p1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->withAdvIdentifiersTracking(Z)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    .line 249
    :cond_3
    invoke-virtual {v1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->build()Lio/appmetrica/analytics/AppMetricaConfig;

    move-result-object p1

    .line 250
    :goto_0
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/P7;->a(Lio/appmetrica/analytics/AppMetricaConfig;)Lio/appmetrica/analytics/AppMetricaConfig$Builder;

    move-result-object v1

    .line 251
    invoke-virtual {v0, v1, p1}, Lio/appmetrica/analytics/impl/P7;->a(Lio/appmetrica/analytics/AppMetricaConfig$Builder;Lio/appmetrica/analytics/AppMetricaConfig;)V

    .line 252
    invoke-virtual {v1}, Lio/appmetrica/analytics/AppMetricaConfig$Builder;->build()Lio/appmetrica/analytics/AppMetricaConfig;

    move-result-object p1

    .line 253
    invoke-static {}, Lio/appmetrica/analytics/coreutils/internal/logger/LoggerStorage;->getMainPublicOrAnonymousLogger()Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-result-object v0

    .line 254
    new-instance v1, Lio/appmetrica/analytics/impl/E0;

    invoke-direct {v1, p0, p1, v0}, Lio/appmetrica/analytics/impl/E0;-><init>(Lio/appmetrica/analytics/impl/F0;Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    const/4 v2, 0x0

    .line 255
    invoke-virtual {p0, v0, p1, v1, v2}, Lio/appmetrica/analytics/impl/F0;->a(Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/impl/Kc;Z)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 256
    sget-object p0, Lio/appmetrica/analytics/logger/appmetrica/internal/ImportantLogger;->INSTANCE:Lio/appmetrica/analytics/logger/appmetrica/internal/ImportantLogger;

    .line 257
    new-array p1, v2, [Ljava/lang/Object;

    .line 258
    const-string v0, "AppMetrica"

    const-string v1, "Activate AppMetrica in anonymous mode"

    invoke-virtual {p0, v0, v1, p1}, Lio/appmetrica/analytics/logger/common/BaseImportantLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public final a(Lio/appmetrica/analytics/DeferredDeeplinkListener;)V
    .locals 0

    .line 262
    iget-object p0, p0, Lio/appmetrica/analytics/impl/F0;->e:Lio/appmetrica/analytics/impl/mg;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/mg;->a(Lio/appmetrica/analytics/DeferredDeeplinkListener;)V

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/DeferredDeeplinkParametersListener;)V
    .locals 0

    .line 261
    iget-object p0, p0, Lio/appmetrica/analytics/impl/F0;->e:Lio/appmetrica/analytics/impl/mg;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/mg;->a(Lio/appmetrica/analytics/DeferredDeeplinkParametersListener;)V

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/ReporterConfig;)V
    .locals 0

    .line 263
    iget-object p0, p0, Lio/appmetrica/analytics/impl/F0;->g:Lio/appmetrica/analytics/impl/ri;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/ri;->a(Lio/appmetrica/analytics/ReporterConfig;)V

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/StartupParamsCallback;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/StartupParamsCallback;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lio/appmetrica/analytics/impl/F0;->d:Lio/appmetrica/analytics/impl/em;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/F0;->f:Lio/appmetrica/analytics/impl/Pf;

    .line 265
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Pf;->a:Landroid/content/ContentValues;

    .line 266
    const-string v1, "PROCESS_CFG_CLIDS"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 267
    invoke-static {p0}, Lio/appmetrica/analytics/impl/ub;->c(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    .line 268
    invoke-virtual {v0, p1, p2, p0}, Lio/appmetrica/analytics/impl/em;->a(Lio/appmetrica/analytics/StartupParamsCallback;Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;Lio/appmetrica/analytics/AppMetricaConfig;Z)V
    .locals 5

    iget-object v0, p2, Lio/appmetrica/analytics/AppMetricaConfig;->logs:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->setEnabled(Z)V

    sget-object v3, Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;->Companion:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger$Companion;

    invoke-virtual {v3}, Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger$Companion;->getAnonymousInstance()Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-result-object v3

    invoke-virtual {v3, v0}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->setEnabled(Z)V

    sget-object v0, Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;->Companion:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger$Companion;

    invoke-virtual {v0}, Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger$Companion;->getAnonymousInstance()Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-result-object v0

    invoke-virtual {v0, v2}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->setEnabled(Z)V

    :goto_0
    iget-object v0, p2, Lio/appmetrica/analytics/AppMetricaConfig;->crashReporting:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v3, p0, Lio/appmetrica/analytics/impl/F0;->b:Lio/appmetrica/analytics/impl/Pa;

    if-eqz v0, :cond_1

    invoke-interface {v3}, Lio/appmetrica/analytics/impl/Pa;->d()Lio/appmetrica/analytics/impl/yb;

    move-result-object v0

    iget-object v3, p0, Lio/appmetrica/analytics/impl/F0;->a:Landroid/content/Context;

    invoke-virtual {v0, v3, p2, p0}, Lio/appmetrica/analytics/impl/yb;->a(Landroid/content/Context;Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/impl/db;)V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/F0;->b:Lio/appmetrica/analytics/impl/Pa;

    invoke-interface {v0}, Lio/appmetrica/analytics/impl/Pa;->d()Lio/appmetrica/analytics/impl/yb;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/yb;->b()V

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "Register application crash handler"

    invoke-virtual {p1, v3, v0}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-interface {v3}, Lio/appmetrica/analytics/impl/Pa;->d()Lio/appmetrica/analytics/impl/yb;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/yb;->a()V

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "Disable all crash handlers"

    invoke-virtual {p1, v3, v0}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    iget-object v0, p2, Lio/appmetrica/analytics/AppMetricaConfig;->sessionsAutoTrackingEnabled:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/F0;->j:Lio/appmetrica/analytics/impl/pl;

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/pl;->a()Lio/appmetrica/analytics/impl/n;

    goto :goto_3

    :cond_2
    monitor-enter v1

    :try_start_0
    iget-boolean v0, v1, Lio/appmetrica/analytics/impl/pl;->g:Z

    if-eqz v0, :cond_3

    iget-object v0, v1, Lio/appmetrica/analytics/impl/pl;->a:Lio/appmetrica/analytics/impl/o;

    iget-object v3, v1, Lio/appmetrica/analytics/impl/pl;->c:Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityLifecycleListener;

    sget-object v4, Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;->RESUMED:Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;

    filled-new-array {v4}, [Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lio/appmetrica/analytics/impl/o;->unregisterListener(Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityLifecycleListener;[Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;)V

    iget-object v0, v1, Lio/appmetrica/analytics/impl/pl;->a:Lio/appmetrica/analytics/impl/o;

    iget-object v3, v1, Lio/appmetrica/analytics/impl/pl;->d:Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityLifecycleListener;

    sget-object v4, Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;->PAUSED:Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;

    filled-new-array {v4}, [Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lio/appmetrica/analytics/impl/o;->unregisterListener(Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityLifecycleListener;[Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;)V

    iput-boolean v2, v1, Lio/appmetrica/analytics/impl/pl;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_3
    :goto_2
    monitor-exit v1

    :goto_3
    iget-object v0, p0, Lio/appmetrica/analytics/impl/F0;->f:Lio/appmetrica/analytics/impl/Pf;

    invoke-virtual {v0, p2}, Lio/appmetrica/analytics/impl/Pf;->d(Lio/appmetrica/analytics/AppMetricaConfig;)V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/F0;->d:Lio/appmetrica/analytics/impl/em;

    iput-object p1, v0, Lio/appmetrica/analytics/impl/em;->e:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    iget-object p1, p2, Lio/appmetrica/analytics/AppMetricaConfig;->customHosts:Ljava/util/List;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/em;->b(Ljava/util/List;)V

    iget-object p1, p0, Lio/appmetrica/analytics/impl/F0;->d:Lio/appmetrica/analytics/impl/em;

    iget-object v0, p2, Lio/appmetrica/analytics/AppMetricaConfig;->additionalConfig:Ljava/util/Map;

    const-string v1, "YMM_clids"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_4

    check-cast v0, Ljava/util/Map;

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/impl/em;->a(Ljava/util/Map;)V

    iget-object p1, p2, Lio/appmetrica/analytics/AppMetricaConfig;->additionalConfig:Ljava/util/Map;

    const-string v0, "YMM_distributionReferrer"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/F0;->d:Lio/appmetrica/analytics/impl/em;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/em;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_5

    iget-object p1, p0, Lio/appmetrica/analytics/impl/F0;->d:Lio/appmetrica/analytics/impl/em;

    const-string v0, "api"

    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/impl/em;->b(Ljava/lang/String;)V

    :cond_5
    iget-object p1, p0, Lio/appmetrica/analytics/impl/F0;->h:Lio/appmetrica/analytics/impl/Ei;

    iget-object v0, p2, Lio/appmetrica/analytics/AppMetricaConfig;->locationTracking:Ljava/lang/Boolean;

    iget-object v1, p2, Lio/appmetrica/analytics/AppMetricaConfig;->dataSendingEnabled:Ljava/lang/Boolean;

    iget-object p2, p2, Lio/appmetrica/analytics/AppMetricaConfig;->advIdentifiersTracking:Ljava/lang/Boolean;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p1, v0, v1, p2, p3}, Lio/appmetrica/analytics/impl/Ei;->a(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/F0;->d:Lio/appmetrica/analytics/impl/em;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/em;->i()V

    return-void

    :goto_5
    monitor-exit v1

    throw p0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 291
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/F0;->j()Lio/appmetrica/analytics/impl/Wa;

    move-result-object p0

    invoke-interface {p0, p1}, Lio/appmetrica/analytics/impl/Wa;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 290
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/F0;->j()Lio/appmetrica/analytics/impl/Wa;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lio/appmetrica/analytics/impl/Wa;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 288
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/F0;->j()Lio/appmetrica/analytics/impl/Wa;

    move-result-object p0

    invoke-interface {p0, p1}, Lio/appmetrica/analytics/impl/Wa;->a(Z)V

    return-void
.end method

.method public final a(ZZ)V
    .locals 0

    .line 289
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/F0;->j()Lio/appmetrica/analytics/impl/Wa;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lio/appmetrica/analytics/impl/Wa;->a(ZZ)V

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/impl/Kc;Z)Z
    .locals 1

    .line 269
    iget-object v0, p0, Lio/appmetrica/analytics/impl/F0;->k:Lio/appmetrica/analytics/impl/yc;

    if-nez v0, :cond_1

    .line 270
    invoke-virtual {p0, p1, p2, p4}, Lio/appmetrica/analytics/impl/F0;->a(Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;Lio/appmetrica/analytics/AppMetricaConfig;Z)V

    .line 271
    iget-object p1, p0, Lio/appmetrica/analytics/impl/F0;->e:Lio/appmetrica/analytics/impl/mg;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/mg;->a()V

    .line 272
    invoke-interface {p3}, Lio/appmetrica/analytics/impl/Kc;->a()Lio/appmetrica/analytics/impl/wc;

    move-result-object p1

    .line 273
    new-instance p2, Lio/appmetrica/analytics/impl/yc;

    .line 274
    new-instance p3, Lio/appmetrica/analytics/impl/K7;

    invoke-direct {p3, p1}, Lio/appmetrica/analytics/impl/K7;-><init>(Lio/appmetrica/analytics/impl/Wa;)V

    invoke-direct {p2, p1, p3}, Lio/appmetrica/analytics/impl/yc;-><init>(Lio/appmetrica/analytics/impl/Wa;Lio/appmetrica/analytics/impl/K7;)V

    .line 275
    iget-object p4, p0, Lio/appmetrica/analytics/impl/F0;->b:Lio/appmetrica/analytics/impl/Pa;

    invoke-interface {p4}, Lio/appmetrica/analytics/impl/Pa;->c()Lio/appmetrica/analytics/impl/h2;

    move-result-object p4

    invoke-virtual {p4, p3}, Lio/appmetrica/analytics/impl/h2;->a(Lio/appmetrica/analytics/impl/K7;)V

    .line 276
    iput-object p2, p0, Lio/appmetrica/analytics/impl/F0;->k:Lio/appmetrica/analytics/impl/yc;

    .line 277
    iget-object p0, p0, Lio/appmetrica/analytics/impl/F0;->j:Lio/appmetrica/analytics/impl/pl;

    .line 278
    iget-object p0, p0, Lio/appmetrica/analytics/impl/pl;->b:Lio/appmetrica/analytics/impl/x5;

    .line 279
    monitor-enter p0

    .line 280
    :try_start_0
    iput-object p1, p0, Lio/appmetrica/analytics/impl/x5;->a:Ljava/lang/Object;

    .line 281
    iget-object p2, p0, Lio/appmetrica/analytics/impl/x5;->b:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/appmetrica/analytics/impl/le;

    .line 282
    invoke-interface {p3, p1}, Lio/appmetrica/analytics/impl/le;->consume(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 283
    :cond_0
    iget-object p1, p0, Lio/appmetrica/analytics/impl/x5;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    .line 284
    :goto_1
    monitor-exit p0

    throw p1

    .line 285
    :cond_1
    invoke-interface {p3}, Lio/appmetrica/analytics/impl/Kc;->a()Lio/appmetrica/analytics/impl/wc;

    const/4 p0, 0x0

    return p0
.end method

.method public final b(Lio/appmetrica/analytics/AppMetricaConfig;)V
    .locals 7

    iget-object v0, p1, Lio/appmetrica/analytics/AppMetricaConfig;->apiKey:Ljava/lang/String;

    invoke-static {v0}, Lio/appmetrica/analytics/coreutils/internal/logger/LoggerStorage;->getOrCreateMainPublicLogger(Ljava/lang/String;)Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-result-object v0

    new-instance v1, Lio/appmetrica/analytics/impl/D0;

    invoke-direct {v1, p0, p1, v0}, Lio/appmetrica/analytics/impl/D0;-><init>(Lio/appmetrica/analytics/impl/F0;Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v0, p1, v1, v2}, Lio/appmetrica/analytics/impl/F0;->a(Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/impl/Kc;Z)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget-boolean v4, p0, Lio/appmetrica/analytics/impl/F0;->m:Z

    if-nez v4, :cond_1

    invoke-virtual {p0, v0, p1, v2}, Lio/appmetrica/analytics/impl/F0;->a(Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;Lio/appmetrica/analytics/AppMetricaConfig;Z)V

    iget-object v4, p1, Lio/appmetrica/analytics/AppMetricaConfig;->userProfileID:Ljava/lang/String;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/F0;->j()Lio/appmetrica/analytics/impl/Wa;

    move-result-object v4

    iget-object v5, p1, Lio/appmetrica/analytics/AppMetricaConfig;->userProfileID:Ljava/lang/String;

    invoke-interface {v4, v5}, Lio/appmetrica/analytics/IReporter;->setUserProfileID(Ljava/lang/String;)V

    :cond_0
    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    if-nez v1, :cond_3

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "AppMetrica SDK already has been activated"

    invoke-virtual {v0, v6, v5}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/F0;->c:Lio/appmetrica/analytics/impl/if;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/if;->a(Lio/appmetrica/analytics/AppMetricaConfig;)V

    :goto_2
    const-string v0, "AppMetrica"

    if-eqz v1, :cond_4

    sget-object v1, Lio/appmetrica/analytics/logger/appmetrica/internal/ImportantLogger;->INSTANCE:Lio/appmetrica/analytics/logger/appmetrica/internal/ImportantLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Activate AppMetrica with APIKey "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p1, Lio/appmetrica/analytics/AppMetricaConfig;->apiKey:Ljava/lang/String;

    invoke-static {v6}, Lio/appmetrica/analytics/coreutils/internal/ApiKeyUtils;->createPartialApiKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v5, v6}, Lio/appmetrica/analytics/logger/common/BaseImportantLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    if-eqz v4, :cond_5

    sget-object v1, Lio/appmetrica/analytics/logger/appmetrica/internal/ImportantLogger;->INSTANCE:Lio/appmetrica/analytics/logger/appmetrica/internal/ImportantLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Upgrade AppMetrica anonymous mode to normal with APIKey "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lio/appmetrica/analytics/AppMetricaConfig;->apiKey:Ljava/lang/String;

    invoke-static {p1}, Lio/appmetrica/analytics/coreutils/internal/ApiKeyUtils;->createPartialApiKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, p1, v3}, Lio/appmetrica/analytics/logger/common/BaseImportantLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    iput-boolean v2, p0, Lio/appmetrica/analytics/impl/F0;->m:Z

    return-void
.end method

.method public final c(Lio/appmetrica/analytics/ReporterConfig;)Lio/appmetrica/analytics/impl/bb;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/F0;->g:Lio/appmetrica/analytics/impl/ri;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/ri;->b(Lio/appmetrica/analytics/ReporterConfig;)Lio/appmetrica/analytics/impl/bb;

    move-result-object p0

    return-object p0
.end method

.method public final clearAppEnvironment()V
    .locals 0

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/F0;->j()Lio/appmetrica/analytics/impl/Wa;

    move-result-object p0

    invoke-interface {p0}, Lio/appmetrica/analytics/IReporter;->clearAppEnvironment()V

    return-void
.end method

.method public final d()Lio/appmetrica/analytics/impl/ka;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/F0;->d:Lio/appmetrica/analytics/impl/em;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/em;->e()Lio/appmetrica/analytics/impl/ka;

    move-result-object p0

    return-object p0
.end method

.method public final e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/F0;->d:Lio/appmetrica/analytics/impl/em;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/em;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final g()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/F0;->d:Lio/appmetrica/analytics/impl/em;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/em;->b()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final h()Lio/appmetrica/analytics/AdvIdentifiersResult;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/F0;->d:Lio/appmetrica/analytics/impl/em;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/em;->a()Lio/appmetrica/analytics/AdvIdentifiersResult;

    move-result-object p0

    return-object p0
.end method

.method public final i()Lio/appmetrica/analytics/impl/yc;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/F0;->k:Lio/appmetrica/analytics/impl/yc;

    return-object p0
.end method

.method public final j()Lio/appmetrica/analytics/impl/Wa;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/F0;->k:Lio/appmetrica/analytics/impl/yc;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/yc;->a:Lio/appmetrica/analytics/impl/Wa;

    return-object p0
.end method

.method public final k()Lio/appmetrica/analytics/impl/ri;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/F0;->g:Lio/appmetrica/analytics/impl/ri;

    return-object p0
.end method

.method public final putAppEnvironmentValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/F0;->j()Lio/appmetrica/analytics/impl/Wa;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lio/appmetrica/analytics/IReporter;->putAppEnvironmentValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setDataSendingEnabled(Z)V
    .locals 0

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/F0;->j()Lio/appmetrica/analytics/impl/Wa;

    move-result-object p0

    invoke-interface {p0, p1}, Lio/appmetrica/analytics/IReporter;->setDataSendingEnabled(Z)V

    return-void
.end method

.method public final setUserProfileID(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/F0;->j()Lio/appmetrica/analytics/impl/Wa;

    move-result-object p0

    invoke-interface {p0, p1}, Lio/appmetrica/analytics/IReporter;->setUserProfileID(Ljava/lang/String;)V

    return-void
.end method
