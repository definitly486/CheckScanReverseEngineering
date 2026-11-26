.class public final Lyads/r31;
.super Lyads/d41;
.source "SourceFile"


# instance fields
.field public final a:D

.field public final b:Lyads/f11;

.field public final c:Lyads/h11;

.field public final d:Landroid/net/Uri;

.field public final e:Z

.field public final f:Lyads/vi1;

.field public final g:Ljava/util/ArrayList;

.field public final h:Z


# direct methods
.method public constructor <init>(DLyads/f11;Lyads/h11;Landroid/net/Uri;ZLyads/vi1;Ljava/util/ArrayList;Z)V
    .locals 0

    invoke-direct {p0}, Lyads/d41;-><init>()V

    iput-wide p1, p0, Lyads/r31;->a:D

    iput-object p3, p0, Lyads/r31;->b:Lyads/f11;

    iput-object p4, p0, Lyads/r31;->c:Lyads/h11;

    iput-object p5, p0, Lyads/r31;->d:Landroid/net/Uri;

    iput-boolean p6, p0, Lyads/r31;->e:Z

    iput-object p7, p0, Lyads/r31;->f:Lyads/vi1;

    iput-object p8, p0, Lyads/r31;->g:Ljava/util/ArrayList;

    iput-boolean p9, p0, Lyads/r31;->h:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lyads/r31;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lyads/r31;

    iget-wide v3, p0, Lyads/r31;->a:D

    iget-wide v5, p1, Lyads/r31;->a:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lyads/r31;->b:Lyads/f11;

    iget-object v3, p1, Lyads/r31;->b:Lyads/f11;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lyads/r31;->c:Lyads/h11;

    iget-object v3, p1, Lyads/r31;->c:Lyads/h11;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lyads/r31;->d:Landroid/net/Uri;

    iget-object v3, p1, Lyads/r31;->d:Landroid/net/Uri;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lyads/r31;->e:Z

    iget-boolean v3, p1, Lyads/r31;->e:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lyads/r31;->f:Lyads/vi1;

    iget-object v3, p1, Lyads/r31;->f:Lyads/vi1;

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lyads/r31;->g:Ljava/util/ArrayList;

    iget-object v3, p1, Lyads/r31;->g:Ljava/util/ArrayList;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-boolean p0, p0, Lyads/r31;->h:Z

    iget-boolean p1, p1, Lyads/r31;->h:Z

    if-eq p0, p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-wide v0, p0, Lyads/r31;->a:D

    invoke-static {v0, v1}, Ljava/lang/Double;->hashCode(D)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lyads/r31;->b:Lyads/f11;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lyads/r31;->c:Lyads/h11;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lyads/r31;->d:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-boolean v0, p0, Lyads/r31;->e:Z

    invoke-static {v2, v1, v0}, Lyads/m7;->a(IIZ)I

    move-result v0

    iget-object v2, p0, Lyads/r31;->f:Lyads/vi1;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lyads/r31;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-boolean p0, p0, Lyads/r31;->h:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v2

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    iget-wide v0, p0, Lyads/r31;->a:D

    iget-object v2, p0, Lyads/r31;->b:Lyads/f11;

    iget-object v3, p0, Lyads/r31;->c:Lyads/h11;

    iget-object v4, p0, Lyads/r31;->d:Landroid/net/Uri;

    iget-boolean v5, p0, Lyads/r31;->e:Z

    iget-object v6, p0, Lyads/r31;->f:Lyads/vi1;

    iget-object v7, p0, Lyads/r31;->g:Ljava/util/ArrayList;

    iget-boolean p0, p0, Lyads/r31;->h:Z

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Image(alpha="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", contentAlignmentHorizontal="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", contentAlignmentVertical="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", imageUrl="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", preloadRequired="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", scale="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", filters="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isVectorCompatible="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
