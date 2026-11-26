.class public final Lio/appmetrica/analytics/adrevenue/ironsource/v9/internal/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/AdRevenueCollector;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/adrevenue/ironsource/v9/internal/IronSourceV9ClientModuleEntryPoint;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/adrevenue/ironsource/v9/internal/IronSourceV9ClientModuleEntryPoint;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/adrevenue/ironsource/v9/internal/a;->a:Lio/appmetrica/analytics/adrevenue/ironsource/v9/internal/IronSourceV9ClientModuleEntryPoint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEnabled()Z
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/adrevenue/ironsource/v9/internal/a;->a:Lio/appmetrica/analytics/adrevenue/ironsource/v9/internal/IronSourceV9ClientModuleEntryPoint;

    invoke-static {p0}, Lio/appmetrica/analytics/adrevenue/ironsource/v9/internal/IronSourceV9ClientModuleEntryPoint;->a(Lio/appmetrica/analytics/adrevenue/ironsource/v9/internal/IronSourceV9ClientModuleEntryPoint;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public final getSourceIdentifier()Ljava/lang/String;
    .locals 0

    const-string p0, "ironsource"

    return-object p0
.end method
