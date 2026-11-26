.class public final Lio/appmetrica/analytics/billing/impl/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceModuleReporterComponentLifecycleListener;


# instance fields
.field public final a:Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;

.field public b:Lio/appmetrica/analytics/billing/impl/B;

.field public c:Lio/appmetrica/analytics/billinginterface/internal/monitor/BillingMonitor;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;Lio/appmetrica/analytics/billing/impl/B;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/billing/impl/m;->a:Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;

    iput-object p2, p0, Lio/appmetrica/analytics/billing/impl/m;->b:Lio/appmetrica/analytics/billing/impl/B;

    return-void
.end method

.method public static final a(Lio/appmetrica/analytics/billing/impl/m;Lio/appmetrica/analytics/coreapi/internal/servicecomponents/applicationstate/ApplicationState;)V
    .locals 1

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    sget-object v0, Lio/appmetrica/analytics/coreapi/internal/servicecomponents/applicationstate/ApplicationState;->VISIBLE:Lio/appmetrica/analytics/coreapi/internal/servicecomponents/applicationstate/ApplicationState;

    if-ne p1, v0, :cond_0

    .line 27
    :try_start_0
    iget-object p0, p0, Lio/appmetrica/analytics/billing/impl/m;->c:Lio/appmetrica/analytics/billinginterface/internal/monitor/BillingMonitor;

    if-eqz p0, :cond_0

    .line 28
    invoke-interface {p0}, Lio/appmetrica/analytics/billinginterface/internal/monitor/BillingMonitor;->onSessionResumed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/billing/impl/B;)V
    .locals 4

    iget-object v0, p0, Lio/appmetrica/analytics/billing/impl/m;->c:Lio/appmetrica/analytics/billinginterface/internal/monitor/BillingMonitor;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    new-instance v1, Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;

    iget-object v2, p1, Lio/appmetrica/analytics/billing/impl/B;->b:Lio/appmetrica/analytics/billing/impl/y;

    iget v3, v2, Lio/appmetrica/analytics/billing/impl/y;->a:I

    iget v2, v2, Lio/appmetrica/analytics/billing/impl/y;->b:I

    invoke-direct {v1, v3, v2}, Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;-><init>(II)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfigChangedListener;->onBillingConfigChanged(Lio/appmetrica/analytics/billinginterface/internal/config/BillingConfig;)V

    :cond_1
    iput-object p1, p0, Lio/appmetrica/analytics/billing/impl/m;->b:Lio/appmetrica/analytics/billing/impl/B;

    return-void
.end method

