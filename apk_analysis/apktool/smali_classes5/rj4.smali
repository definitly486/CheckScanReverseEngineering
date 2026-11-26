.class public final Lrj4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lkv4;
    .annotation runtime Lbq7;
        value = "headerBlock"
    .end annotation
.end field

.field private final b:Lii0;
    .annotation runtime Lbq7;
        value = "benefitsBlock"
    .end annotation
.end field

.field private final c:Lw88;
    .annotation runtime Lbq7;
        value = "stepsBlock"
    .end annotation
.end field

.field private final d:Ljv0;
    .annotation runtime Lbq7;
        value = "buttonBlock"
    .end annotation
.end field

.field private final e:Lu6;
    .annotation runtime Lbq7;
        value = "activationBlock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkv4;Lii0;Lw88;Ljv0;Lu6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrj4;->a:Lkv4;

    iput-object p2, p0, Lrj4;->b:Lii0;

    iput-object p3, p0, Lrj4;->c:Lw88;

    iput-object p4, p0, Lrj4;->d:Ljv0;

    iput-object p5, p0, Lrj4;->e:Lu6;

    return-void
.end method


# virtual methods
.method public final a()Lii0;
    .locals 0

    iget-object p0, p0, Lrj4;->b:Lii0;

    return-object p0
.end method

.method public final b()Ljv0;
    .locals 0

    iget-object p0, p0, Lrj4;->d:Ljv0;

    return-object p0
.end method

.method public final c()Lkv4;
    .locals 0

    iget-object p0, p0, Lrj4;->a:Lkv4;

    return-object p0
.end method

.method public final d()Lw88;
    .locals 0

    iget-object p0, p0, Lrj4;->c:Lw88;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lrj4;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lrj4;

    iget-object v1, p0, Lrj4;->a:Lkv4;

    iget-object v3, p1, Lrj4;->a:Lkv4;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lrj4;->b:Lii0;

    iget-object v3, p1, Lrj4;->b:Lii0;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lrj4;->c:Lw88;

    iget-object v3, p1, Lrj4;->c:Lw88;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lrj4;->d:Ljv0;

    iget-object v3, p1, Lrj4;->d:Ljv0;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lrj4;->e:Lu6;

    iget-object p1, p1, Lrj4;->e:Lu6;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lrj4;->a:Lkv4;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lkv4;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lrj4;->b:Lii0;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lii0;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lrj4;->c:Lw88;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lw88;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lrj4;->d:Ljv0;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljv0;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lrj4;->e:Lu6;

    if-nez p0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lu6;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lrj4;->a:Lkv4;

    iget-object v1, p0, Lrj4;->b:Lii0;

    iget-object v2, p0, Lrj4;->c:Lw88;

    iget-object v3, p0, Lrj4;->d:Ljv0;

    iget-object p0, p0, Lrj4;->e:Lu6;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "LandingResponse(headerBlock="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", benefitsBlock="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", stepsBlock="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", buttonBlock="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", activationBlockResponse="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
