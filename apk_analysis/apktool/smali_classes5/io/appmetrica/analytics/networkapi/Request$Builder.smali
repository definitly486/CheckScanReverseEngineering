.class public final Lio/appmetrica/analytics/networkapi/Request$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appmetrica/analytics/networkapi/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lio/appmetrica/analytics/networkapi/Request$Method;

.field private c:[B

.field private final d:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/networkapi/Request$Builder;->a:Ljava/lang/String;

    sget-object p1, Lio/appmetrica/analytics/networkapi/Request$Method;->GET:Lio/appmetrica/analytics/networkapi/Request$Method;

    iput-object p1, p0, Lio/appmetrica/analytics/networkapi/Request$Builder;->b:Lio/appmetrica/analytics/networkapi/Request$Method;

    const/4 p1, 0x0

    new-array p1, p1, [B

    iput-object p1, p0, Lio/appmetrica/analytics/networkapi/Request$Builder;->c:[B

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/networkapi/Request$Builder;->d:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public final addHeader(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/networkapi/Request$Builder;
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/networkapi/Request$Builder;->d:Ljava/util/LinkedHashMap;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final build()Lio/appmetrica/analytics/networkapi/Request;
    .locals 6

    new-instance v0, Lio/appmetrica/analytics/networkapi/Request;

    iget-object v1, p0, Lio/appmetrica/analytics/networkapi/Request$Builder;->a:Ljava/lang/String;

    iget-object v2, p0, Lio/appmetrica/analytics/networkapi/Request$Builder;->b:Lio/appmetrica/analytics/networkapi/Request$Method;

    iget-object v3, p0, Lio/appmetrica/analytics/networkapi/Request$Builder;->c:[B

    iget-object p0, p0, Lio/appmetrica/analytics/networkapi/Request$Builder;->d:Ljava/util/LinkedHashMap;

    invoke-static {p0}, Ln05;->l(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lio/appmetrica/analytics/networkapi/Request;-><init>(Ljava/lang/String;Lio/appmetrica/analytics/networkapi/Request$Method;[BLjava/util/Map;Ljh2;)V

    return-object v0
.end method

.method public final withBody([B)Lio/appmetrica/analytics/networkapi/Request$Builder;
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/networkapi/Request$Builder;->c:[B

    return-object p0
.end method

.method public final withMethod(Lio/appmetrica/analytics/networkapi/Request$Method;)Lio/appmetrica/analytics/networkapi/Request$Builder;
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/networkapi/Request$Builder;->b:Lio/appmetrica/analytics/networkapi/Request$Method;

    return-object p0
.end method
