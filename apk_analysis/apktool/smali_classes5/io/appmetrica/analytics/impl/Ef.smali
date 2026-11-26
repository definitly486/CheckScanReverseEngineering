.class public final Lio/appmetrica/analytics/impl/Ef;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/ProtobufConverter;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Cf;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/Cf;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Cf;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Ef;->a:Lio/appmetrica/analytics/impl/Cf;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/yf;)Lio/appmetrica/analytics/impl/Df;
    .locals 6

    .line 48
    new-instance v0, Lio/appmetrica/analytics/impl/Df;

    iget-object v1, p1, Lio/appmetrica/analytics/impl/yf;->a:Ljava/lang/String;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/yf;->b:Ljava/lang/String;

    .line 49
    invoke-static {v2}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 50
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    move-object v2, v3

    goto :goto_1

    .line 51
    :catchall_0
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0

    .line 52
    :goto_1
    iget-boolean v3, p1, Lio/appmetrica/analytics/impl/yf;->c:Z

    iget-boolean v4, p1, Lio/appmetrica/analytics/impl/yf;->d:Z

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Ef;->a:Lio/appmetrica/analytics/impl/Cf;

    iget p1, p1, Lio/appmetrica/analytics/impl/yf;->e:I

    .line 53
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Cf;->a(Ljava/lang/Integer;)Lio/appmetrica/analytics/impl/f8;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lio/appmetrica/analytics/impl/Df;-><init>(Ljava/lang/String;Lorg/json/JSONObject;ZZLio/appmetrica/analytics/impl/f8;)V

    return-object v0
.end method

.method public final a(Lio/appmetrica/analytics/impl/Df;)Lio/appmetrica/analytics/impl/yf;
    .locals 2

    new-instance v0, Lio/appmetrica/analytics/impl/yf;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/yf;-><init>()V

    iget-object v1, p1, Lio/appmetrica/analytics/impl/Df;->a:Ljava/lang/String;

    invoke-static {v1}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lio/appmetrica/analytics/impl/Df;->a:Ljava/lang/String;

    iput-object v1, v0, Lio/appmetrica/analytics/impl/yf;->a:Ljava/lang/String;

    :cond_0
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Df;->b:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/yf;->b:Ljava/lang/String;

    iget-boolean v1, p1, Lio/appmetrica/analytics/impl/Df;->c:Z

    iput-boolean v1, v0, Lio/appmetrica/analytics/impl/yf;->c:Z

    iget-boolean v1, p1, Lio/appmetrica/analytics/impl/Df;->d:Z

    iput-boolean v1, v0, Lio/appmetrica/analytics/impl/yf;->d:Z

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Ef;->a:Lio/appmetrica/analytics/impl/Cf;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/Df;->e:Lio/appmetrica/analytics/impl/f8;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Cf;->a(Lio/appmetrica/analytics/impl/f8;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, v0, Lio/appmetrica/analytics/impl/yf;->e:I

    return-object v0
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/Df;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Ef;->a(Lio/appmetrica/analytics/impl/Df;)Lio/appmetrica/analytics/impl/yf;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/yf;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Ef;->a(Lio/appmetrica/analytics/impl/yf;)Lio/appmetrica/analytics/impl/Df;

    move-result-object p0

    return-object p0
.end method
