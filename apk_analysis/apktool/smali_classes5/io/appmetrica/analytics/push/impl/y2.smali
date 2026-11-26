.class public final Lio/appmetrica/analytics/push/impl/y2;
.super Lio/appmetrica/analytics/push/impl/B2;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lio/appmetrica/analytics/push/impl/B2;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/push/impl/y2;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/push/model/PushMessage;)Lio/appmetrica/analytics/push/impl/C2;
    .locals 2

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/y2;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/push/impl/B2;

    :try_start_0
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/push/impl/B2;->a(Lio/appmetrica/analytics/push/model/PushMessage;)Lio/appmetrica/analytics/push/impl/C2;

    move-result-object v0

    iget-object v1, v0, Lio/appmetrica/analytics/push/impl/C2;->a:Lio/appmetrica/analytics/push/settings/PushFilter$FilterResult;

    invoke-virtual {v1}, Lio/appmetrica/analytics/push/settings/PushFilter$FilterResult;->isShow()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, v0, Lio/appmetrica/analytics/push/impl/C2;->b:Lio/appmetrica/analytics/push/model/PushMessage;
    :try_end_0
    .catch Lio/appmetrica/analytics/push/impl/A2; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    return-object v0

    :goto_1
    iget-object v0, p0, Lio/appmetrica/analytics/push/impl/A2;->a:Ljava/lang/String;

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/A2;->b:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Lio/appmetrica/analytics/push/impl/B2;->a(Lio/appmetrica/analytics/push/model/PushMessage;Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/push/impl/C2;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lio/appmetrica/analytics/push/impl/C2;

    invoke-static {}, Lio/appmetrica/analytics/push/settings/PushFilter$FilterResult;->show()Lio/appmetrica/analytics/push/settings/PushFilter$FilterResult;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/appmetrica/analytics/push/impl/C2;-><init>(Lio/appmetrica/analytics/push/model/PushMessage;Lio/appmetrica/analytics/push/settings/PushFilter$FilterResult;)V

    return-object p0
.end method
