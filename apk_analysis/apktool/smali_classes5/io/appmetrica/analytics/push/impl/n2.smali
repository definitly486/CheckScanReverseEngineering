.class public final Lio/appmetrica/analytics/push/impl/n2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/push/settings/PushFilter;


# instance fields
.field public final a:Lio/appmetrica/analytics/push/impl/W1;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/push/impl/W1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/push/impl/n2;->a:Lio/appmetrica/analytics/push/impl/W1;

    return-void
.end method


# virtual methods
.method public final filter(Lio/appmetrica/analytics/push/model/PushMessage;)Lio/appmetrica/analytics/push/settings/PushFilter$FilterResult;
    .locals 6

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/model/PushMessage;->getFilters()Lio/appmetrica/analytics/push/model/Filters;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lio/appmetrica/analytics/push/model/Filters;->getOnePushPerPeriodMinutes()Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    invoke-static {}, Lio/appmetrica/analytics/push/settings/PushFilter$FilterResult;->show()Lio/appmetrica/analytics/push/settings/PushFilter$FilterResult;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lio/appmetrica/analytics/push/model/PushMessage;->getNotification()Lio/appmetrica/analytics/push/model/PushNotification;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lio/appmetrica/analytics/push/model/PushNotification;->getChannelId()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/n2;->a:Lio/appmetrica/analytics/push/impl/W1;

    invoke-virtual {p0, v1}, Lio/appmetrica/analytics/push/impl/W1;->a(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    const-wide/16 p0, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    cmp-long v3, p0, v1

    if-lez v3, :cond_4

    sget-object p0, Lio/appmetrica/analytics/push/logger/internal/PublicLogger;->INSTANCE:Lio/appmetrica/analytics/push/logger/internal/PublicLogger;

    const-string p1, "[SinglePushPerPeriodFilter]"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%s Last push was shown in future"

    invoke-virtual {p0, v0, p1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lio/appmetrica/analytics/push/settings/PushFilter$FilterResult;->show()Lio/appmetrica/analytics/push/settings/PushFilter$FilterResult;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sub-long/2addr v1, p0

    cmp-long p0, v1, v3

    if-gez p0, :cond_5

    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-wide/32 p0, 0xea60

    div-long/2addr v1, p0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Previous push was shown ["

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "] minutes ago, min period is ["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Already have shown push in this period"

    invoke-static {p1, p0}, Lio/appmetrica/analytics/push/settings/PushFilter$FilterResult;->silence(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/push/settings/PushFilter$FilterResult;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-static {}, Lio/appmetrica/analytics/push/settings/PushFilter$FilterResult;->show()Lio/appmetrica/analytics/push/settings/PushFilter$FilterResult;

    move-result-object p0

    return-object p0
.end method
