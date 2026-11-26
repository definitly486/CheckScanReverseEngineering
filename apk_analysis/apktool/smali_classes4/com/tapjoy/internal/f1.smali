.class public final Lcom/tapjoy/internal/f1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/f1;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/tapjoy/internal/f1;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/tapjoy/internal/f1;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/tapjoy/internal/f1;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/tapjoy/internal/f1;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/tapjoy/internal/f1;->f:Ljava/lang/String;

    sget-object v0, Lcom/tapjoy/TJDeviceNetwork;->INSTANCE:Lcom/tapjoy/TJDeviceNetwork;

    invoke-virtual {v0}, Lcom/tapjoy/TJDeviceNetwork;->getCarrierName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/f1;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tapjoy/TJDeviceNetwork;->getCarrierNameSim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/f1;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tapjoy/TJDeviceNetwork;->getDeviceCountrySIM()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/f1;->f:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tapjoy/TJDeviceNetwork;->getCarrierCountryCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/f1;->c:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tapjoy/TJDeviceNetwork;->getMobileCountryCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/f1;->d:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tapjoy/TJDeviceNetwork;->getMobileNetworkCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/f1;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/tapjoy/internal/f1;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/tapjoy/internal/f1;

    iget-object v1, p0, Lcom/tapjoy/internal/f1;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/f1;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/tapjoy/internal/f1;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/f1;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/tapjoy/internal/f1;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/f1;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/tapjoy/internal/f1;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/f1;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/tapjoy/internal/f1;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/f1;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/tapjoy/internal/f1;->f:Ljava/lang/String;

    iget-object p1, p1, Lcom/tapjoy/internal/f1;->f:Ljava/lang/String;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/tapjoy/internal/f1;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/tapjoy/internal/f1;->b:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/tapjoy/internal/f1;->c:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/tapjoy/internal/f1;->d:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/tapjoy/internal/f1;->e:Ljava/lang/String;

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/tapjoy/internal/f1;->f:Ljava/lang/String;

    if-nez p0, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/tapjoy/internal/f1;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/tapjoy/internal/f1;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/tapjoy/internal/f1;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/tapjoy/internal/f1;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/tapjoy/internal/f1;->e:Ljava/lang/String;

    iget-object p0, p0, Lcom/tapjoy/internal/f1;->f:Ljava/lang/String;

    const-string v5, ", carrierNameSim="

    const-string v6, ", carrierCountryCode="

    const-string v7, "TJCarrierModel(carrierName="

    invoke-static {v7, v0, v5, v1, v6}, Lad2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mobileCountryCode="

    const-string v5, ", mobileNetworkCode="

    invoke-static {v0, v2, v1, v3, v5}, Lkv2;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", countrySim="

    const-string v2, ")"

    invoke-static {v0, v4, v1, p0, v2}, Ldg;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
