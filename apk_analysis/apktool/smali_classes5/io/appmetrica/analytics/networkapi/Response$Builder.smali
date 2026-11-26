.class public final Lio/appmetrica/analytics/networkapi/Response$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appmetrica/analytics/networkapi/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final a:Z

.field private final b:I

.field private final c:[B

.field private final d:Ljava/lang/Throwable;

.field private e:Ljava/util/Map;

.field private f:Ljava/lang/String;

.field private g:Lio/appmetrica/analytics/networkapi/NetworkCallMetrics;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x0

    .line 16
    new-array v1, v0, [B

    .line 17
    invoke-direct {p0, v0, v0, v1, p1}, Lio/appmetrica/analytics/networkapi/Response$Builder;-><init>(ZI[BLjava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(ZI[B)V
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, p2, p3, v0}, Lio/appmetrica/analytics/networkapi/Response$Builder;-><init>(ZI[BLjava/lang/Throwable;)V

    return-void
.end method

.method private constructor <init>(ZI[BLjava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lio/appmetrica/analytics/networkapi/Response$Builder;->a:Z

    iput p2, p0, Lio/appmetrica/analytics/networkapi/Response$Builder;->b:I

    iput-object p3, p0, Lio/appmetrica/analytics/networkapi/Response$Builder;->c:[B

    iput-object p4, p0, Lio/appmetrica/analytics/networkapi/Response$Builder;->d:Ljava/lang/Throwable;

    sget-object p1, Lmx2;->b:Lmx2;

    iput-object p1, p0, Lio/appmetrica/analytics/networkapi/Response$Builder;->e:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final build()Lio/appmetrica/analytics/networkapi/Response;
    .locals 9

    new-instance v0, Lio/appmetrica/analytics/networkapi/Response;

    iget-boolean v1, p0, Lio/appmetrica/analytics/networkapi/Response$Builder;->a:Z

    iget v2, p0, Lio/appmetrica/analytics/networkapi/Response$Builder;->b:I

    iget-object v3, p0, Lio/appmetrica/analytics/networkapi/Response$Builder;->c:[B

    iget-object v4, p0, Lio/appmetrica/analytics/networkapi/Response$Builder;->e:Ljava/util/Map;

    iget-object v5, p0, Lio/appmetrica/analytics/networkapi/Response$Builder;->d:Ljava/lang/Throwable;

    iget-object v6, p0, Lio/appmetrica/analytics/networkapi/Response$Builder;->f:Ljava/lang/String;

    iget-object v7, p0, Lio/appmetrica/analytics/networkapi/Response$Builder;->g:Lio/appmetrica/analytics/networkapi/NetworkCallMetrics;

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lio/appmetrica/analytics/networkapi/Response;-><init>(ZI[BLjava/util/Map;Ljava/lang/Throwable;Ljava/lang/String;Lio/appmetrica/analytics/networkapi/NetworkCallMetrics;Ljh2;)V

    return-object v0
.end method

.method public final withHeaders(Ljava/util/Map;)Lio/appmetrica/analytics/networkapi/Response$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lio/appmetrica/analytics/networkapi/Response$Builder;"
        }
    .end annotation

    invoke-static {p1}, Ln05;->l(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/networkapi/Response$Builder;->e:Ljava/util/Map;

    return-object p0
.end method

.method public final withMetrics(Lio/appmetrica/analytics/networkapi/NetworkCallMetrics;)Lio/appmetrica/analytics/networkapi/Response$Builder;
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/networkapi/Response$Builder;->g:Lio/appmetrica/analytics/networkapi/NetworkCallMetrics;

    return-object p0
.end method

.method public final withUrl(Ljava/lang/String;)Lio/appmetrica/analytics/networkapi/Response$Builder;
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/networkapi/Response$Builder;->f:Ljava/lang/String;

    return-object p0
.end method
