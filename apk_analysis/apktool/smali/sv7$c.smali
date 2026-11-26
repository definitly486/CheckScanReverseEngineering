.class public final Lsv7$c;
.super Lsv7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsv7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Landroid/text/Spanned;

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public final j:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Landroid/text/Spanned;ZZZZ)V
    .locals 0

    invoke-direct {p0, p1, p5}, Lsv7;-><init>(IZ)V

    iput p1, p0, Lsv7$c;->c:I

    iput-object p2, p0, Lsv7$c;->d:Ljava/lang/String;

    iput-object p3, p0, Lsv7$c;->e:Ljava/lang/String;

    iput-object p4, p0, Lsv7$c;->f:Landroid/text/Spanned;

    iput-boolean p5, p0, Lsv7$c;->g:Z

    iput-boolean p6, p0, Lsv7$c;->h:Z

    iput-boolean p7, p0, Lsv7$c;->i:Z

    iput-boolean p8, p0, Lsv7$c;->j:Z

    return-void
.end method

.method public static d(Lsv7$c;Z)Lsv7$c;
    .locals 9

    iget v1, p0, Lsv7$c;->c:I

    iget-object v2, p0, Lsv7$c;->d:Ljava/lang/String;

    iget-object v3, p0, Lsv7$c;->e:Ljava/lang/String;

    iget-object v4, p0, Lsv7$c;->f:Landroid/text/Spanned;

    iget-boolean v6, p0, Lsv7$c;->h:Z

    iget-boolean v7, p0, Lsv7$c;->i:Z

    iget-boolean v8, p0, Lsv7$c;->j:Z

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lsv7$c;

    move v5, p1

    invoke-direct/range {v0 .. v8}, Lsv7$c;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/text/Spanned;ZZZZ)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lsv7$c;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lsv7$c;

    iget v0, p0, Lsv7$c;->c:I

    iget v1, p1, Lsv7$c;->c:I

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lsv7$c;->d:Ljava/lang/String;

    iget-object v1, p1, Lsv7$c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lsv7$c;->e:Ljava/lang/String;

    iget-object v1, p1, Lsv7$c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lsv7$c;->f:Landroid/text/Spanned;

    iget-object v1, p1, Lsv7$c;->f:Landroid/text/Spanned;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    iget-boolean v0, p0, Lsv7$c;->g:Z

    iget-boolean v1, p1, Lsv7$c;->g:Z

    if-eq v0, v1, :cond_6

    goto :goto_0

    :cond_6
    iget-boolean v0, p0, Lsv7$c;->h:Z

    iget-boolean v1, p1, Lsv7$c;->h:Z

    if-eq v0, v1, :cond_7

    goto :goto_0

    :cond_7
    iget-boolean v0, p0, Lsv7$c;->i:Z

    iget-boolean v1, p1, Lsv7$c;->i:Z

    if-eq v0, v1, :cond_8

    goto :goto_0

    :cond_8
    iget-boolean p0, p0, Lsv7$c;->j:Z

    iget-boolean p1, p1, Lsv7$c;->j:Z

    if-eq p0, p1, :cond_9

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_9
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lsv7$c;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lsv7$c;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lsv7$c;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lsv7$c;->f:Landroid/text/Spanned;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-boolean v0, p0, Lsv7$c;->g:Z

    invoke-static {v2, v1, v0}, Ltg;->c(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lsv7$c;->h:Z

    invoke-static {v0, v1, v2}, Ltg;->c(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lsv7$c;->i:Z

    invoke-static {v0, v1, v2}, Ltg;->c(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lsv7$c;->j:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", imageUrl="

    const-string v1, ", title="

    iget v2, p0, Lsv7$c;->c:I

    const-string v3, "Rectangle(shopId="

    iget-object v4, p0, Lsv7$c;->d:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lng;->e(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsv7$c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", profit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsv7$c;->f:Landroid/text/Spanned;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shopIsSelected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lsv7$c;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isTextChanging="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lsv7$c;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isPowerCodeVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lsv7$c;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isDividerVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lsv7$c;->j:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
