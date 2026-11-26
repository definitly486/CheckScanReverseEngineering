.class public final Lio/appmetrica/analytics/impl/Z9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lio/appmetrica/analytics/impl/kn;

.field public final c:Lio/appmetrica/analytics/impl/j3;

.field public final d:Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lio/appmetrica/analytics/impl/kn;

    const-string v1, "io.appmetrica.analytics.build_id"

    invoke-direct {v0, p1, v1}, Lio/appmetrica/analytics/impl/kn;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lio/appmetrica/analytics/impl/j3;

    const-string v2, "io.appmetrica.analytics.is_offline"

    invoke-direct {v1, p1, v2}, Lio/appmetrica/analytics/impl/j3;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v2, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;

    invoke-direct {v2}, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;-><init>()V

    invoke-direct {p0, p1, v0, v1, v2}, Lio/appmetrica/analytics/impl/Z9;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/kn;Lio/appmetrica/analytics/impl/j3;Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/kn;Lio/appmetrica/analytics/impl/j3;Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Z9;->a:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lio/appmetrica/analytics/impl/Z9;->b:Lio/appmetrica/analytics/impl/kn;

    .line 26
    iput-object p3, p0, Lio/appmetrica/analytics/impl/Z9;->c:Lio/appmetrica/analytics/impl/j3;

    .line 27
    iput-object p4, p0, Lio/appmetrica/analytics/impl/Z9;->d:Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;

    return-void
.end method
