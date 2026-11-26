.class public final Lqj4;
.super Lwh4;
.source "SourceFile"


# instance fields
.field public final c:I

.field public final d:Z

.field public final e:Ljava/lang/String;

.field public final f:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1, p3}, Lwh4;-><init>(Ljava/lang/String;I)V

    iput p2, p0, Lqj4;->c:I

    iput-boolean p4, p0, Lqj4;->d:Z

    iput-object p1, p0, Lqj4;->e:Ljava/lang/String;

    iput p3, p0, Lqj4;->f:I

    return-void
.end method

.method public static l(Lqj4;Z)Lqj4;
    .locals 3

    iget v0, p0, Lqj4;->c:I

    iget-object v1, p0, Lqj4;->e:Ljava/lang/String;

    iget v2, p0, Lqj4;->f:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lqj4;

    invoke-direct {p0, v1, v0, v2, p1}, Lqj4;-><init>(Ljava/lang/String;IIZ)V

    return-object p0
.end method


# virtual methods
.method public final d()I
    .locals 0

    iget p0, p0, Lqj4;->f:I

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lqj4;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lqj4;

    iget v1, p0, Lqj4;->c:I

    iget v3, p1, Lqj4;->c:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lqj4;->d:Z

    iget-boolean v3, p1, Lqj4;->d:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lqj4;->e:Ljava/lang/String;

    iget-object v3, p1, Lqj4;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget p0, p0, Lqj4;->f:I

    iget p1, p1, Lqj4;->f:I

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final f()Ljava/lang/Object;
    .locals 0

    iget-boolean p0, p0, Lqj4;->d:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lqj4;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lqj4;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lqj4;->d:Z

    invoke-static {v0, v1, v2}, Ltg;->c(IIZ)I

    move-result v0

    iget-object v2, p0, Lqj4;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget p0, p0, Lqj4;->f:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final id()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lqj4;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LandingRequestButtonViewModel(formId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lqj4;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lqj4;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lqj4;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", topSpace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lqj4;->f:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
