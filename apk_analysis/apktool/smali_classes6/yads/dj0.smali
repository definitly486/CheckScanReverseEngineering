.class public final Lyads/dj0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/StartupParamsCallback;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lyads/xg;


# direct methods
.method public constructor <init>(Ljava/util/List;Lyads/xg;)V
    .locals 0

    iput-object p1, p0, Lyads/dj0;->a:Ljava/util/List;

    iput-object p2, p0, Lyads/dj0;->b:Lyads/xg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Lio/appmetrica/analytics/StartupParamsCallback$Result;)V
    .locals 5

    iget-object v0, p0, Lyads/dj0;->a:Ljava/util/List;

    new-instance v1, Ljava/util/LinkedHashMap;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v2}, Lm05;->b(I)I

    move-result v2

    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    move v2, v3

    :cond_0
    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object v4, p1, Lio/appmetrica/analytics/StartupParamsCallback$Result;->parameters:Ljava/util/Map;

    if-eqz v4, :cond_1

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/appmetrica/analytics/StartupParamsItem;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lio/appmetrica/analytics/StartupParamsItem;->getId()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lyads/dj0;->b:Lyads/xg;

    iget-object p0, p0, Lyads/xg;->a:Lyads/tg;

    new-instance p1, Lyads/pg;

    const-string v0, "appmetrica_uuid"

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "appmetrica_device_id"

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "appmetrica_get_ad_url"

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p1, v0, v2, v1}, Lyads/pg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lyads/tg;->a:Lc31;

    invoke-virtual {v0}, Lc31;->t()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lno5;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lyads/tg;->a:Lc31;

    new-instance v0, Lk57;

    invoke-direct {v0, p1}, Lk57;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lc31;->resumeWith(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final onRequestError(Lio/appmetrica/analytics/StartupParamsCallback$Reason;Lio/appmetrica/analytics/StartupParamsCallback$Result;)V
    .locals 0

    sget-object p2, Lio/appmetrica/analytics/StartupParamsCallback$Reason;->NETWORK:Lio/appmetrica/analytics/StartupParamsCallback$Reason;

    invoke-static {p1, p2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p1, Lyads/og;->c:Lyads/og;

    goto :goto_0

    :cond_0
    sget-object p2, Lio/appmetrica/analytics/StartupParamsCallback$Reason;->INVALID_RESPONSE:Lio/appmetrica/analytics/StartupParamsCallback$Reason;

    invoke-static {p1, p2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lyads/og;->d:Lyads/og;

    goto :goto_0

    :cond_1
    sget-object p1, Lyads/og;->b:Lyads/og;

    :goto_0
    iget-object p0, p0, Lyads/dj0;->b:Lyads/xg;

    iget-object p0, p0, Lyads/xg;->a:Lyads/tg;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_4

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    sget-object p1, Lyads/qg;->d:Lyads/qg;

    goto :goto_1

    :cond_2
    invoke-static {}, Lme0;->e()V

    return-void

    :cond_3
    sget-object p1, Lyads/qg;->c:Lyads/qg;

    goto :goto_1

    :cond_4
    sget-object p1, Lyads/qg;->b:Lyads/qg;

    :goto_1
    iget-object p2, p0, Lyads/tg;->a:Lc31;

    invoke-virtual {p2}, Lc31;->t()Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Lno5;

    if-eqz p2, :cond_5

    iget-object p0, p0, Lyads/tg;->a:Lc31;

    new-instance p2, Lyads/rg;

    invoke-direct {p2, p1}, Lyads/rg;-><init>(Lyads/qg;)V

    new-instance p1, Lk57$a;

    invoke-direct {p1, p2}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lc31;->resumeWith(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method
