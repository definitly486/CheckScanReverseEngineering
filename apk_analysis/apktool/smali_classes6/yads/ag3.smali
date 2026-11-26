.class public final Lyads/ag3;
.super Lyads/bg3;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Lyads/xf3;

.field public final c:F

.field public final d:I


# direct methods
.method public constructor <init>(ILyads/xf3;FI)V
    .locals 0

    invoke-direct {p0}, Lyads/bg3;-><init>()V

    iput p1, p0, Lyads/ag3;->a:I

    iput-object p2, p0, Lyads/ag3;->b:Lyads/xf3;

    iput p3, p0, Lyads/ag3;->c:F

    iput p4, p0, Lyads/ag3;->d:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lyads/ag3;->a:I

    return p0
.end method

.method public final b()Lyads/yf3;
    .locals 0

    iget-object p0, p0, Lyads/ag3;->b:Lyads/xf3;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lyads/ag3;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lyads/ag3;

    iget v1, p0, Lyads/ag3;->a:I

    iget v3, p1, Lyads/ag3;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lyads/ag3;->b:Lyads/xf3;

    iget-object v3, p1, Lyads/ag3;->b:Lyads/xf3;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lyads/ag3;->c:F

    iget v3, p1, Lyads/ag3;->c:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget p0, p0, Lyads/ag3;->d:I

    iget p1, p1, Lyads/ag3;->d:I

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lyads/ag3;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lyads/ag3;->b:Lyads/xf3;

    invoke-virtual {v2}, Lyads/xf3;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, Lyads/ag3;->c:F

    invoke-static {v2, v0, v1}, Lyads/rp0;->a(IFI)I

    move-result v0

    iget p0, p0, Lyads/ag3;->d:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lyads/ag3;->a:I

    iget-object v1, p0, Lyads/ag3;->b:Lyads/xf3;

    iget v2, p0, Lyads/ag3;->c:F

    iget p0, p0, Lyads/ag3;->d:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "RoundedRect(color="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", itemSize="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", strokeWidth="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", strokeColor="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
