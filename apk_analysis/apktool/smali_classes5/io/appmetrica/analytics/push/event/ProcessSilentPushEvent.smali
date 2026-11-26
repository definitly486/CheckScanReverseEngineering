.class public Lio/appmetrica/analytics/push/event/ProcessSilentPushEvent;
.super Lio/appmetrica/analytics/push/event/PushEvent;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lio/appmetrica/analytics/push/event/PushEvent;-><init>()V

    const-string v0, "unknown"

    iput-object v0, p0, Lio/appmetrica/analytics/push/event/ProcessSilentPushEvent;->a:Ljava/lang/String;

    iput-object p1, p0, Lio/appmetrica/analytics/push/event/ProcessSilentPushEvent;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPayload()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/push/event/ProcessSilentPushEvent;->c:Ljava/lang/String;

    return-object p0
.end method

.method public getPushId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/push/event/ProcessSilentPushEvent;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getTransport()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/push/event/ProcessSilentPushEvent;->a:Ljava/lang/String;

    return-object p0
.end method

.method public withPayload(Ljava/lang/String;)Lio/appmetrica/analytics/push/event/ProcessSilentPushEvent;
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/push/event/ProcessSilentPushEvent;->c:Ljava/lang/String;

    return-object p0
.end method

.method public withTransport(Ljava/lang/String;)Lio/appmetrica/analytics/push/event/ProcessSilentPushEvent;
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/push/event/ProcessSilentPushEvent;->a:Ljava/lang/String;

    return-object p0
.end method
