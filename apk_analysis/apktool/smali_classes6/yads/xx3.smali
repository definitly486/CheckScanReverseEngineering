.class public final Lyads/xx3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/yx3;

.field public final b:Lyads/yx3;


# direct methods
.method public constructor <init>(Lyads/yx3;Lyads/yx3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/xx3;->a:Lyads/yx3;

    iput-object p2, p0, Lyads/xx3;->b:Lyads/yx3;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lyads/xx3;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lyads/xx3;

    iget-object v1, p0, Lyads/xx3;->a:Lyads/yx3;

    iget-object v3, p1, Lyads/xx3;->a:Lyads/yx3;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lyads/xx3;->b:Lyads/yx3;

    iget-object p1, p1, Lyads/xx3;->b:Lyads/yx3;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lyads/xx3;->a:Lyads/yx3;

    invoke-virtual {v0}, Lyads/yx3;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lyads/xx3;->b:Lyads/yx3;

    invoke-virtual {p0}, Lyads/yx3;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lyads/xx3;->a:Lyads/yx3;

    iget-object p0, p0, Lyads/xx3;->b:Lyads/yx3;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MeasuredSize(width="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", height="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
