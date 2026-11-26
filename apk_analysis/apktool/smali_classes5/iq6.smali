.class public final Liq6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Liq6$a;,
        Liq6$b;
    }
.end annotation


# instance fields
.field private a:Liq6$b;
    .annotation runtime Lbq7;
        value = "bottom"
    .end annotation
.end field

.field private b:I
    .annotation runtime Lbq7;
        value = "id"
    .end annotation
.end field

.field private c:Z
    .annotation runtime Lbq7;
        value = "isFavorite"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "logoUrl"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "subtitle"
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "title"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Liq6$b;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liq6;->a:Liq6$b;

    iput p2, p0, Liq6;->b:I

    iput-boolean p3, p0, Liq6;->c:Z

    iput-object p4, p0, Liq6;->d:Ljava/lang/String;

    iput-object p5, p0, Liq6;->e:Ljava/lang/String;

    iput-object p6, p0, Liq6;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ler6;
    .locals 7

    new-instance v0, Ler6;

    iget-object v1, p0, Liq6;->a:Liq6$b;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Liq6$b;->a()Ler6$b;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Liq6;->b:I

    iget-boolean v3, p0, Liq6;->c:Z

    iget-object v4, p0, Liq6;->d:Ljava/lang/String;

    iget-object v5, p0, Liq6;->e:Ljava/lang/String;

    iget-object v6, p0, Liq6;->f:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Ler6;-><init>(Ler6$b;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Liq6;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Liq6;

    iget-object v1, p0, Liq6;->a:Liq6$b;

    iget-object v3, p1, Liq6;->a:Liq6$b;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Liq6;->b:I

    iget v3, p1, Liq6;->b:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Liq6;->c:Z

    iget-boolean v3, p1, Liq6;->c:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Liq6;->d:Ljava/lang/String;

    iget-object v3, p1, Liq6;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Liq6;->e:Ljava/lang/String;

    iget-object v3, p1, Liq6;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Liq6;->f:Ljava/lang/String;

    iget-object p1, p1, Liq6;->f:Ljava/lang/String;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Liq6;->a:Liq6$b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Liq6$b;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v0, v2

    iget v3, p0, Liq6;->b:I

    invoke-static {v3, v0, v2}, Lej0;->b(III)I

    move-result v0

    iget-boolean v3, p0, Liq6;->c:Z

    invoke-static {v0, v2, v3}, Ltg;->c(IIZ)I

    move-result v0

    iget-object v3, p0, Liq6;->d:Ljava/lang/String;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget-object v1, p0, Liq6;->e:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Liq6;->f:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Liq6;->a:Liq6$b;

    iget v1, p0, Liq6;->b:I

    iget-boolean v2, p0, Liq6;->c:Z

    iget-object v3, p0, Liq6;->d:Ljava/lang/String;

    iget-object v4, p0, Liq6;->e:Ljava/lang/String;

    iget-object p0, p0, Liq6;->f:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "PromocodeResponse(bottom="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", id="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isFavorite="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", logoUrl="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", subtitle="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", title="

    const-string v1, ")"

    invoke-static {v5, v4, v0, p0, v1}, Ldg;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
