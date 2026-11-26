.class public final Lio/appmetrica/analytics/identifiers/impl/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 5

    new-instance v0, Lio/appmetrica/analytics/identifiers/impl/h;

    invoke-direct {v0}, Lio/appmetrica/analytics/identifiers/impl/h;-><init>()V

    new-instance v1, Lb36;

    const-string v2, "google"

    invoke-direct {v1, v2, v0}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lio/appmetrica/analytics/identifiers/impl/j;

    invoke-direct {v0}, Lio/appmetrica/analytics/identifiers/impl/j;-><init>()V

    new-instance v2, Lb36;

    const-string v3, "huawei"

    invoke-direct {v2, v3, v0}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lio/appmetrica/analytics/identifiers/impl/q;

    invoke-direct {v0}, Lio/appmetrica/analytics/identifiers/impl/q;-><init>()V

    new-instance v3, Lb36;

    const-string v4, "yandex"

    invoke-direct {v3, v4, v0}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v1, v2, v3}, [Lb36;

    move-result-object v0

    invoke-static {v0}, Ln05;->e([Lb36;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/identifiers/impl/d;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lio/appmetrica/analytics/identifiers/impl/d;->a:Ljava/util/Map;

    return-void
.end method
