.class public final Ltx5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I
    .annotation runtime Lbq7;
        value = "id"
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "logoUrl"
    .end annotation
.end field

.field private final c:Z
    .annotation runtime Lbq7;
        value = "favorite"
    .end annotation
.end field

.field private final d:Lwm6;
    .annotation runtime Lbq7;
        value = "profit"
    .end annotation
.end field

.field private final e:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "previewLogoUrl"
    .end annotation
.end field

.field private final f:Lc06;
    .annotation runtime Lbq7;
        value = "ordInfo"
    .end annotation
.end field

.field private final g:Z
    .annotation runtime Lbq7;
        value = "adult"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;ZLwm6;Ljava/lang/String;Lc06;Z)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Ltx5;->a:I

    .line 27
    iput-object p2, p0, Ltx5;->b:Ljava/lang/String;

    .line 28
    iput-boolean p3, p0, Ltx5;->c:Z

    .line 29
    iput-object p4, p0, Ltx5;->d:Lwm6;

    .line 30
    iput-object p5, p0, Ltx5;->e:Ljava/lang/String;

    .line 31
    iput-object p6, p0, Ltx5;->f:Lc06;

    .line 32
    iput-boolean p7, p0, Ltx5;->g:Z

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;ZLwm6;Ljava/lang/String;Lc06;ZILjh2;)V
    .locals 8

    and-int/lit8 v0, p8, 0x2

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    move-object v2, p2

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    move v7, p2

    :goto_0
    move-object v0, p0

    move v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    goto :goto_1

    :cond_1
    move v7, p7

    goto :goto_0

    :goto_1
    invoke-direct/range {v0 .. v7}, Ltx5;-><init>(ILjava/lang/String;ZLwm6;Ljava/lang/String;Lc06;Z)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Ltx5;->a:I

    return p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltx5;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Lwm6;
    .locals 0

    iget-object p0, p0, Ltx5;->d:Lwm6;

    return-object p0
.end method

.method public final d()Z
    .locals 0

    iget-boolean p0, p0, Ltx5;->c:Z

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ltx5;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ltx5;

    iget v1, p0, Ltx5;->a:I

    iget v3, p1, Ltx5;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Ltx5;->b:Ljava/lang/String;

    iget-object v3, p1, Ltx5;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Ltx5;->c:Z

    iget-boolean v3, p1, Ltx5;->c:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Ltx5;->d:Lwm6;

    iget-object v3, p1, Ltx5;->d:Lwm6;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Ltx5;->e:Ljava/lang/String;

    iget-object v3, p1, Ltx5;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Ltx5;->f:Lc06;

    iget-object v3, p1, Ltx5;->f:Lc06;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-boolean p0, p0, Ltx5;->g:Z

    iget-boolean p1, p1, Ltx5;->g:Z

    if-eq p0, p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Ltx5;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Ltx5;->b:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Ltx5;->c:Z

    invoke-static {v0, v1, v2}, Ltg;->c(IIZ)I

    move-result v0

    iget-object v2, p0, Ltx5;->d:Lwm6;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lwm6;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Ltx5;->e:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Ltx5;->f:Lc06;

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Lc06;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-boolean p0, p0, Ltx5;->g:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    iget v0, p0, Ltx5;->a:I

    iget-object v1, p0, Ltx5;->b:Ljava/lang/String;

    iget-boolean v2, p0, Ltx5;->c:Z

    iget-object v3, p0, Ltx5;->d:Lwm6;

    iget-object v4, p0, Ltx5;->e:Ljava/lang/String;

    iget-object v5, p0, Ltx5;->f:Lc06;

    iget-boolean p0, p0, Ltx5;->g:Z

    const-string v6, ", logoUrl="

    const-string v7, ", isFavorite="

    const-string v8, "OnlineShopResponse(id="

    invoke-static {v0, v8, v6, v1, v7}, Lng;->e(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", profit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", previewLogoUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ordInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", adult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Ldh;->e(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
