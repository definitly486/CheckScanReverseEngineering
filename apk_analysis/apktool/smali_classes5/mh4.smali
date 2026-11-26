.class public final Lmh4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwk4;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;ZZ)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmh4;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lmh4;->b:Z

    iput-object p3, p0, Lmh4;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lmh4;->d:Z

    iput-boolean p5, p0, Lmh4;->e:Z

    return-void
.end method

.method public static d(Lmh4;ZI)Lmh4;
    .locals 6

    iget-object v1, p0, Lmh4;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lmh4;->b:Z

    iget-object v3, p0, Lmh4;->c:Ljava/lang/String;

    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_0

    iget-boolean p1, p0, Lmh4;->d:Z

    :cond_0
    move v4, p1

    and-int/lit8 p1, p2, 0x10

    if-eqz p1, :cond_1

    iget-boolean p0, p0, Lmh4;->e:Z

    :goto_0
    move v5, p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lmh4;

    invoke-direct/range {v0 .. v5}, Lmh4;-><init>(Ljava/lang/String;ZLjava/lang/String;ZZ)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lmh4;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lmh4;

    iget-object v1, p0, Lmh4;->a:Ljava/lang/String;

    iget-object v3, p1, Lmh4;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lmh4;->b:Z

    iget-boolean v3, p1, Lmh4;->b:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lmh4;->c:Ljava/lang/String;

    iget-object v3, p1, Lmh4;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lmh4;->d:Z

    iget-boolean v3, p1, Lmh4;->d:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean p0, p0, Lmh4;->e:Z

    iget-boolean p1, p1, Lmh4;->e:Z

    if-eq p0, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final f()Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmh4;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lmh4;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lmh4;->e:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lmh4;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lmh4;->b:Z

    invoke-static {v0, v1, v2}, Ltg;->c(IIZ)I

    move-result v0

    iget-object v2, p0, Lmh4;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-boolean v2, p0, Lmh4;->d:Z

    invoke-static {v0, v1, v2}, Ltg;->c(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lmh4;->e:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final id()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lmh4;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", required="

    const-string v1, ", title="

    const-string v2, "LandingAgreementWithBackgroundViewModel(key="

    iget-object v3, p0, Lmh4;->a:Ljava/lang/String;

    iget-boolean v4, p0, Lmh4;->b:Z

    invoke-static {v2, v3, v0, v1, v4}, Lp2;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isSelected="

    const-string v2, ", isEnable="

    iget-object v3, p0, Lmh4;->c:Ljava/lang/String;

    iget-boolean v4, p0, Lmh4;->d:Z

    invoke-static {v0, v3, v1, v4, v2}, Lud;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    const-string v1, ")"

    iget-boolean p0, p0, Lmh4;->e:Z

    invoke-static {v0, p0, v1}, Ldh;->e(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
