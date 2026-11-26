.class public final Lio/appmetrica/analytics/impl/fn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/fn;->a:Ljava/util/HashMap;

    new-instance p0, Lio/appmetrica/analytics/impl/Zm;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/Zm;-><init>()V

    new-instance v1, Lio/appmetrica/analytics/impl/an;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/an;-><init>()V

    new-instance v2, Lio/appmetrica/analytics/impl/bn;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/bn;-><init>()V

    new-instance v3, Lio/appmetrica/analytics/impl/cn;

    invoke-direct {v3}, Lio/appmetrica/analytics/impl/cn;-><init>()V

    const-class v4, Lio/appmetrica/analytics/impl/zm;

    invoke-virtual {v0, v4, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class p0, Lio/appmetrica/analytics/impl/i2;

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class p0, Lio/appmetrica/analytics/impl/qf;

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class p0, Lio/appmetrica/analytics/impl/G3;

    invoke-virtual {v0, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/Class;)Lio/appmetrica/analytics/impl/gn;
    .locals 1

    sget-object v0, Lio/appmetrica/analytics/impl/en;->a:Lio/appmetrica/analytics/impl/fn;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/fn;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/gn;

    return-object p0
.end method