.method public final onMainReporterCreated(Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceModuleReporterComponentContext;)V
    .locals 17

    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceModuleReporterComponentContext;->getConfig()Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceComponentModuleConfig;

    move-result-object v1

    invoke-interface {v1}, Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceComponentModuleConfig;->isRevenueAutoTrackingEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v1, v0, Lio/appmetrica/analytics/billing/impl/m;->a:Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;

    invoke-interface {v1}, Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v1, v0, Lio/appmetrica/analytics/billing/impl/m;->a:Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;

    invoke-interface {v1}, Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;->getExecutorProvider()Lio/appmetrica/analytics/modulesapi/internal/common/ExecutorProvider;

    move-result-object v1

    invoke-interface {v1}, Lio/appmetrica/analytics/modulesapi/internal/common/ExecutorProvider;->getDefaultExecutor()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object v4

    iget-object v1, v0, Lio/appmetrica/analytics/billing/impl/m;->a:Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;

    invoke-interface {v1}, Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;->getExecutorProvider()Lio/appmetrica/analytics/modulesapi/internal/common/ExecutorProvider;

    move-result-object v1

    invoke-interface {v1}, Lio/appmetrica/analytics/modulesapi/internal/common/ExecutorProvider;->getUiExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.android.billingclient.BuildConfig"

    invoke-static {v2}, Lio/appmetrica/analytics/coreutils/internal/reflection/ReflectionUtils;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v6, "VERSION_NAME"

    invoke-virtual {v2, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_a

    invoke-static {v2}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    const-string v6, "2."

    const/4 v7, 0x0

    invoke-static {v2, v6, v7}, Lra8;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_3

    sget-object v2, Lio/appmetrica/analytics/billinginterface/internal/BillingType;->NONE:Lio/appmetrica/analytics/billinginterface/internal/BillingType;

    goto :goto_3

    :cond_3
    const-string v6, "3."

    invoke-static {v2, v6, v7}, Lra8;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_4

    sget-object v2, Lio/appmetrica/analytics/billinginterface/internal/BillingType;->NONE:Lio/appmetrica/analytics/billinginterface/internal/BillingType;

    goto :goto_3

    :cond_4
    const-string v6, "4."

    invoke-static {v2, v6, v7}, Lra8;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_5

    sget-object v2, Lio/appmetrica/analytics/billinginterface/internal/BillingType;->NONE:Lio/appmetrica/analytics/billinginterface/internal/BillingType;

    goto :goto_3

    :cond_5
    const-string v6, "5."

    invoke-static {v2, v6, v7}, Lra8;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_6

    sget-object v2, Lio/appmetrica/analytics/billinginterface/internal/BillingType;->LIBRARY_V6:Lio/appmetrica/analytics/billinginterface/internal/BillingType;

    goto :goto_3

    :cond_6
    const-string v6, "6."

    invoke-static {v2, v6, v7}, Lra8;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_7

    sget-object v2, Lio/appmetrica/analytics/billinginterface/internal/BillingType;->LIBRARY_V6:Lio/appmetrica/analytics/billinginterface/internal/BillingType;

    goto :goto_3

    :cond_7
    const-string v6, "7."

    invoke-static {v2, v6, v7}, Lra8;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_8

    sget-object v2, Lio/appmetrica/analytics/billinginterface/internal/BillingType;->LIBRARY_V6:Lio/appmetrica/analytics/billinginterface/internal/BillingType;

    goto :goto_3

    :cond_8
    const-string v6, "8."

    invoke-static {v2, v6, v7}, Lra8;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v2, Lio/appmetrica/analytics/billinginterface/internal/BillingType;->LIBRARY_V8:Lio/appmetrica/analytics/billinginterface/internal/BillingType;

    goto :goto_3

    :cond_9
    sget-object v2, Lio/appmetrica/analytics/billinginterface/internal/BillingType;->LIBRARY_V8:Lio/appmetrica/analytics/billinginterface/internal/BillingType;

    goto :goto_3

    :cond_a
    :goto_2
    sget-object v2, Lio/appmetrica/analytics/billinginterface/internal/BillingType;->NONE:Lio/appmetrica/analytics/billinginterface/internal/BillingType;

    :goto_3
    new-instance v6, Lio/appmetrica/analytics/billing/impl/k;

    iget-object v7, v0, Lio/appmetrica/analytics/billing/impl/m;->a:Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;

    invoke-interface {v7}, Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;->getServiceStorageProvider()Lio/appmetrica/analytics/modulesapi/internal/service/ServiceStorageProvider;

    move-result-object v7

    new-instance v8, Lio/appmetrica/analytics/billing/impl/e;

    invoke-direct {v8}, Lio/appmetrica/analytics/billing/impl/e;-><init>()V

    new-instance v9, Lio/appmetrica/analytics/billing/impl/b;

    const/4 v10, 0x1

    invoke-direct {v9, v1, v10, v1}, Lio/appmetrica/analytics/billing/impl/b;-><init>(Lio/appmetrica/analytics/billing/impl/i;ILjh2;)V

    const-string v1, "auto_inapp_collecting_info_data"

    invoke-interface {v7, v1, v8, v9}, Lio/appmetrica/analytics/modulesapi/internal/service/ServiceStorageProvider;->createBinaryStateStorageFactory(Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateSerializer;Lio/appmetrica/analytics/coreapi/internal/data/ProtobufConverter;)Lio/appmetrica/analytics/coreapi/internal/data/ProtobufBinaryStateStorageFactory;

    move-result-object v1

    iget-object v7, v0, Lio/appmetrica/analytics/billing/impl/m;->a:Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;

    invoke-interface {v7}, Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-interface {v1, v7}, Lio/appmetrica/analytics/coreapi/internal/data/ProtobufBinaryStateStorageFactory;->create(Landroid/content/Context;)Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;

    move-result-object v1

    invoke-direct {v6, v1}, Lio/appmetrica/analytics/billing/impl/k;-><init>(Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;)V

    new-instance v7, Lio/appmetrica/analytics/billing/impl/j;

    invoke-interface/range {p1 .. p1}, Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceModuleReporterComponentContext;->getReporter()Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceComponentModuleReporter;

    move-result-object v12

    iget-object v1, v0, Lio/appmetrica/analytics/billing/impl/m;->a:Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;

    invoke-interface {v1}, Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;->getExecutorProvider()Lio/appmetrica/analytics/modulesapi/internal/common/ExecutorProvider;

    move-result-object v1

    invoke-interface {v1}, Lio/appmetrica/analytics/modulesapi/internal/common/ExecutorProvider;->getReportRunnableExecutor()Ljava/util/concurrent/Executor;

    move-result-object v13

    const/4 v15, 0x4

    const/16 v16, 0x0

    const/4 v14, 0x0

    move-object v11, v7

    invoke-direct/range {v11 .. v16}, Lio/appmetrica/analytics/billing/impl/j;-><init>(Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ServiceComponentModuleReporter;Ljava/util/concurrent/Executor;Lio/appmetrica/analytics/billing/impl/o;ILjh2;)V

    sget-object v1, Lio/appmetrica/analytics/billing/impl/l;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v10, :cond_c

    const/4 v2, 0x2

    if-eq v1, v2, :cond_b

    new-instance v1, Lio/appmetrica/analytics/billinginterface/internal/monitor/DummyBillingMonitor;

    invoke-direct {v1}, Lio/appmetrica/analytics/billinginterface/internal/monitor/DummyBillingMonitor;-><init>()V

    goto :goto_5

    :cond_b
    new-instance v2, Lio/appmetrica/analytics/billingv8/internal/BillingLibraryMonitor;

    const/16 v10, 0x60

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v11}, Lio/appmetrica/analytics/billingv8/internal/BillingLibraryMonitor;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lio/appmetrica/analytics/billinginterface/internal/storage/BillingInfoStorage;Lio/appmetrica/analytics/billinginterface/internal/storage/BillingInfoSender;Lio/appmetrica/analytics/billinginterface/internal/storage/BillingInfoManager;Lio/appmetrica/analytics/billinginterface/internal/update/UpdatePolicy;ILjh2;)V

    :goto_4
    move-object v1, v2

    goto :goto_5

    :cond_c
    new-instance v2, Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor;

    const/16 v10, 0x60

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v11}, Lio/appmetrica/analytics/billingv6/internal/BillingLibraryMonitor;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lio/appmetrica/analytics/billinginterface/internal/storage/BillingInfoStorage;Lio/appmetrica/analytics/billinginterface/internal/storage/BillingInfoSender;Lio/appmetrica/analytics/billinginterface/internal/storage/BillingInfoManager;Lio/appmetrica/analytics/billinginterface/internal/update/UpdatePolicy;ILjh2;)V

    goto :goto_4

    :goto_5
    iput-object v1, v0, Lio/appmetrica/analytics/billing/impl/m;->c:Lio/appmetrica/analytics/billinginterface/internal/monitor/BillingMonitor;

    iget-object v1, v0, Lio/appmetrica/analytics/billing/impl/m;->b:Lio/appmetrica/analytics/billing/impl/B;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/billing/impl/m;->a(Lio/appmetrica/analytics/billing/impl/B;)V

    iget-object v1, v0, Lio/appmetrica/analytics/billing/impl/m;->a:Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;

    invoke-interface {v1}, Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;->getApplicationStateProvider()Lio/appmetrica/analytics/coreapi/internal/servicecomponents/applicationstate/ApplicationStateProvider;

    move-result-object v1

    new-instance v2, Lr1a;

    invoke-direct {v2, v0}, Lr1a;-><init>(Lio/appmetrica/analytics/billing/impl/m;)V

    invoke-interface {v1, v2}, Lio/appmetrica/analytics/coreapi/internal/servicecomponents/applicationstate/ApplicationStateProvider;->registerStickyObserver(Lio/appmetrica/analytics/coreapi/internal/servicecomponents/applicationstate/ApplicationStateObserver;)Lio/appmetrica/analytics/coreapi/internal/servicecomponents/applicationstate/ApplicationState;

    move-result-object v1

    sget-object v2, Lio/appmetrica/analytics/coreapi/internal/servicecomponents/applicationstate/ApplicationState;->VISIBLE:Lio/appmetrica/analytics/coreapi/internal/servicecomponents/applicationstate/ApplicationState;

    if-ne v1, v2, :cond_d

    :try_start_1
    iget-object v0, v0, Lio/appmetrica/analytics/billing/impl/m;->c:Lio/appmetrica/analytics/billinginterface/internal/monitor/BillingMonitor;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Lio/appmetrica/analytics/billinginterface/internal/monitor/BillingMonitor;->onSessionResumed()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_d
    :goto_6
    return-void
.end method
