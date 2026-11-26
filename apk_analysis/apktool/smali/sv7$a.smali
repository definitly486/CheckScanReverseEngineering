.class public final Lsv7$a;
.super Lsv7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsv7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final c:I

.field public final d:Landroid/text/Spanned;

.field public final e:Ljava/lang/String;

.field public final f:Z

.field public final g:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>(ILandroid/text/Spanned;Ljava/lang/String;ZLandroid/widget/ImageView$ScaleType;)V
    .locals 0

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1, p4}, Lsv7;-><init>(IZ)V

    iput p1, p0, Lsv7$a;->c:I

    iput-object p2, p0, Lsv7$a;->d:Landroid/text/Spanned;

    iput-object p3, p0, Lsv7$a;->e:Ljava/lang/String;

    iput-boolean p4, p0, Lsv7$a;->f:Z

    iput-object p5, p0, Lsv7$a;->g:Landroid/widget/ImageView$ScaleType;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lsv7$a;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lsv7$a;

    iget v0, p0, Lsv7$a;->c:I

    iget v1, p1, Lsv7$a;->c:I

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lsv7$a;->d:Landroid/text/Spanned;

    iget-object v1, p1, Lsv7$a;->d:Landroid/text/Spanned;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lsv7$a;->e:Ljava/lang/String;

    iget-object v1, p1, Lsv7$a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lsv7$a;->f:Z

    iget-boolean v1, p1, Lsv7$a;->f:Z

    if-eq v0, v1, :cond_5

    goto :goto_0

    :cond_5
    iget-object p0, p0, Lsv7$a;->g:Landroid/widget/ImageView$ScaleType;

    iget-object p1, p1, Lsv7$a;->g:Landroid/widget/ImageView$ScaleType;

    if-eq p0, p1, :cond_6

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_6
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lsv7$a;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lsv7$a;->d:Landroid/text/Spanned;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lsv7$a;->e:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-boolean v2, p0, Lsv7$a;->f:Z

    invoke-static {v0, v1, v2}, Ltg;->c(IIZ)I

    move-result v0

    iget-object p0, p0, Lsv7$a;->g:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Default(shopId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lsv7$a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsv7$a;->d:Landroid/text/Spanned;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", imageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", shopIsSelected="

    const-string v2, ", scaleType="

    iget-object v3, p0, Lsv7$a;->e:Ljava/lang/String;

    iget-boolean v4, p0, Lsv7$a;->f:Z

    invoke-static {v0, v3, v1, v4, v2}, Lud;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    iget-object p0, p0, Lsv7$a;->g:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
