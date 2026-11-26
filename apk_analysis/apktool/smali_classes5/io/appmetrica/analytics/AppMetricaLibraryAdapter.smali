.class public Lio/appmetrica/analytics/AppMetricaLibraryAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lio/appmetrica/analytics/impl/I0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/I0;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/I0;-><init>()V

    sput-object v0, Lio/appmetrica/analytics/AppMetricaLibraryAdapter;->a:Lio/appmetrica/analytics/impl/I0;

    return-void
.end method

.method public static activate(Landroid/content/Context;)V
    .locals 3

    .line 71
    sget-object v0, Lio/appmetrica/analytics/AppMetricaLibraryAdapter;->a:Lio/appmetrica/analytics/impl/I0;

    .line 72
    iget-object v1, v0, Lio/appmetrica/analytics/impl/I0;->a:Lio/appmetrica/analytics/impl/Qb;

    .line 73
    iget-object v1, v1, Lio/appmetrica/analytics/impl/Qb;->a:Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;

    .line 74
    invoke-virtual {v1, p0}, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;->validate(Ljava/lang/Object;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;

    move-result-object v1

    invoke-virtual {v1}, Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    iget-object v0, v0, Lio/appmetrica/analytics/impl/I0;->b:Lio/appmetrica/analytics/impl/Rb;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    invoke-static {}, Lio/appmetrica/analytics/impl/p4;->l()Lio/appmetrica/analytics/impl/p4;

    move-result-object v0

    .line 77
    iget-object v0, v0, Lio/appmetrica/analytics/impl/p4;->g:Lio/appmetrica/analytics/impl/P5;

    .line 78
    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/impl/P5;->a(Landroid/content/Context;)V

    .line 79
    invoke-static {}, Lio/appmetrica/analytics/impl/p4;->l()Lio/appmetrica/analytics/impl/p4;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/p4;->b()Lio/appmetrica/analytics/impl/e0;

    move-result-object v0

    .line 80
    invoke-static {}, Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig;->newConfigBuilder()Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig$Builder;->build()Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lio/appmetrica/analytics/impl/e0;->a(Landroid/content/Context;Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig;)V

    return-void

    .line 81
    :cond_0
    sget-object p0, Lio/appmetrica/analytics/logger/appmetrica/internal/ImportantLogger;->INSTANCE:Lio/appmetrica/analytics/logger/appmetrica/internal/ImportantLogger;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "[AppMetricaLibraryAdapterProxy]"

    const-string v2, "Activation failed due to context is null"

    invoke-virtual {p0, v1, v2, v0}, Lio/appmetrica/analytics/logger/common/BaseImportantLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static activate(Landroid/content/Context;Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig;)V
    .locals 3

    sget-object v0, Lio/appmetrica/analytics/AppMetricaLibraryAdapter;->a:Lio/appmetrica/analytics/impl/I0;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/I0;->a:Lio/appmetrica/analytics/impl/Qb;

    iget-object v2, v1, Lio/appmetrica/analytics/impl/Qb;->a:Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;

    invoke-virtual {v2, p0}, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;->validate(Ljava/lang/Object;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;

    move-result-object v2

    invoke-virtual {v2}, Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Lio/appmetrica/analytics/impl/Qb;->b:Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;

    invoke-virtual {v1, p1}, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;->validate(Ljava/lang/Object;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;

    move-result-object v1

    invoke-virtual {v1}, Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lio/appmetrica/analytics/impl/I0;->b:Lio/appmetrica/analytics/impl/Rb;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lio/appmetrica/analytics/impl/p4;->l()Lio/appmetrica/analytics/impl/p4;

    move-result-object v0

    iget-object v0, v0, Lio/appmetrica/analytics/impl/p4;->g:Lio/appmetrica/analytics/impl/P5;

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/impl/P5;->a(Landroid/content/Context;)V

    invoke-static {}, Lio/appmetrica/analytics/impl/p4;->l()Lio/appmetrica/analytics/impl/p4;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/p4;->b()Lio/appmetrica/analytics/impl/e0;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lio/appmetrica/analytics/impl/e0;->a(Landroid/content/Context;Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig;)V

    return-void

    :cond_0
    sget-object p0, Lio/appmetrica/analytics/logger/appmetrica/internal/ImportantLogger;->INSTANCE:Lio/appmetrica/analytics/logger/appmetrica/internal/ImportantLogger;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "[AppMetricaLibraryAdapterProxy]"

    const-string v1, "Activation failed due to context is null or invalid config"

    invoke-virtual {p0, v0, v1, p1}, Lio/appmetrica/analytics/logger/common/BaseImportantLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lio/appmetrica/analytics/AppMetricaLibraryAdapter;->a:Lio/appmetrica/analytics/impl/I0;

    invoke-virtual {v0, p0, p1, p2}, Lio/appmetrica/analytics/impl/I0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setAdvIdentifiersTracking(Z)V
    .locals 3

    sget-object v0, Lio/appmetrica/analytics/AppMetricaLibraryAdapter;->a:Lio/appmetrica/analytics/impl/I0;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/I0;->a:Lio/appmetrica/analytics/impl/Qb;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/Qb;->c:Lio/appmetrica/analytics/impl/Al;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/Al;->a(Ljava/lang/Void;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;

    move-result-object v1

    invoke-virtual {v1}, Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lio/appmetrica/analytics/impl/I0;->b:Lio/appmetrica/analytics/impl/Rb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lio/appmetrica/analytics/ModulesFacade;->setAdvIdentifiersTracking(Z)V

    :cond_0
    return-void
.end method

.method public static setProxy(Lio/appmetrica/analytics/impl/I0;)V
    .locals 0

    sput-object p0, Lio/appmetrica/analytics/AppMetricaLibraryAdapter;->a:Lio/appmetrica/analytics/impl/I0;

    return-void
.end method

.method public static subscribeForAutoCollectedData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lio/appmetrica/analytics/AppMetricaLibraryAdapter;->a:Lio/appmetrica/analytics/impl/I0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lio/appmetrica/analytics/logger/appmetrica/internal/ImportantLogger;->INSTANCE:Lio/appmetrica/analytics/logger/appmetrica/internal/ImportantLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Subscribe for auto-collected data with api key: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lio/appmetrica/analytics/coreutils/internal/ApiKeyUtils;->createPartialApiKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "[AppMetricaLibraryAdapterProxy]"

    invoke-virtual {v1, v4, v2, v3}, Lio/appmetrica/analytics/logger/common/BaseImportantLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v0, Lio/appmetrica/analytics/impl/I0;->a:Lio/appmetrica/analytics/impl/Qb;

    iget-object v2, v1, Lio/appmetrica/analytics/impl/Qb;->g:Lio/appmetrica/analytics/impl/k0;

    invoke-virtual {v2, p1}, Lio/appmetrica/analytics/impl/k0;->a(Ljava/lang/String;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;

    move-result-object v2

    invoke-virtual {v2}, Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Lio/appmetrica/analytics/impl/Qb;->a:Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;

    invoke-virtual {v1, p0}, Lio/appmetrica/analytics/coreutils/internal/validation/NonNullValidator;->validate(Ljava/lang/Object;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;

    move-result-object v1

    invoke-virtual {v1}, Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lio/appmetrica/analytics/impl/I0;->b:Lio/appmetrica/analytics/impl/Rb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lio/appmetrica/analytics/impl/p4;->l()Lio/appmetrica/analytics/impl/p4;

    move-result-object v0

    iget-object v0, v0, Lio/appmetrica/analytics/impl/p4;->g:Lio/appmetrica/analytics/impl/P5;

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/impl/P5;->a(Landroid/content/Context;)V

    invoke-static {}, Lio/appmetrica/analytics/impl/p4;->l()Lio/appmetrica/analytics/impl/p4;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/p4;->b()Lio/appmetrica/analytics/impl/e0;

    move-result-object v0

    iget-object v1, v0, Lio/appmetrica/analytics/impl/e0;->c:Lio/appmetrica/analytics/impl/f4;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/f4;->a()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object v1

    new-instance v2, Lio/appmetrica/analytics/impl/d0;

    invoke-direct {v2, v0, p0}, Lio/appmetrica/analytics/impl/d0;-><init>(Lio/appmetrica/analytics/impl/e0;Landroid/content/Context;)V

    iget-wide v3, v0, Lio/appmetrica/analytics/impl/e0;->d:J

    invoke-interface {v1, v2, v3, v4}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    invoke-static {p0, p1}, Lio/appmetrica/analytics/ModulesFacade;->subscribeForAutoCollectedData(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
