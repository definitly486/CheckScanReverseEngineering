.class public abstract Lio/appmetrica/analytics/push/impl/B2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lio/appmetrica/analytics/push/model/PushMessage;Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/push/impl/C2;
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/push/impl/C2;

    invoke-static {p1, p2}, Lio/appmetrica/analytics/push/settings/PushFilter$FilterResult;->silence(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/push/settings/PushFilter$FilterResult;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lio/appmetrica/analytics/push/impl/C2;-><init>(Lio/appmetrica/analytics/push/model/PushMessage;Lio/appmetrica/analytics/push/settings/PushFilter$FilterResult;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Lio/appmetrica/analytics/push/model/PushMessage;)Lio/appmetrica/analytics/push/impl/C2;
.end method
