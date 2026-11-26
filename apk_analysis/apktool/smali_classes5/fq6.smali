.class public final Lfq6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfq6$a;,
        Lfq6$b;
    }
.end annotation


# instance fields
.field private final a:Lfq6$b;
    .annotation runtime Lbq7;
        value = "content"
    .end annotation
.end field

.field private final b:Z
    .annotation runtime Lbq7;
        value = "success"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lfq6$b;Z)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfq6;->a:Lfq6$b;

    iput-boolean p2, p0, Lfq6;->b:Z

    return-void
.end method


# virtual methods
.method public final a()Ljm7;
    .locals 8

    iget-boolean v0, p0, Lfq6;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfq6;->a:Lfq6$b;

    invoke-virtual {v0}, Lfq6$b;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    move-object v2, v0

    iget-object v0, p0, Lfq6;->a:Lfq6$b;

    invoke-virtual {v0}, Lfq6$b;->d()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lfq6;->a:Lfq6$b;

    invoke-virtual {v0}, Lfq6$b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lfq6;->a:Lfq6$b;

    invoke-virtual {v0}, Lfq6$b;->e()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lfq6;->a:Lfq6$b;

    invoke-virtual {v0}, Lfq6$b;->c()Lfq6$a;

    move-result-object v0

    invoke-virtual {v0}, Lfq6$a;->a()Ljava/lang/String;

    move-result-object v6

    iget-object p0, p0, Lfq6;->a:Lfq6$b;

    invoke-virtual {p0}, Lfq6$b;->c()Lfq6$a;

    move-result-object p0

    invoke-virtual {p0}, Lfq6$a;->b()Ljava/lang/String;

    move-result-object v7

    new-instance v1, Ljm7$b;

    invoke-direct/range {v1 .. v7}, Ljm7$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    new-instance v0, Ljm7$a;

    iget-object v1, p0, Lfq6;->a:Lfq6$b;

    invoke-virtual {v1}, Lfq6$b;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lfq6;->a:Lfq6$b;

    invoke-virtual {v2}, Lfq6$b;->e()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lfq6;->a:Lfq6$b;

    invoke-virtual {v3}, Lfq6$b;->d()Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Lfq6;->a:Lfq6$b;

    invoke-virtual {p0}, Lfq6$b;->c()Lfq6$a;

    move-result-object p0

    invoke-virtual {p0}, Lfq6$a;->a()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Ljm7$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lfq6;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lfq6;

    iget-object v1, p0, Lfq6;->a:Lfq6$b;

    iget-object v3, p1, Lfq6;->a:Lfq6$b;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean p0, p0, Lfq6;->b:Z

    iget-boolean p1, p1, Lfq6;->b:Z

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lfq6;->a:Lfq6$b;

    invoke-virtual {v0}, Lfq6$b;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lfq6;->b:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lfq6;->a:Lfq6$b;

    iget-boolean p0, p0, Lfq6;->b:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PromocodeExchangeResultResponse(content="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", success="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
