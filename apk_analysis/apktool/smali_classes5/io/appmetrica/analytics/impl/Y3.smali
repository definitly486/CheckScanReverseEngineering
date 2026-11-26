.class public final Lio/appmetrica/analytics/impl/Y3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/S5;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lio/appmetrica/analytics/impl/V5;

.field public final c:Lio/appmetrica/analytics/impl/r4;

.field public final d:Lio/appmetrica/analytics/impl/ob;

.field public final e:Lio/appmetrica/analytics/impl/o;

.field public final f:Lio/appmetrica/analytics/impl/W3;

.field public final g:Lio/appmetrica/analytics/impl/dd;

.field public final h:Lio/appmetrica/analytics/impl/X3;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Y3;->a:Landroid/content/Context;

    new-instance p1, Lio/appmetrica/analytics/impl/V5;

    new-instance v0, Lio/appmetrica/analytics/impl/t5;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/t5;-><init>()V

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/V5;-><init>(Lio/appmetrica/analytics/impl/t5;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Y3;->b:Lio/appmetrica/analytics/impl/V5;

    new-instance p1, Lio/appmetrica/analytics/impl/r4;

    invoke-static {}, Lio/appmetrica/analytics/impl/p4;->l()Lio/appmetrica/analytics/impl/p4;

    move-result-object v0

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Y3;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/p4;->b(Landroid/content/Context;)Lio/appmetrica/analytics/impl/if;

    move-result-object v0

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/r4;-><init>(Lio/appmetrica/analytics/impl/Nl;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Y3;->c:Lio/appmetrica/analytics/impl/r4;

    new-instance p1, Lio/appmetrica/analytics/impl/ob;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/ob;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Y3;->d:Lio/appmetrica/analytics/impl/ob;

    invoke-static {}, Lio/appmetrica/analytics/impl/p4;->l()Lio/appmetrica/analytics/impl/p4;

    move-result-object p1

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/p4;->a()Lio/appmetrica/analytics/impl/o;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Y3;->e:Lio/appmetrica/analytics/impl/o;

    new-instance p1, Lio/appmetrica/analytics/impl/W3;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/W3;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Y3;->f:Lio/appmetrica/analytics/impl/W3;

    new-instance p1, Lio/appmetrica/analytics/impl/dd;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/dd;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Y3;->g:Lio/appmetrica/analytics/impl/dd;

    new-instance p1, Lio/appmetrica/analytics/impl/X3;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/X3;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Y3;->h:Lio/appmetrica/analytics/impl/X3;

    return-void
.end method


# virtual methods
.method public final getActivityLifecycleRegistry()Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityLifecycleRegistry;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Y3;->e:Lio/appmetrica/analytics/impl/o;

    return-object p0
.end method

.method public final getClientActivator()Lio/appmetrica/analytics/modulesapi/internal/client/ModuleClientActivator;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Y3;->f:Lio/appmetrica/analytics/impl/W3;

    return-object p0
.end method

.method public final getClientExecutorProvider()Lio/appmetrica/analytics/modulesapi/internal/client/ModuleClientExecutorProvider;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Y3;->g:Lio/appmetrica/analytics/impl/dd;

    return-object p0
.end method

.method public final getClientStorageProvider()Lio/appmetrica/analytics/modulesapi/internal/client/ClientStorageProvider;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Y3;->c:Lio/appmetrica/analytics/impl/r4;

    return-object p0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Y3;->a:Landroid/content/Context;

    return-object p0
.end method

.method public final getInternalClientModuleFacade()Lio/appmetrica/analytics/modulesapi/internal/common/InternalClientModuleFacade;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Y3;->d:Lio/appmetrica/analytics/impl/ob;

    return-object p0
.end method

.method public final getModuleAdRevenueContext()Lio/appmetrica/analytics/impl/U5;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Y3;->b:Lio/appmetrica/analytics/impl/V5;

    return-object p0
.end method

.method public final getModuleAdRevenueContext()Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenueContext;
    .locals 0

    .line 3
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Y3;->b:Lio/appmetrica/analytics/impl/V5;

    return-object p0
.end method

.method public final getProcessDetector()Lio/appmetrica/analytics/modulesapi/internal/client/ProcessDetector;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Y3;->h:Lio/appmetrica/analytics/impl/X3;

    return-object p0
.end method
