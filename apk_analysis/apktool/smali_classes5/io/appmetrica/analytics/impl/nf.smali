.class public final Lio/appmetrica/analytics/impl/nf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/ProtobufConverter;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Cf;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/Cf;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Cf;-><init>()V

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/nf;-><init>(Lio/appmetrica/analytics/impl/Cf;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/Cf;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lio/appmetrica/analytics/impl/nf;->a:Lio/appmetrica/analytics/impl/Cf;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/zf;)Lio/appmetrica/analytics/impl/pf;
    .locals 4

    .line 40
    new-instance v0, Lio/appmetrica/analytics/impl/pf;

    iget-object v1, p1, Lio/appmetrica/analytics/impl/zf;->a:Ljava/lang/String;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/zf;->b:Ljava/lang/String;

    .line 41
    invoke-static {v2}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 42
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 43
    :catchall_0
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 44
    :goto_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/nf;->a:Lio/appmetrica/analytics/impl/Cf;

    iget p1, p1, Lio/appmetrica/analytics/impl/zf;->c:I

    .line 45
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Cf;->a(Ljava/lang/Integer;)Lio/appmetrica/analytics/impl/f8;

    move-result-object p0

    invoke-direct {v0, v1, v3, p0}, Lio/appmetrica/analytics/impl/pf;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lio/appmetrica/analytics/impl/f8;)V

    return-object v0
.end method

.method public final a(Lio/appmetrica/analytics/impl/pf;)Lio/appmetrica/analytics/impl/zf;
    .locals 2

    new-instance v0, Lio/appmetrica/analytics/impl/zf;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/zf;-><init>()V

    iget-object v1, p1, Lio/appmetrica/analytics/impl/pf;->a:Ljava/lang/String;

    invoke-static {v1}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lio/appmetrica/analytics/impl/pf;->a:Ljava/lang/String;

    iput-object v1, v0, Lio/appmetrica/analytics/impl/zf;->a:Ljava/lang/String;

    :cond_0
    iget-object v1, p1, Lio/appmetrica/analytics/impl/pf;->b:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/zf;->b:Ljava/lang/String;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/nf;->a:Lio/appmetrica/analytics/impl/Cf;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/pf;->c:Lio/appmetrica/analytics/impl/f8;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Cf;->a(Lio/appmetrica/analytics/impl/f8;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, v0, Lio/appmetrica/analytics/impl/zf;->c:I

    return-object v0
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/pf;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/nf;->a(Lio/appmetrica/analytics/impl/pf;)Lio/appmetrica/analytics/impl/zf;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/zf;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/nf;->a(Lio/appmetrica/analytics/impl/zf;)Lio/appmetrica/analytics/impl/pf;

    move-result-object p0

    return-object p0
.end method
