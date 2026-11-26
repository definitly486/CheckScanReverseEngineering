.class public final Leq6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leq6$a;,
        Leq6$b;,
        Leq6$c;
    }
.end annotation


# instance fields
.field private final a:I
    .annotation runtime Lbq7;
        value = "id"
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "title"
    .end annotation
.end field

.field private final c:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "text"
    .end annotation
.end field

.field private final d:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "infoText"
    .end annotation
.end field

.field private final e:Leq6$a;
    .annotation runtime Lbq7;
        value = "mainButton"
    .end annotation
.end field

.field private final f:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "logoUrl"
    .end annotation
.end field

.field private final g:Leq6$c;
    .annotation runtime Lbq7;
        value = "from"
    .end annotation
.end field

.field private final h:Leq6$c;
    .annotation runtime Lbq7;
        value = "to"
    .end annotation
.end field

.field private final i:Leq6$b;
    .annotation runtime Lbq7;
        value = "confirm"
    .end annotation
.end field

.field private final j:Lc06;
    .annotation runtime Lbq7;
        value = "ordInfo"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Leq6$a;Ljava/lang/String;Leq6$c;Leq6$c;Leq6$b;Lc06;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Leq6;->a:I

    iput-object p2, p0, Leq6;->b:Ljava/lang/String;

    iput-object p3, p0, Leq6;->c:Ljava/lang/String;

    iput-object p4, p0, Leq6;->d:Ljava/lang/String;

    iput-object p5, p0, Leq6;->e:Leq6$a;

    iput-object p6, p0, Leq6;->f:Ljava/lang/String;

    iput-object p7, p0, Leq6;->g:Leq6$c;

    iput-object p8, p0, Leq6;->h:Leq6$c;

    iput-object p9, p0, Leq6;->i:Leq6$b;

    iput-object p10, p0, Leq6;->j:Lc06;

    return-void
.end method


# virtual methods
.method public final a()Lkm7;
    .locals 15

    new-instance v0, Lkm7;

    iget-object v1, p0, Leq6;->f:Ljava/lang/String;

    iget-object v2, p0, Leq6;->b:Ljava/lang/String;

    iget-object v3, p0, Leq6;->d:Ljava/lang/String;

    iget-object v4, p0, Leq6;->c:Ljava/lang/String;

    iget-object v5, p0, Leq6;->g:Leq6$c;

    invoke-virtual {v5}, Leq6$c;->a()Lkm7$a;

    move-result-object v5

    iget-object v6, p0, Leq6;->h:Leq6$c;

    invoke-virtual {v6}, Leq6$c;->a()Lkm7$a;

    move-result-object v6

    iget-object v7, p0, Leq6;->e:Leq6$a;

    invoke-virtual {v7}, Leq6$a;->a()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lem7;

    iget v9, p0, Leq6;->a:I

    iget-object v10, p0, Leq6;->i:Leq6$b;

    invoke-virtual {v10}, Leq6$b;->a()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_0

    const-string v10, ""

    :cond_0
    iget-object v11, p0, Leq6;->i:Leq6$b;

    invoke-virtual {v11}, Leq6$b;->e()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Leq6;->i:Leq6$b;

    invoke-virtual {v12}, Leq6$b;->d()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Leq6;->i:Leq6$b;

    invoke-virtual {v13}, Leq6$b;->c()Leq6$a;

    move-result-object v13

    invoke-virtual {v13}, Leq6$a;->a()Ljava/lang/String;

    move-result-object v13

    iget-object v14, p0, Leq6;->i:Leq6$b;

    invoke-virtual {v14}, Leq6$b;->b()Leq6$a;

    move-result-object v14

    invoke-virtual {v14}, Leq6$a;->a()Ljava/lang/String;

    move-result-object v14

    invoke-direct/range {v8 .. v14}, Lem7;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Leq6;->j:Lc06;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lc06;->f()Lb06;

    move-result-object p0

    :goto_0
    move-object v9, p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    goto :goto_0

    :goto_1
    invoke-direct/range {v0 .. v9}, Lkm7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkm7$a;Lkm7$a;Ljava/lang/String;Lem7;Lb06;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Leq6;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Leq6;

    iget v1, p0, Leq6;->a:I

    iget v3, p1, Leq6;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Leq6;->b:Ljava/lang/String;

    iget-object v3, p1, Leq6;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Leq6;->c:Ljava/lang/String;

    iget-object v3, p1, Leq6;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Leq6;->d:Ljava/lang/String;

    iget-object v3, p1, Leq6;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Leq6;->e:Leq6$a;

    iget-object v3, p1, Leq6;->e:Leq6$a;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Leq6;->f:Ljava/lang/String;

    iget-object v3, p1, Leq6;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Leq6;->g:Leq6$c;

    iget-object v3, p1, Leq6;->g:Leq6$c;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Leq6;->h:Leq6$c;

    iget-object v3, p1, Leq6;->h:Leq6$c;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Leq6;->i:Leq6$b;

    iget-object v3, p1, Leq6;->i:Leq6$b;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object p0, p0, Leq6;->j:Lc06;

    iget-object p1, p1, Leq6;->j:Lc06;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Leq6;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Leq6;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Leq6;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Leq6;->d:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Leq6;->e:Leq6$a;

    invoke-virtual {v2}, Leq6$a;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Leq6;->f:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Leq6;->g:Leq6$c;

    invoke-virtual {v2}, Leq6$c;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Leq6;->h:Leq6$c;

    invoke-virtual {v0}, Leq6$c;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Leq6;->i:Leq6$b;

    invoke-virtual {v2}, Leq6$b;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object p0, p0, Leq6;->j:Lc06;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lc06;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 12

    iget v0, p0, Leq6;->a:I

    iget-object v1, p0, Leq6;->b:Ljava/lang/String;

    iget-object v2, p0, Leq6;->c:Ljava/lang/String;

    iget-object v3, p0, Leq6;->d:Ljava/lang/String;

    iget-object v4, p0, Leq6;->e:Leq6$a;

    iget-object v5, p0, Leq6;->f:Ljava/lang/String;

    iget-object v6, p0, Leq6;->g:Leq6$c;

    iget-object v7, p0, Leq6;->h:Leq6$c;

    iget-object v8, p0, Leq6;->i:Leq6$b;

    iget-object p0, p0, Leq6;->j:Lc06;

    const-string v9, ", title="

    const-string v10, ", text="

    const-string v11, "PromocodeExchangePageResponse(id="

    invoke-static {v0, v11, v9, v1, v10}, Lng;->e(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", infoText="

    const-string v9, ", mainButton="

    invoke-static {v0, v2, v1, v3, v9}, Lkv2;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", logoUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", from="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", to="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", confirm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ordInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
