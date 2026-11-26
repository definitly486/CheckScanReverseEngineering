.class public final Lyads/ef0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/we0;

.field public final b:Lyads/ng0;

.field public final c:Lyads/ld0;

.field public final d:Lyads/ne0;

.field public final e:Lyads/df0;

.field public final f:Lyads/of0;

.field public final g:Ljava/util/List;

.field public final h:Ljava/util/List;


# direct methods
.method public constructor <init>(Lyads/we0;Lyads/ng0;Lyads/ld0;Lyads/ne0;Lyads/df0;Lyads/of0;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ef0;->a:Lyads/we0;

    iput-object p2, p0, Lyads/ef0;->b:Lyads/ng0;

    iput-object p3, p0, Lyads/ef0;->c:Lyads/ld0;

    iput-object p4, p0, Lyads/ef0;->d:Lyads/ne0;

    iput-object p5, p0, Lyads/ef0;->e:Lyads/df0;

    iput-object p6, p0, Lyads/ef0;->f:Lyads/of0;

    iput-object p7, p0, Lyads/ef0;->g:Ljava/util/List;

    iput-object p8, p0, Lyads/ef0;->h:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lyads/ef0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lyads/ef0;

    iget-object v1, p0, Lyads/ef0;->a:Lyads/we0;

    iget-object v3, p1, Lyads/ef0;->a:Lyads/we0;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lyads/ef0;->b:Lyads/ng0;

    iget-object v3, p1, Lyads/ef0;->b:Lyads/ng0;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lyads/ef0;->c:Lyads/ld0;

    iget-object v3, p1, Lyads/ef0;->c:Lyads/ld0;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lyads/ef0;->d:Lyads/ne0;

    iget-object v3, p1, Lyads/ef0;->d:Lyads/ne0;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lyads/ef0;->e:Lyads/df0;

    iget-object v3, p1, Lyads/ef0;->e:Lyads/df0;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lyads/ef0;->f:Lyads/of0;

    iget-object v3, p1, Lyads/ef0;->f:Lyads/of0;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lyads/ef0;->g:Ljava/util/List;

    iget-object v3, p1, Lyads/ef0;->g:Ljava/util/List;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object p0, p0, Lyads/ef0;->h:Ljava/util/List;

    iget-object p1, p1, Lyads/ef0;->h:Ljava/util/List;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lyads/ef0;->a:Lyads/we0;

    invoke-virtual {v0}, Lyads/we0;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lyads/ef0;->b:Lyads/ng0;

    invoke-virtual {v2}, Lyads/ng0;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lyads/ef0;->c:Lyads/ld0;

    invoke-virtual {v0}, Lyads/ld0;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lyads/ef0;->d:Lyads/ne0;

    iget-object v2, v2, Lyads/ne0;->a:Ljava/util/ArrayList;

    invoke-static {v2, v0, v1}, Ltg;->d(Ljava/util/ArrayList;II)I

    move-result v0

    iget-object v2, p0, Lyads/ef0;->e:Lyads/df0;

    invoke-virtual {v2}, Lyads/df0;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lyads/ef0;->f:Lyads/of0;

    invoke-virtual {v0}, Lyads/of0;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lyads/ef0;->g:Ljava/util/List;

    invoke-static {v2, v0, v1}, Le2;->b(Ljava/util/List;II)I

    move-result v0

    iget-object p0, p0, Lyads/ef0;->h:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lyads/ef0;->a:Lyads/we0;

    iget-object v1, p0, Lyads/ef0;->b:Lyads/ng0;

    iget-object v2, p0, Lyads/ef0;->c:Lyads/ld0;

    iget-object v3, p0, Lyads/ef0;->d:Lyads/ne0;

    iget-object v4, p0, Lyads/ef0;->e:Lyads/df0;

    iget-object v5, p0, Lyads/ef0;->f:Lyads/of0;

    iget-object v6, p0, Lyads/ef0;->g:Ljava/util/List;

    iget-object p0, p0, Lyads/ef0;->h:Ljava/util/List;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "DebugPanelData(appData="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", sdkData="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", networkSettingsData="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", adaptersData="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", consentsData="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", debugErrorIndicatorData="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", adUnits="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", alerts="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
