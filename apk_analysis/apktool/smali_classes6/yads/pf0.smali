.class public final Lyads/pf0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Lyads/we0;

.field public final c:Lyads/og0;

.field public final d:Lyads/ld0;

.field public final e:Lyads/ne0;

.field public final f:Lyads/df0;

.field public final g:Lyads/of0;


# direct methods
.method public constructor <init>(Ljava/util/List;Lyads/we0;Lyads/og0;Lyads/ld0;Lyads/ne0;Lyads/df0;Lyads/of0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/pf0;->a:Ljava/util/List;

    iput-object p2, p0, Lyads/pf0;->b:Lyads/we0;

    iput-object p3, p0, Lyads/pf0;->c:Lyads/og0;

    iput-object p4, p0, Lyads/pf0;->d:Lyads/ld0;

    iput-object p5, p0, Lyads/pf0;->e:Lyads/ne0;

    iput-object p6, p0, Lyads/pf0;->f:Lyads/df0;

    iput-object p7, p0, Lyads/pf0;->g:Lyads/of0;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lyads/pf0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lyads/pf0;

    iget-object v1, p0, Lyads/pf0;->a:Ljava/util/List;

    iget-object v3, p1, Lyads/pf0;->a:Ljava/util/List;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lyads/pf0;->b:Lyads/we0;

    iget-object v3, p1, Lyads/pf0;->b:Lyads/we0;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lyads/pf0;->c:Lyads/og0;

    iget-object v3, p1, Lyads/pf0;->c:Lyads/og0;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lyads/pf0;->d:Lyads/ld0;

    iget-object v3, p1, Lyads/pf0;->d:Lyads/ld0;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lyads/pf0;->e:Lyads/ne0;

    iget-object v3, p1, Lyads/pf0;->e:Lyads/ne0;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lyads/pf0;->f:Lyads/df0;

    iget-object v3, p1, Lyads/pf0;->f:Lyads/df0;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object p0, p0, Lyads/pf0;->g:Lyads/of0;

    iget-object p1, p1, Lyads/pf0;->g:Lyads/of0;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lyads/pf0;->a:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lyads/pf0;->b:Lyads/we0;

    invoke-virtual {v2}, Lyads/we0;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lyads/pf0;->c:Lyads/og0;

    invoke-virtual {v0}, Lyads/og0;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lyads/pf0;->d:Lyads/ld0;

    invoke-virtual {v2}, Lyads/ld0;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lyads/pf0;->e:Lyads/ne0;

    iget-object v0, v0, Lyads/ne0;->a:Ljava/util/ArrayList;

    invoke-static {v0, v2, v1}, Ltg;->d(Ljava/util/ArrayList;II)I

    move-result v0

    iget-object v2, p0, Lyads/pf0;->f:Lyads/df0;

    invoke-virtual {v2}, Lyads/df0;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object p0, p0, Lyads/pf0;->g:Lyads/of0;

    invoke-virtual {p0}, Lyads/of0;->hashCode()I

    move-result p0

    add-int/2addr p0, v2

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lyads/pf0;->a:Ljava/util/List;

    iget-object v1, p0, Lyads/pf0;->b:Lyads/we0;

    iget-object v2, p0, Lyads/pf0;->c:Lyads/og0;

    iget-object v3, p0, Lyads/pf0;->d:Lyads/ld0;

    iget-object v4, p0, Lyads/pf0;->e:Lyads/ne0;

    iget-object v5, p0, Lyads/pf0;->f:Lyads/df0;

    iget-object p0, p0, Lyads/pf0;->g:Lyads/of0;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DebugPanelFeedData(alertsData="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", appData="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", sdkIntegrationData="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", adNetworkSettingsData="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", adaptersData="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", consentsData="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", debugErrorIndicatorData="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
