.class public final Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoServiceModuleEntryPoint$clientConfigProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/modulesapi/internal/service/ClientConfigProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoServiceModuleEntryPoint;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoServiceModuleEntryPoint;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoServiceModuleEntryPoint;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoServiceModuleEntryPoint$clientConfigProvider$1;->a:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoServiceModuleEntryPoint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConfigBundleForClient()Landroid/os/Bundle;
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoServiceModuleEntryPoint$clientConfigProvider$1;->a:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoServiceModuleEntryPoint;

    invoke-static {v0}, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoServiceModuleEntryPoint;->access$getBundleConverter$p(Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoServiceModuleEntryPoint;)Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/o;

    move-result-object v0

    iget-object p0, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoServiceModuleEntryPoint$clientConfigProvider$1;->a:Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoServiceModuleEntryPoint;

    invoke-static {p0}, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoServiceModuleEntryPoint;->access$getConfig$p(Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/AppLovinAutoServiceModuleEntryPoint;)Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/l;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "enabled"

    iget-boolean p0, p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/l;->a:Z

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method
