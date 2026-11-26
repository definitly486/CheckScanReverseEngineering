.class public final Lio/appmetrica/analytics/impl/u2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/lang/Throwable;)Z
    .locals 0

    .line 25
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/impl/db;)Lio/appmetrica/analytics/impl/Ta;
    .locals 2

    new-instance p0, Lio/appmetrica/analytics/impl/Ih;

    new-instance v0, Lio/appmetrica/analytics/impl/uc;

    invoke-direct {v0, p3, p2}, Lio/appmetrica/analytics/impl/uc;-><init>(Lio/appmetrica/analytics/impl/db;Lio/appmetrica/analytics/AppMetricaConfig;)V

    new-instance p3, Ln7;

    const/16 v1, 0x9

    invoke-direct {p3, v1}, Ln7;-><init>(I)V

    iget-object p2, p2, Lio/appmetrica/analytics/AppMetricaConfig;->crashTransformer:Lio/appmetrica/analytics/ICrashTransformer;

    new-instance v1, Lio/appmetrica/analytics/impl/Z9;

    invoke-direct {v1, p1}, Lio/appmetrica/analytics/impl/Z9;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p3, p2, v1}, Lio/appmetrica/analytics/impl/Ih;-><init>(Lio/appmetrica/analytics/impl/io;Lio/appmetrica/analytics/impl/t6;Lio/appmetrica/analytics/ICrashTransformer;Lio/appmetrica/analytics/impl/Z9;)V

    return-object p0
.end method
