.class public final Lio/appmetrica/analytics/impl/al;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/el;

.field public final b:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/b5;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lio/appmetrica/analytics/impl/b5;->a()Ljava/lang/String;

    new-instance v0, Lio/appmetrica/analytics/impl/el;

    invoke-direct {v0, p1, p2}, Lio/appmetrica/analytics/impl/el;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/b5;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/al;->a:Lio/appmetrica/analytics/impl/el;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/el;->a()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Ln05;->n(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/al;->b:Ljava/util/Map;

    return-void
.end method
