.class public final Ls99;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls99$a;
    }
.end annotation


# instance fields
.field private final a:Z
    .annotation runtime Lbq7;
        value = "success"
    .end annotation
.end field

.field private final b:Ls99$a;
    .annotation runtime Lbq7;
        value = "content"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLs99$a;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Ls99;->a:Z

    iput-object p2, p0, Ls99;->b:Ls99$a;

    return-void
.end method


# virtual methods
.method public final a()La40;
    .locals 9

    iget-object v0, p0, Ls99;->b:Ls99$a;

    invoke-virtual {v0}, Ls99$a;->e()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Ls99;->b:Ls99$a;

    invoke-virtual {v0}, Ls99$a;->d()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Ls99;->b:Ls99$a;

    invoke-virtual {v0}, Ls99$a;->a()Ljava/lang/String;

    move-result-object v4

    new-instance v5, La40$a;

    iget-object v0, p0, Ls99;->b:Ls99$a;

    invoke-virtual {v0}, Ls99$a;->b()Ls99$a$a;

    move-result-object v0

    invoke-virtual {v0}, Ls99$a$a;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ls99;->b:Ls99$a;

    invoke-virtual {v1}, Ls99$a;->b()Ls99$a$a;

    move-result-object v1

    invoke-virtual {v1}, Ls99$a$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v0, v1}, La40$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Ls99;->b:Ls99$a;

    invoke-virtual {p0}, Ls99$a;->c()Ls99$a$a;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, La40$a;

    invoke-virtual {p0}, Ls99$a$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ls99$a$a;->b()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, La40$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    new-instance v1, La40;

    const/4 v7, 0x0

    const/16 v8, 0x20

    invoke-direct/range {v1 .. v8}, La40;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;La40$a;La40$a;Ljava/lang/Integer;I)V

    return-object v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ls99;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ls99;

    iget-boolean v1, p0, Ls99;->a:Z

    iget-boolean v3, p1, Ls99;->a:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Ls99;->b:Ls99$a;

    iget-object p1, p1, Ls99;->b:Ls99$a;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-boolean v0, p0, Ls99;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Ls99;->b:Ls99$a;

    invoke-virtual {p0}, Ls99$a;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Ls99;->a:Z

    iget-object p0, p0, Ls99;->b:Ls99$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UserCardTransferResponse(success="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", content="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
