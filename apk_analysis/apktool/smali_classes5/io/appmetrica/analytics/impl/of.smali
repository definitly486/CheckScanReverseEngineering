.class public final Lio/appmetrica/analytics/impl/of;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/mo;


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/qf;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lio/appmetrica/analytics/impl/qf;->b:Ljava/util/List;

    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/impl/pf;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/pf;->c:Lio/appmetrica/analytics/impl/f8;

    sget-object v1, Lio/appmetrica/analytics/impl/f8;->d:Lio/appmetrica/analytics/impl/f8;

    if-ne v0, v1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lio/appmetrica/analytics/impl/of;->a:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Lio/appmetrica/analytics/impl/Df;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lio/appmetrica/analytics/impl/pf;",
            ">;",
            "Lio/appmetrica/analytics/impl/Df;",
            ")",
            "Ljava/util/List<",
            "Lio/appmetrica/analytics/impl/pf;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/appmetrica/analytics/impl/pf;

    iget-object v1, p2, Lio/appmetrica/analytics/impl/Df;->a:Ljava/lang/String;

    iget-object v2, p2, Lio/appmetrica/analytics/impl/Df;->b:Lorg/json/JSONObject;

    iget-object v3, p2, Lio/appmetrica/analytics/impl/Df;->e:Lio/appmetrica/analytics/impl/f8;

    invoke-direct {v0, v1, v2, v3}, Lio/appmetrica/analytics/impl/pf;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lio/appmetrica/analytics/impl/f8;)V

    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/appmetrica/analytics/impl/pf;

    iget-object v2, v2, Lio/appmetrica/analytics/impl/pf;->c:Lio/appmetrica/analytics/impl/f8;

    iget-object v3, p2, Lio/appmetrica/analytics/impl/Df;->e:Lio/appmetrica/analytics/impl/f8;

    if-ne v2, v3, :cond_1

    iget-object p2, v0, Lio/appmetrica/analytics/impl/pf;->c:Lio/appmetrica/analytics/impl/f8;

    sget-object v1, Lio/appmetrica/analytics/impl/f8;->d:Lio/appmetrica/analytics/impl/f8;

    if-ne p2, v1, :cond_2

    iget-boolean p0, p0, Lio/appmetrica/analytics/impl/of;->a:Z

    if-eqz p0, :cond_2

    invoke-static {v0, p1}, Lqn1;->i0(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0

    :cond_3
    :goto_0
    invoke-static {v0, p1}, Lqn1;->i0(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    check-cast p2, Lio/appmetrica/analytics/impl/Df;

    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/impl/of;->a(Ljava/util/List;Lio/appmetrica/analytics/impl/Df;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
