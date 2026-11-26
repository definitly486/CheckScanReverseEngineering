.class public final Lyads/ee4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/vg4;

.field public final b:Lyads/d9;

.field public final c:Lyads/e4;


# direct methods
.method public constructor <init>(Lyads/e4;Lyads/d9;Lyads/vg4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lyads/ee4;->a:Lyads/vg4;

    iput-object p2, p0, Lyads/ee4;->b:Lyads/d9;

    iput-object p1, p0, Lyads/ee4;->c:Lyads/e4;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lyads/ee4;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lyads/ee4;

    iget-object v1, p0, Lyads/ee4;->a:Lyads/vg4;

    iget-object v3, p1, Lyads/ee4;->a:Lyads/vg4;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lyads/ee4;->b:Lyads/d9;

    iget-object v3, p1, Lyads/ee4;->b:Lyads/d9;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lyads/ee4;->c:Lyads/e4;

    iget-object p1, p1, Lyads/ee4;->c:Lyads/e4;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lyads/ee4;->a:Lyads/vg4;

    invoke-virtual {v0}, Lyads/vg4;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lyads/ee4;->b:Lyads/d9;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lyads/ee4;->c:Lyads/e4;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lyads/ee4;->a:Lyads/vg4;

    iget-object v1, p0, Lyads/ee4;->b:Lyads/d9;

    iget-object p0, p0, Lyads/ee4;->c:Lyads/e4;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NativeAdBlock(nativeAdResponse="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", adResponse="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", adConfiguration="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
