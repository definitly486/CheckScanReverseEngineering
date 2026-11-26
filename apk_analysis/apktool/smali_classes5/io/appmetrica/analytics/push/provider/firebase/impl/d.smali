.class public final Lio/appmetrica/analytics/push/provider/firebase/impl/d;
.super Lio/appmetrica/analytics/push/provider/api/PushServiceExecutionRestrictions;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/push/provider/firebase/impl/f;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/push/provider/firebase/impl/f;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/push/provider/firebase/impl/d;->a:Lio/appmetrica/analytics/push/provider/firebase/impl/f;

    invoke-direct {p0}, Lio/appmetrica/analytics/push/provider/api/PushServiceExecutionRestrictions;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMaxTaskExecutionDurationSeconds()Ljava/lang/Long;
    .locals 2

    iget-object p0, p0, Lio/appmetrica/analytics/push/provider/firebase/impl/d;->a:Lio/appmetrica/analytics/push/provider/firebase/impl/f;

    iget-wide v0, p0, Lio/appmetrica/analytics/push/provider/firebase/impl/f;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
