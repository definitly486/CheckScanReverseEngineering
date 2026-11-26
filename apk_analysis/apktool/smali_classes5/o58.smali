.class public final Lo58;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf34;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:Lb06;


# direct methods
.method public constructor <init>(ILb06;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lo58;->a:Ljava/lang/String;

    iput-object p4, p0, Lo58;->b:Ljava/lang/String;

    iput-object p5, p0, Lo58;->c:Ljava/lang/String;

    iput p1, p0, Lo58;->d:I

    iput-object p2, p0, Lo58;->e:Lb06;

    return-void
.end method


# virtual methods
.method public final d()I
    .locals 0

    iget p0, p0, Lo58;->d:I

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lo58;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lo58;

    iget-object v0, p0, Lo58;->a:Ljava/lang/String;

    iget-object v1, p1, Lo58;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lo58;->b:Ljava/lang/String;

    iget-object v1, p1, Lo58;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lo58;->c:Ljava/lang/String;

    iget-object v1, p1, Lo58;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget v0, p0, Lo58;->d:I

    iget v1, p1, Lo58;->d:I

    if-eq v0, v1, :cond_5

    goto :goto_0

    :cond_5
    iget-object p0, p0, Lo58;->e:Lb06;

    iget-object p1, p1, Lo58;->e:Lb06;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_6
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lo58;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v1, v2

    iget-object v3, p0, Lo58;->b:Ljava/lang/String;

    const/16 v4, 0x3c1

    invoke-static {v1, v4, v3}, Lzg;->b(IILjava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lo58;->c:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lzg;->b(IILjava/lang/String;)I

    move-result v1

    iget v3, p0, Lo58;->d:I

    invoke-static {v3, v1, v2}, Lej0;->b(III)I

    move-result v1

    iget-object p0, p0, Lo58;->e:Lb06;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lb06;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", deeplink="

    const-string v1, ", drawableRes=null, title="

    const-string v2, "SpecialViewModel(imageUrl="

    iget-object v3, p0, Lo58;->a:Ljava/lang/String;

    iget-object v4, p0, Lo58;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lad2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id="

    const-string v2, ", ord="

    iget-object v3, p0, Lo58;->c:Ljava/lang/String;

    iget v4, p0, Lo58;->d:I

    invoke-static {v0, v3, v1, v4, v2}, Lo2;->e(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iget-object p0, p0, Lo58;->e:Lb06;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
