.class public final Lcom/tapjoy/TapjoyCacheData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/TapjoyCacheData$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/tapjoy/TapjoyCacheData$Companion;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:J

.field public final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tapjoy/TapjoyCacheData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tapjoy/TapjoyCacheData$Companion;-><init>(Ljh2;)V

    sput-object v0, Lcom/tapjoy/TapjoyCacheData;->Companion:Lcom/tapjoy/TapjoyCacheData$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/TapjoyCacheData;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/tapjoy/TapjoyCacheData;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/tapjoy/TapjoyCacheData;->c:J

    iput-object p5, p0, Lcom/tapjoy/TapjoyCacheData;->d:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjh2;)V
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    .line 18
    invoke-direct/range {v0 .. v5}, Lcom/tapjoy/TapjoyCacheData;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/tapjoy/TapjoyCacheData;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/lang/Object;)Lcom/tapjoy/TapjoyCacheData;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/tapjoy/TapjoyCacheData;->a:Ljava/lang/String;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/tapjoy/TapjoyCacheData;->b:Ljava/lang/String;

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    iget-wide p3, p0, Lcom/tapjoy/TapjoyCacheData;->c:J

    :cond_2
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_3

    iget-object p5, p0, Lcom/tapjoy/TapjoyCacheData;->d:Ljava/lang/String;

    :cond_3
    move-object p7, p5

    move-wide p5, p3

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p7}, Lcom/tapjoy/TapjoyCacheData;->copy(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/tapjoy/TapjoyCacheData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/TapjoyCacheData;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/TapjoyCacheData;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/tapjoy/TapjoyCacheData;->c:J

    return-wide v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/TapjoyCacheData;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/tapjoy/TapjoyCacheData;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/tapjoy/TapjoyCacheData;

    invoke-direct/range {p0 .. p5}, Lcom/tapjoy/TapjoyCacheData;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/tapjoy/TapjoyCacheData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/tapjoy/TapjoyCacheData;

    iget-object v1, p0, Lcom/tapjoy/TapjoyCacheData;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/TapjoyCacheData;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/tapjoy/TapjoyCacheData;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/TapjoyCacheData;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/tapjoy/TapjoyCacheData;->c:J

    iget-wide v5, p1, Lcom/tapjoy/TapjoyCacheData;->c:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/tapjoy/TapjoyCacheData;->d:Ljava/lang/String;

    iget-object p1, p1, Lcom/tapjoy/TapjoyCacheData;->d:Ljava/lang/String;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getExpiresAt()J
    .locals 2

    iget-wide v0, p0, Lcom/tapjoy/TapjoyCacheData;->c:J

    return-wide v0
.end method

.method public final getLocalFilePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/TapjoyCacheData;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getMimeType()Ljava/lang/String;
    .locals 6

    iget-object p0, p0, Lcom/tapjoy/TapjoyCacheData;->a:Ljava/lang/String;

    const-string v0, "."

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lra8;->u(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-static {v2, v1, p0}, Lrg;->f(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const/16 v0, 0x2e

    const/4 v3, 0x6

    invoke-static {p0, v0, v1, v3}, Lta8;->O(Ljava/lang/String;CII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    invoke-static {p0, v0, v1, v3}, Lta8;->O(Ljava/lang/String;CII)I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, ""

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0xd49

    if-eq v0, v1, :cond_6

    const v1, 0x18203

    if-eq v0, v1, :cond_4

    const v1, 0x3107ab

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "html"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    const-string p0, "text/html"

    return-object p0

    :cond_4
    const-string v0, "css"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_1

    :cond_5
    const-string p0, "text/css"

    return-object p0

    :cond_6
    const-string v0, "js"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    :goto_1
    const-string p0, "application/octet-stream"

    return-object p0

    :cond_7
    const-string p0, "text/javascript"

    return-object p0
.end method

.method public final getOfferId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/TapjoyCacheData;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/TapjoyCacheData;->a:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/tapjoy/TapjoyCacheData;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/tapjoy/TapjoyCacheData;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-wide v2, p0, Lcom/tapjoy/TapjoyCacheData;->c:J

    invoke-static {v0, v1, v2, v3}, Lvg;->b(IIJ)I

    move-result v0

    iget-object p0, p0, Lcom/tapjoy/TapjoyCacheData;->d:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final isExpired()Z
    .locals 4

    iget-wide v0, p0, Lcom/tapjoy/TapjoyCacheData;->c:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final toJson()Ljava/lang/String;
    .locals 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/tapjoy/TapjoyCacheData;->a:Ljava/lang/String;

    const-string v2, "url"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/tapjoy/TapjoyCacheData;->b:Ljava/lang/String;

    const-string v2, "localFilePath"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-wide v1, p0, Lcom/tapjoy/TapjoyCacheData;->c:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    const-string v3, "timeToLive"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object p0, p0, Lcom/tapjoy/TapjoyCacheData;->d:Ljava/lang/String;

    if-eqz p0, :cond_0

    const-string v1, "offerId"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/tapjoy/TapjoyCacheData;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/tapjoy/TapjoyCacheData;->b:Ljava/lang/String;

    iget-wide v2, p0, Lcom/tapjoy/TapjoyCacheData;->c:J

    iget-object p0, p0, Lcom/tapjoy/TapjoyCacheData;->d:Ljava/lang/String;

    const-string v4, ", localFilePath="

    const-string v5, ", expiresAt="

    const-string v6, "TapjoyCacheData(url="

    invoke-static {v6, v0, v4, v1, v5}, Lad2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", offerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
