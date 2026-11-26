.class public final Lio/appmetrica/analytics/impl/T7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/jn;


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Lio/appmetrica/analytics/impl/jn;

    invoke-static {}, Lio/appmetrica/analytics/impl/Fa;->k()Lio/appmetrica/analytics/impl/Fa;

    move-result-object v1

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Fa;->g()Landroid/content/Context;

    move-result-object v1

    const-string v2, "appmetrica_startup_hosts"

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/jn;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/T7;-><init>(Lio/appmetrica/analytics/impl/jn;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/jn;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lio/appmetrica/analytics/impl/T7;->a:Lio/appmetrica/analytics/impl/jn;

    return-void
.end method
