.class public final synthetic Ltt9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lio/appmetrica/analytics/impl/e0;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig;


# direct methods
.method public synthetic constructor <init>(Lio/appmetrica/analytics/impl/e0;Landroid/content/Context;Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltt9;->b:Lio/appmetrica/analytics/impl/e0;

    iput-object p2, p0, Ltt9;->c:Landroid/content/Context;

    iput-object p3, p0, Ltt9;->d:Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ltt9;->c:Landroid/content/Context;

    iget-object v1, p0, Ltt9;->d:Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig;

    iget-object p0, p0, Ltt9;->b:Lio/appmetrica/analytics/impl/e0;

    invoke-static {p0, v0, v1}, Lio/appmetrica/analytics/impl/e0;->a(Lio/appmetrica/analytics/impl/e0;Landroid/content/Context;Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig;)V

    return-void
.end method
