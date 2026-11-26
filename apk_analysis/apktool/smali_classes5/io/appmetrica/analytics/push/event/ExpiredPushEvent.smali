.class public Lio/appmetrica/analytics/push/event/ExpiredPushEvent;
.super Lio/appmetrica/analytics/push/event/PushEvent;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lio/appmetrica/analytics/push/event/PushEvent;-><init>()V

    const-string v0, "unknown"

    iput-object v0, p0, Lio/appmetrica/analytics/push/event/ExpiredPushEvent;->a:Ljava/lang/String;

    iput-object p1, p0, Lio/appmetrica/analytics/push/event/ExpiredPushEvent;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/push/event/ExpiredPushEvent;->d:Ljava/lang/String;

    return-object p0
.end method

.method public getPayload()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/push/event/ExpiredPushEvent;->c:Ljava/lang/String;

    return-object p0
.end method

.method public getPushId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/push/event/ExpiredPushEvent;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getTransport()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/push/event/ExpiredPushEvent;->a:Ljava/lang/String;

    return-object p0
.end method

.method public withCategory(Ljava/lang/String;)Lio/appmetrica/analytics/push/event/ExpiredPushEvent;
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/push/event/ExpiredPushEvent;->d:Ljava/lang/String;

    return-object p0
.end method

.method public withPayload(Ljava/lang/String;)Lio/appmetrica/analytics/push/event/ExpiredPushEvent;
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/push/event/ExpiredPushEvent;->c:Ljava/lang/String;

    return-object p0
.end method

.method public withTransport(Ljava/lang/String;)Lio/appmetrica/analytics/push/event/ExpiredPushEvent;
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/push/event/ExpiredPushEvent;->a:Ljava/lang/String;

    return-object p0
.end method
