.class public final Lio/appmetrica/analytics/ModulesFacade;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EXTERNAL_ATTRIBUTION_ADJUST:I = 0x2

.field public static final EXTERNAL_ATTRIBUTION_AIRBRIDGE:I = 0x5

.field public static final EXTERNAL_ATTRIBUTION_APPSFLYER:I = 0x1

.field public static final EXTERNAL_ATTRIBUTION_KOCHAVA:I = 0x3

.field public static final EXTERNAL_ATTRIBUTION_SINGULAR:I = 0x6

.field public static final EXTERNAL_ATTRIBUTION_TENJIN:I = 0x4

.field private static a:Lio/appmetrica/analytics/impl/zd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/zd;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/zd;-><init>()V

    sput-object v0, Lio/appmetrica/analytics/ModulesFacade;->a:Lio/appmetrica/analytics/impl/zd;

    return-void
.end method

.method public static getModuleReporter(Landroid/content/Context;Ljava/lang/String;)Lio/appmetrica/analytics/IModuleReporter;
    .locals 3

    sget-object v0, Lio/appmetrica/analytics/ModulesFacade;->a:Lio/appmetrica/analytics/impl/zd;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/zd;->b:Lio/appmetrica/analytics/impl/rd;

    iget-object v2, v1, Lio/appmetrica/analytics/impl/rd;->b:Lio/appmetrica/analytics/impl/Sn;

    invoke-virtual {v2, p0}, Lio/appmetrica/analytics/impl/Sn;->validate(Ljava/lang/Object;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/rd;->d:Lio/appmetrica/analytics/impl/Sn;

    invoke-virtual {v1, p1}, Lio/appmetrica/analytics/impl/Sn;->validate(Ljava/lang/Object;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/zd;->c:Lio/appmetrica/analytics/impl/Gd;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Gd;->a:Lio/appmetrica/analytics/impl/P5;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/P5;->a(Landroid/content/Context;)V

    sget-object v0, Lio/appmetrica/analytics/impl/vi;->a:Lio/appmetrica/analytics/impl/wi;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lio/appmetrica/analytics/impl/wi;->a(Landroid/content/Context;Ljava/lang/String;)Lio/appmetrica/analytics/impl/oi;

    move-result-object p0

    return-object p0
.end method

.method public static isActivatedForApp()Z
    .locals 2

    sget-object v0, Lio/appmetrica/analytics/ModulesFacade;->a:Lio/appmetrica/analytics/impl/zd;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/zd;->b:Lio/appmetrica/analytics/impl/rd;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/zd;->c:Lio/appmetrica/analytics/impl/Gd;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/zd;->a:Lio/appmetrica/analytics/impl/C0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lio/appmetrica/analytics/impl/C0;->a()Z

    move-result v0

    return v0
.end method

.method public static reportAdRevenue(Lio/appmetrica/analytics/AdRevenue;)V
    .locals 1

    .line 27
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lio/appmetrica/analytics/ModulesFacade;->reportAdRevenue(Lio/appmetrica/analytics/AdRevenue;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static reportAdRevenue(Lio/appmetrica/analytics/AdRevenue;Ljava/lang/Boolean;)V
    .locals 3

    sget-object v0, Lio/appmetrica/analytics/ModulesFacade;->a:Lio/appmetrica/analytics/impl/zd;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v1, v0, Lio/appmetrica/analytics/impl/zd;->b:Lio/appmetrica/analytics/impl/rd;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/zd;->c:Lio/appmetrica/analytics/impl/Gd;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/zd;->d:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v2, Lio/appmetrica/analytics/impl/td;

    invoke-direct {v2, v0, p0, p1}, Lio/appmetrica/analytics/impl/td;-><init>(Lio/appmetrica/analytics/impl/zd;Lio/appmetrica/analytics/AdRevenue;Z)V

    invoke-interface {v1, v2}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static reportEvent(Lio/appmetrica/analytics/ModuleEvent;)V
    .locals 3

    sget-object v0, Lio/appmetrica/analytics/ModulesFacade;->a:Lio/appmetrica/analytics/impl/zd;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/zd;->b:Lio/appmetrica/analytics/impl/rd;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/rd;->a:Lio/appmetrica/analytics/impl/i;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/Sn;->validate(Ljava/lang/Object;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/zd;->c:Lio/appmetrica/analytics/impl/Gd;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/zd;->d:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v2, Lio/appmetrica/analytics/impl/ud;

    invoke-direct {v2, v0, p0}, Lio/appmetrica/analytics/impl/ud;-><init>(Lio/appmetrica/analytics/impl/zd;Lio/appmetrica/analytics/ModuleEvent;)V

    invoke-interface {v1, v2}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static reportExternalAttribution(ILjava/lang/String;)V
    .locals 3

    sget-object v0, Lio/appmetrica/analytics/ModulesFacade;->a:Lio/appmetrica/analytics/impl/zd;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/zd;->b:Lio/appmetrica/analytics/impl/rd;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/zd;->c:Lio/appmetrica/analytics/impl/Gd;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/zd;->d:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v2, Lio/appmetrica/analytics/impl/vd;

    invoke-direct {v2, v0, p0, p1}, Lio/appmetrica/analytics/impl/vd;-><init>(Lio/appmetrica/analytics/impl/zd;ILjava/lang/String;)V

    invoke-interface {v1, v2}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static sendEventsBuffer()V
    .locals 2

    sget-object v0, Lio/appmetrica/analytics/ModulesFacade;->a:Lio/appmetrica/analytics/impl/zd;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/zd;->b:Lio/appmetrica/analytics/impl/rd;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/zd;->c:Lio/appmetrica/analytics/impl/Gd;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lio/appmetrica/analytics/AppMetrica;->sendEventsBuffer()V

    return-void
.end method

.method public static setAdvIdentifiersTracking(Z)V
    .locals 3

    sget-object v0, Lio/appmetrica/analytics/ModulesFacade;->a:Lio/appmetrica/analytics/impl/zd;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/zd;->b:Lio/appmetrica/analytics/impl/rd;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/zd;->c:Lio/appmetrica/analytics/impl/Gd;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/zd;->d:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v2, Lio/appmetrica/analytics/impl/wd;

    invoke-direct {v2, v0, p0}, Lio/appmetrica/analytics/impl/wd;-><init>(Lio/appmetrica/analytics/impl/zd;Z)V

    invoke-interface {v1, v2}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setProxy(Lio/appmetrica/analytics/impl/zd;)V
    .locals 0

    sput-object p0, Lio/appmetrica/analytics/ModulesFacade;->a:Lio/appmetrica/analytics/impl/zd;

    return-void
.end method

.method public static setSessionExtra(Ljava/lang/String;[B)V
    .locals 3

    sget-object v0, Lio/appmetrica/analytics/ModulesFacade;->a:Lio/appmetrica/analytics/impl/zd;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/zd;->b:Lio/appmetrica/analytics/impl/rd;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/rd;->c:Lio/appmetrica/analytics/impl/Sn;

    invoke-virtual {v1, p0}, Lio/appmetrica/analytics/impl/Sn;->validate(Ljava/lang/Object;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/zd;->c:Lio/appmetrica/analytics/impl/Gd;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/zd;->d:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v2, Lio/appmetrica/analytics/impl/xd;

    invoke-direct {v2, v0, p0, p1}, Lio/appmetrica/analytics/impl/xd;-><init>(Lio/appmetrica/analytics/impl/zd;Ljava/lang/String;[B)V

    invoke-interface {v1, v2}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static subscribeForAutoCollectedData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lio/appmetrica/analytics/ModulesFacade;->a:Lio/appmetrica/analytics/impl/zd;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/zd;->b:Lio/appmetrica/analytics/impl/rd;

    iget-object v2, v1, Lio/appmetrica/analytics/impl/rd;->b:Lio/appmetrica/analytics/impl/Sn;

    invoke-virtual {v2, p0}, Lio/appmetrica/analytics/impl/Sn;->validate(Ljava/lang/Object;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/rd;->d:Lio/appmetrica/analytics/impl/Sn;

    invoke-virtual {v1, p1}, Lio/appmetrica/analytics/impl/Sn;->validate(Ljava/lang/Object;)Lio/appmetrica/analytics/coreutils/internal/validation/ValidationResult;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/zd;->c:Lio/appmetrica/analytics/impl/Gd;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/Gd;->a:Lio/appmetrica/analytics/impl/P5;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v1, p0}, Lio/appmetrica/analytics/impl/P5;->a(Landroid/content/Context;)V

    iget-object p0, v0, Lio/appmetrica/analytics/impl/zd;->d:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v0, Lio/appmetrica/analytics/impl/yd;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/yd;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
