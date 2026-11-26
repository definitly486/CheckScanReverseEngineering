.class public final Lyads/fo1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lorg/json/JSONObject;

.field public final c:Lorg/json/JSONObject;

.field public final d:Ljava/util/ArrayList;

.field public final e:Lyads/db1;

.field public final f:Lyads/qb1;

.field public final g:Ljava/util/Set;

.field public final h:Lyads/nn0;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/ArrayList;Lyads/db1;Lyads/qb1;Ljava/util/Set;Lyads/nn0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/fo1;->a:Ljava/lang/String;

    iput-object p2, p0, Lyads/fo1;->b:Lorg/json/JSONObject;

    iput-object p3, p0, Lyads/fo1;->c:Lorg/json/JSONObject;

    iput-object p4, p0, Lyads/fo1;->d:Ljava/util/ArrayList;

    iput-object p5, p0, Lyads/fo1;->e:Lyads/db1;

    iput-object p6, p0, Lyads/fo1;->f:Lyads/qb1;

    iput-object p7, p0, Lyads/fo1;->g:Ljava/util/Set;

    iput-object p8, p0, Lyads/fo1;->h:Lyads/nn0;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lyads/fo1;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lyads/fo1;

    iget-object v1, p0, Lyads/fo1;->a:Ljava/lang/String;

    iget-object v3, p1, Lyads/fo1;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lyads/fo1;->b:Lorg/json/JSONObject;

    iget-object v3, p1, Lyads/fo1;->b:Lorg/json/JSONObject;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lyads/fo1;->c:Lorg/json/JSONObject;

    iget-object v3, p1, Lyads/fo1;->c:Lorg/json/JSONObject;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lyads/fo1;->d:Ljava/util/ArrayList;

    iget-object v3, p1, Lyads/fo1;->d:Ljava/util/ArrayList;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lyads/fo1;->e:Lyads/db1;

    iget-object v3, p1, Lyads/fo1;->e:Lyads/db1;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lyads/fo1;->f:Lyads/qb1;

    iget-object v3, p1, Lyads/fo1;->f:Lyads/qb1;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lyads/fo1;->g:Ljava/util/Set;

    iget-object v3, p1, Lyads/fo1;->g:Ljava/util/Set;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object p0, p0, Lyads/fo1;->h:Lyads/nn0;

    iget-object p1, p1, Lyads/fo1;->h:Lyads/nn0;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lyads/fo1;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lyads/fo1;->b:Lorg/json/JSONObject;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lyads/fo1;->c:Lorg/json/JSONObject;

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lyads/fo1;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    mul-int/2addr v2, v1

    iget-object v0, p0, Lyads/fo1;->e:Lyads/db1;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lyads/fo1;->f:Lyads/qb1;

    iget-object v2, v2, Lyads/qb1;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lyads/l4;->a(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lyads/fo1;->g:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object p0, p0, Lyads/fo1;->h:Lyads/nn0;

    invoke-virtual {p0}, Lyads/nn0;->hashCode()I

    move-result p0

    add-int/2addr p0, v2

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lyads/fo1;->a:Ljava/lang/String;

    iget-object v1, p0, Lyads/fo1;->b:Lorg/json/JSONObject;

    iget-object v2, p0, Lyads/fo1;->c:Lorg/json/JSONObject;

    iget-object v3, p0, Lyads/fo1;->d:Ljava/util/ArrayList;

    iget-object v4, p0, Lyads/fo1;->e:Lyads/db1;

    iget-object v5, p0, Lyads/fo1;->f:Lyads/qb1;

    iget-object v6, p0, Lyads/fo1;->g:Ljava/util/Set;

    iget-object p0, p0, Lyads/fo1;->h:Lyads/nn0;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "DivKitDesign(target="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", card="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", templates="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", images="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", divData="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", divDataTag="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", divAssets="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", designAnalytics="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
