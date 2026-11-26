.class public final Lyads/g75;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/Map;

.field public final c:Lyads/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Lyads/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/g75;->a:Ljava/lang/String;

    iput-object p2, p0, Lyads/g75;->b:Ljava/util/Map;

    iput-object p3, p0, Lyads/g75;->c:Lyads/c;

    const-string p0, "sdk_version"

    const-string p1, "8.2.0"

    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lyads/e75;Ljava/util/Map;Lyads/c;)V
    .locals 0

    .line 17
    iget-object p1, p1, Lyads/e75;->b:Ljava/lang/String;

    .line 18
    invoke-static {p2}, Ln05;->n(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lyads/g75;-><init>(Ljava/lang/String;Ljava/util/Map;Lyads/c;)V

    return-void
.end method


# virtual methods
.method public final a()Lyads/c;
    .locals 0

    iget-object p0, p0, Lyads/g75;->c:Lyads/c;

    return-object p0
.end method

.method public final b()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lyads/g75;->b:Ljava/util/Map;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lyads/g75;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lyads/g75;

    iget-object v1, p0, Lyads/g75;->a:Ljava/lang/String;

    iget-object v3, p1, Lyads/g75;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lyads/g75;->b:Ljava/util/Map;

    iget-object v3, p1, Lyads/g75;->b:Ljava/util/Map;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lyads/g75;->c:Lyads/c;

    iget-object p1, p1, Lyads/g75;->c:Lyads/c;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lyads/g75;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lyads/g75;->b:Ljava/util/Map;

    invoke-static {v2, v0, v1}, Lk;->c(Ljava/util/Map;II)I

    move-result v0

    iget-object p0, p0, Lyads/g75;->c:Lyads/c;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lyads/c;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lyads/g75;->a:Ljava/lang/String;

    iget-object v1, p0, Lyads/g75;->b:Ljava/util/Map;

    iget-object p0, p0, Lyads/g75;->c:Lyads/c;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Report(eventName="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", data="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", abExperiments="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
