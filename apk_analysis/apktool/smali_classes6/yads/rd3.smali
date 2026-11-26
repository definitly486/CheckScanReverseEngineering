.class public final Lyads/rd3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Lyads/zn5;

.field public final f:Z

.field public final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Lyads/zn5;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lyads/rd3;->a:I

    iput p2, p0, Lyads/rd3;->b:I

    iput-object p3, p0, Lyads/rd3;->c:Ljava/lang/String;

    iput-object p4, p0, Lyads/rd3;->d:Ljava/lang/String;

    iput-object p5, p0, Lyads/rd3;->e:Lyads/zn5;

    iput-boolean p6, p0, Lyads/rd3;->f:Z

    iput-object p7, p0, Lyads/rd3;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lyads/rd3;->b:I

    return p0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Lyads/rd3;->a:I

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lyads/rd3;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lyads/rd3;

    iget v1, p0, Lyads/rd3;->a:I

    iget v3, p1, Lyads/rd3;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lyads/rd3;->b:I

    iget v3, p1, Lyads/rd3;->b:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lyads/rd3;->c:Ljava/lang/String;

    iget-object v3, p1, Lyads/rd3;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lyads/rd3;->d:Ljava/lang/String;

    iget-object v3, p1, Lyads/rd3;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lyads/rd3;->e:Lyads/zn5;

    iget-object v3, p1, Lyads/rd3;->e:Lyads/zn5;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lyads/rd3;->f:Z

    iget-boolean v3, p1, Lyads/rd3;->f:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object p0, p0, Lyads/rd3;->g:Ljava/lang/String;

    iget-object p1, p1, Lyads/rd3;->g:Ljava/lang/String;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lyads/rd3;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lyads/rd3;->b:I

    invoke-static {v2, v0, v1}, Lyads/i96;->a(III)I

    move-result v0

    iget-object v2, p0, Lyads/rd3;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lyads/l4;->a(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lyads/rd3;->d:Ljava/lang/String;

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

    iget-object v2, p0, Lyads/rd3;->e:Lyads/zn5;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lyads/zn5;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lyads/rd3;->f:Z

    invoke-static {v0, v1, v2}, Lyads/m7;->a(IIZ)I

    move-result v0

    iget-object p0, p0, Lyads/rd3;->g:Ljava/lang/String;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    iget v0, p0, Lyads/rd3;->a:I

    iget v1, p0, Lyads/rd3;->b:I

    iget-object v2, p0, Lyads/rd3;->c:Ljava/lang/String;

    iget-object v3, p0, Lyads/rd3;->d:Ljava/lang/String;

    iget-object v4, p0, Lyads/rd3;->e:Lyads/zn5;

    iget-boolean v5, p0, Lyads/rd3;->f:Z

    iget-object p0, p0, Lyads/rd3;->g:Ljava/lang/String;

    const-string v6, ", height="

    const-string v7, ", url="

    const-string v8, "ImageValue(width="

    invoke-static {v0, v1, v8, v6, v7}, Lbg;->f(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sizeType="

    const-string v6, ", smartCenterSettings="

    invoke-static {v0, v2, v1, v3, v6}, Lkv2;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", preload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", preview="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Lme0;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
