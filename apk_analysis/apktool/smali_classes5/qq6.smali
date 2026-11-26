.class public final Lqq6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpz3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqq6$a;
    }
.end annotation


# instance fields
.field public final a:Lqq6$a;

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Z

.field public final f:Z


# direct methods
.method public constructor <init>(Lqq6$a;ILjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqq6;->a:Lqq6$a;

    iput p2, p0, Lqq6;->b:I

    iput-object p3, p0, Lqq6;->c:Ljava/lang/String;

    iput-object p4, p0, Lqq6;->d:Ljava/lang/String;

    iput-boolean p5, p0, Lqq6;->e:Z

    iput-boolean p6, p0, Lqq6;->f:Z

    return-void
.end method

.method public static d(Lqq6;Z)Lqq6;
    .locals 7

    iget-object v1, p0, Lqq6;->a:Lqq6$a;

    iget v2, p0, Lqq6;->b:I

    iget-object v3, p0, Lqq6;->c:Ljava/lang/String;

    iget-object v4, p0, Lqq6;->d:Ljava/lang/String;

    iget-boolean v5, p0, Lqq6;->e:Z

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lqq6;

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lqq6;-><init>(Lqq6$a;ILjava/lang/String;Ljava/lang/String;ZZ)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lqq6;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lqq6;

    iget-object v1, p0, Lqq6;->a:Lqq6$a;

    iget-object v2, p1, Lqq6;->a:Lqq6$a;

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    iget v1, p0, Lqq6;->b:I

    iget v2, p1, Lqq6;->b:I

    if-eq v1, v2, :cond_3

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lqq6;->c:Ljava/lang/String;

    iget-object v2, p1, Lqq6;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lqq6;->d:Ljava/lang/String;

    iget-object v2, p1, Lqq6;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    iget-boolean v1, p0, Lqq6;->e:Z

    iget-boolean v2, p1, Lqq6;->e:Z

    if-eq v1, v2, :cond_6

    goto :goto_0

    :cond_6
    iget-boolean p0, p0, Lqq6;->f:Z

    iget-boolean p1, p1, Lqq6;->f:Z

    if-eq p0, p1, :cond_7

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_7
    return v0
.end method

.method public final f()Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lqq6;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lqq6;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lqq6;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget p0, p0, Lqq6;->b:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lqq6;->a:Lqq6$a;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lqq6;->b:I

    invoke-static {v2, v0, v1}, Lej0;->b(III)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lqq6;->c:Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lqq6;->d:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-boolean v3, p0, Lqq6;->e:Z

    invoke-static {v0, v1, v3}, Ltg;->c(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lqq6;->f:Z

    invoke-static {v0, v1, p0}, Ltg;->c(IIZ)I

    move-result p0

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public final id()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lqq6;->a:Lqq6$a;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PromocodeTaskButtonViewModel(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lqq6;->a:Lqq6$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", promocodeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lqq6;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    const-string v2, ", isEnabled="

    iget-object v3, p0, Lqq6;->c:Ljava/lang/String;

    iget-object v4, p0, Lqq6;->d:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lkv2;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lqq6;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isLoading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lqq6;->f:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", hasPromocode=false)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
