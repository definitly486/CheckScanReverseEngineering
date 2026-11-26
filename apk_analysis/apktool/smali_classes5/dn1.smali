.class public final Ldn1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldn1$a;,
        Ldn1$b;,
        Ldn1$c;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:Ldn1$c;

.field public final e:Lb06;

.field public final f:Z

.field public final g:Lew3;


# direct methods
.method public constructor <init>(ILjava/lang/String;ZLdn1$c;Lb06;ZLew3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ldn1;->a:I

    iput-object p2, p0, Ldn1;->b:Ljava/lang/String;

    iput-boolean p3, p0, Ldn1;->c:Z

    iput-object p4, p0, Ldn1;->d:Ldn1$c;

    iput-object p5, p0, Ldn1;->e:Lb06;

    iput-boolean p6, p0, Ldn1;->f:Z

    iput-object p7, p0, Ldn1;->g:Lew3;

    return-void
.end method

.method public static a(Ldn1;Z)Ldn1;
    .locals 8

    iget v1, p0, Ldn1;->a:I

    iget-object v2, p0, Ldn1;->b:Ljava/lang/String;

    iget-object v4, p0, Ldn1;->d:Ldn1$c;

    iget-object v5, p0, Ldn1;->e:Lb06;

    iget-boolean v6, p0, Ldn1;->f:Z

    iget-object v7, p0, Ldn1;->g:Lew3;

    new-instance v0, Ldn1;

    move v3, p1

    invoke-direct/range {v0 .. v7}, Ldn1;-><init>(ILjava/lang/String;ZLdn1$c;Lb06;ZLew3;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Ldn1;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Ldn1;

    iget v0, p0, Ldn1;->a:I

    iget v1, p1, Ldn1;->a:I

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Ldn1;->b:Ljava/lang/String;

    iget-object v1, p1, Ldn1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Ldn1;->c:Z

    iget-boolean v1, p1, Ldn1;->c:Z

    if-eq v0, v1, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Ldn1;->d:Ldn1$c;

    iget-object v1, p1, Ldn1;->d:Ldn1$c;

    invoke-virtual {v0, v1}, Ldn1$c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    iget-object v0, p0, Ldn1;->e:Lb06;

    iget-object v1, p1, Ldn1;->e:Lb06;

    invoke-virtual {v0, v1}, Lb06;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    iget-boolean v0, p0, Ldn1;->f:Z

    iget-boolean v1, p1, Ldn1;->f:Z

    if-eq v0, v1, :cond_7

    goto :goto_0

    :cond_7
    iget-object p0, p0, Ldn1;->g:Lew3;

    iget-object p1, p1, Ldn1;->g:Lew3;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_8
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Ldn1;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Ldn1;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-boolean v2, p0, Ldn1;->c:Z

    invoke-static {v0, v1, v2}, Ltg;->c(IIZ)I

    move-result v0

    iget-object v2, p0, Ldn1;->d:Ldn1$c;

    invoke-virtual {v2}, Ldn1$c;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Ldn1;->e:Lb06;

    invoke-virtual {v0}, Lb06;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Ldn1;->f:Z

    invoke-static {v0, v1, v2}, Ltg;->c(IIZ)I

    move-result v0

    iget-object p0, p0, Ldn1;->g:Lew3;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lew3;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", logo="

    const-string v1, ", isFavorite="

    iget v2, p0, Ldn1;->a:I

    const-string v3, "CollectionItem(id="

    iget-object v4, p0, Ldn1;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lng;->e(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ldn1;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", profit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ldn1;->d:Ldn1$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ordInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ldn1;->e:Lb06;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isAdult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ldn1;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hikeFixed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Ldn1;->g:Lew3;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
