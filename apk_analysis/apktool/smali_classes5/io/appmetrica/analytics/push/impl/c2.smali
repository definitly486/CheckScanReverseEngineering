.class public final Lio/appmetrica/analytics/push/impl/c2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/push/impl/u2;


# instance fields
.field public final a:Lio/appmetrica/analytics/push/impl/b2;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/push/impl/b2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/push/impl/c2;->a:Lio/appmetrica/analytics/push/impl/b2;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    .line 31
    const-string p0, "shouldSendTokenForProvider"

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/push/impl/t2;)Z
    .locals 1

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/c2;->a:Lio/appmetrica/analytics/push/impl/b2;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, p1, Lio/appmetrica/analytics/push/impl/t2;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    iget-object p1, p1, Lio/appmetrica/analytics/push/impl/t2;->a:Ljava/lang/String;

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/b2;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/push/provider/api/PushServiceController;

    if-eqz p0, :cond_2

    invoke-interface {p0, v0}, Lio/appmetrica/analytics/push/provider/api/PushServiceController;->shouldSendToken(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
