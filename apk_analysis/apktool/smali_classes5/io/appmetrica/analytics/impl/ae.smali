.class public final Lio/appmetrica/analytics/impl/ae;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashServiceModule;

.field public final b:Lio/appmetrica/analytics/impl/Ud;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "io.appmetrica.analytics.ndkcrashes.NativeCrashServiceModuleImpl"

    const-class v1, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashServiceModule;

    invoke-static {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/reflection/ReflectionUtils;->loadAndInstantiateClassWithDefaultConstructor(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashServiceModule;

    if-nez v0, :cond_0

    new-instance v0, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashServiceModuleDummy;

    invoke-direct {v0}, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashServiceModuleDummy;-><init>()V

    :cond_0
    iput-object v0, p0, Lio/appmetrica/analytics/impl/ae;->a:Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashServiceModule;

    new-instance v0, Lio/appmetrica/analytics/impl/Ud;

    new-instance v1, Lio/appmetrica/analytics/impl/Zd;

    invoke-direct {v1, p0}, Lio/appmetrica/analytics/impl/Zd;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Ud;-><init>(Lio/appmetrica/analytics/impl/Zd;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/ae;->b:Lio/appmetrica/analytics/impl/Ud;

    return-void
.end method
