.class public final Lio/appmetrica/analytics/impl/Nd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Pf;

.field public final b:Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashClientModule;

.field public final c:Lio/appmetrica/analytics/impl/L0;

.field public d:Lio/appmetrica/analytics/impl/K0;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Pf;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Nd;->a:Lio/appmetrica/analytics/impl/Pf;

    const-string p1, "io.appmetrica.analytics.ndkcrashes.NativeCrashClientModuleImpl"

    const-class v0, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashClientModule;

    invoke-static {p1, v0}, Lio/appmetrica/analytics/coreutils/internal/reflection/ReflectionUtils;->loadAndInstantiateClassWithDefaultConstructor(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashClientModule;

    if-nez p1, :cond_0

    new-instance p1, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashClientModuleDummy;

    invoke-direct {p1}, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashClientModuleDummy;-><init>()V

    :cond_0
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Nd;->b:Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashClientModule;

    new-instance p1, Lio/appmetrica/analytics/impl/L0;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/L0;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Nd;->c:Lio/appmetrica/analytics/impl/L0;

    return-void
.end method
