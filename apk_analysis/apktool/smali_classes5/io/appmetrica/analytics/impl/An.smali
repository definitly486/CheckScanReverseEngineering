.class public final Lio/appmetrica/analytics/impl/An;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Cn;

.field public final b:Lio/appmetrica/analytics/impl/Cn;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;

    invoke-direct {v0}, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;-><init>()V

    const-string v1, "android.hardware.telephony"

    invoke-virtual {v0, p1, v1}, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lio/appmetrica/analytics/impl/Z2;

    new-instance v1, Lio/appmetrica/analytics/impl/Gl;

    invoke-direct {v1, p1}, Lio/appmetrica/analytics/impl/Gl;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Z2;-><init>(Lio/appmetrica/analytics/impl/Dn;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/An;->a:Lio/appmetrica/analytics/impl/Cn;

    new-instance v0, Lio/appmetrica/analytics/impl/Z2;

    new-instance v1, Lio/appmetrica/analytics/impl/Yc;

    invoke-direct {v1, p1}, Lio/appmetrica/analytics/impl/Yc;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Z2;-><init>(Lio/appmetrica/analytics/impl/Dn;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/An;->b:Lio/appmetrica/analytics/impl/Cn;

    return-void

    :cond_0
    new-instance p1, Lio/appmetrica/analytics/impl/l8;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/l8;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/An;->a:Lio/appmetrica/analytics/impl/Cn;

    new-instance p1, Lio/appmetrica/analytics/impl/l8;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/l8;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/An;->b:Lio/appmetrica/analytics/impl/Cn;

    return-void
.end method
