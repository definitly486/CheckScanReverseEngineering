.class public final Lio/appmetrica/analytics/push/impl/z2;
.super Lio/appmetrica/analytics/push/impl/B2;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/push/impl/y2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/push/impl/y2;)V
    .locals 2

    invoke-direct {p0}, Lio/appmetrica/analytics/push/impl/B2;-><init>()V

    iput-object p2, p0, Lio/appmetrica/analytics/push/impl/z2;->a:Lio/appmetrica/analytics/push/impl/y2;

    new-instance p2, Lio/appmetrica/analytics/push/impl/Z0;

    invoke-direct {p2, p1}, Lio/appmetrica/analytics/push/impl/Z0;-><init>(Landroid/content/Context;)V

    new-instance v0, Lio/appmetrica/analytics/push/impl/I0;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/push/impl/I0;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    new-array p1, p1, [Lio/appmetrica/analytics/push/impl/B2;

    const/4 v1, 0x0

    aput-object p2, p1, v1

    const/4 p2, 0x1

    aput-object v0, p1, p2

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/push/impl/z2;->a([Lio/appmetrica/analytics/push/impl/B2;)V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/push/model/PushMessage;)Lio/appmetrica/analytics/push/impl/C2;
    .locals 0

    .line 17
    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/z2;->a:Lio/appmetrica/analytics/push/impl/y2;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/push/impl/y2;->a(Lio/appmetrica/analytics/push/model/PushMessage;)Lio/appmetrica/analytics/push/impl/C2;

    move-result-object p0

    return-object p0
.end method

.method public final varargs a([Lio/appmetrica/analytics/push/impl/B2;)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lio/appmetrica/analytics/push/impl/z2;->a:Lio/appmetrica/analytics/push/impl/y2;

    iget-object v3, v3, Lio/appmetrica/analytics/push/impl/y2;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
