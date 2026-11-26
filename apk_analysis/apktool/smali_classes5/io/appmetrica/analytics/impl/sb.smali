.class public final Lio/appmetrica/analytics/impl/sb;
.super Lio/appmetrica/analytics/impl/Q2;
.source "SourceFile"


# static fields
.field public static final b:Lio/appmetrica/analytics/impl/rb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/rb;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/rb;-><init>()V

    sput-object v0, Lio/appmetrica/analytics/impl/sb;->b:Lio/appmetrica/analytics/impl/rb;

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/W9;Lorg/json/JSONObject;)V
    .locals 1

    sget-object v0, Lio/appmetrica/analytics/impl/sb;->b:Lio/appmetrica/analytics/impl/rb;

    invoke-static {v0, p1, p2}, Lio/appmetrica/analytics/impl/rb;->a(Lio/appmetrica/analytics/impl/rb;Lio/appmetrica/analytics/impl/W9;Lorg/json/JSONObject;)Lio/appmetrica/analytics/impl/N9;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/Q2;-><init>(Lio/appmetrica/analytics/impl/N9;)V

    return-void
.end method
