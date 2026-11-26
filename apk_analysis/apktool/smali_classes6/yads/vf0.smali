.class public final Lyads/vf0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/we0;

.field public final b:Lyads/ng0;

.field public final c:Ljava/util/ArrayList;

.field public final d:Lyads/df0;

.field public final e:Lyads/of0;

.field public final f:Lyads/wf0;


# direct methods
.method public constructor <init>(Lyads/we0;Lyads/ng0;Ljava/util/ArrayList;Lyads/df0;Lyads/of0;Lyads/wf0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/vf0;->a:Lyads/we0;

    iput-object p2, p0, Lyads/vf0;->b:Lyads/ng0;

    iput-object p3, p0, Lyads/vf0;->c:Ljava/util/ArrayList;

    iput-object p4, p0, Lyads/vf0;->d:Lyads/df0;

    iput-object p5, p0, Lyads/vf0;->e:Lyads/of0;

    iput-object p6, p0, Lyads/vf0;->f:Lyads/wf0;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lyads/vf0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lyads/vf0;

    iget-object v1, p0, Lyads/vf0;->a:Lyads/we0;

    iget-object v3, p1, Lyads/vf0;->a:Lyads/we0;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lyads/vf0;->b:Lyads/ng0;

    iget-object v3, p1, Lyads/vf0;->b:Lyads/ng0;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lyads/vf0;->c:Ljava/util/ArrayList;

    iget-object v3, p1, Lyads/vf0;->c:Ljava/util/ArrayList;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lyads/vf0;->d:Lyads/df0;

    iget-object v3, p1, Lyads/vf0;->d:Lyads/df0;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lyads/vf0;->e:Lyads/of0;

    iget-object v3, p1, Lyads/vf0;->e:Lyads/of0;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lyads/vf0;->f:Lyads/wf0;

    iget-object p1, p1, Lyads/vf0;->f:Lyads/wf0;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lyads/vf0;->a:Lyads/we0;

    invoke-virtual {v0}, Lyads/we0;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lyads/vf0;->b:Lyads/ng0;

    invoke-virtual {v2}, Lyads/ng0;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lyads/vf0;->c:Ljava/util/ArrayList;

    invoke-static {v0, v2, v1}, Ltg;->d(Ljava/util/ArrayList;II)I

    move-result v0

    iget-object v2, p0, Lyads/vf0;->d:Lyads/df0;

    invoke-virtual {v2}, Lyads/df0;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lyads/vf0;->e:Lyads/of0;

    invoke-virtual {v0}, Lyads/of0;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lyads/vf0;->f:Lyads/wf0;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lyads/wf0;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lyads/vf0;->a:Lyads/we0;

    iget-object v1, p0, Lyads/vf0;->b:Lyads/ng0;

    iget-object v2, p0, Lyads/vf0;->c:Ljava/util/ArrayList;

    iget-object v3, p0, Lyads/vf0;->d:Lyads/df0;

    iget-object v4, p0, Lyads/vf0;->e:Lyads/of0;

    iget-object p0, p0, Lyads/vf0;->f:Lyads/wf0;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DebugPanelLocalData(appData="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", sdkData="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mediationNetworksData="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", consentsData="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", debugErrorIndicatorData="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", logsData="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
