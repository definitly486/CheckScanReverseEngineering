.class public final Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint$serviceConfigExtensionConfiguration$1;
.super Lio/appmetrica/analytics/modulesapi/internal/client/ServiceConfigExtensionConfiguration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/appmetrica/analytics/modulesapi/internal/client/ServiceConfigExtensionConfiguration<",
        "Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/ClientApplovinConfigWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint$serviceConfigExtensionConfiguration$1;->a:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint;

    invoke-direct {p0}, Lio/appmetrica/analytics/modulesapi/internal/client/ServiceConfigExtensionConfiguration;-><init>()V

    return-void
.end method


# virtual methods
.method public getBundleConverter()Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/i;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint$serviceConfigExtensionConfiguration$1;->a:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint;

    invoke-static {p0}, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint;->access$getBundleConverter$p(Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint;)Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/i;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBundleConverter()Lio/appmetrica/analytics/modulesapi/internal/client/BundleToServiceConfigConverter;
    .locals 0

    .line 7
    invoke-virtual {p0}, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint$serviceConfigExtensionConfiguration$1;->getBundleConverter()Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/i;

    move-result-object p0

    return-object p0
.end method

.method public getServiceConfigUpdateListener()Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint$configUpdateListener$1;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint$serviceConfigExtensionConfiguration$1;->a:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint;

    invoke-static {p0}, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint;->access$getConfigUpdateListener$p(Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint;)Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint$configUpdateListener$1;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getServiceConfigUpdateListener()Lio/appmetrica/analytics/modulesapi/internal/client/ServiceConfigUpdateListener;
    .locals 0

    .line 7
    invoke-virtual {p0}, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint$serviceConfigExtensionConfiguration$1;->getServiceConfigUpdateListener()Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoClientModuleEntryPoint$configUpdateListener$1;

    move-result-object p0

    return-object p0
.end method
