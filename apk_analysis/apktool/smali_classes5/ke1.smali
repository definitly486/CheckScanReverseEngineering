.class public final Lke1;
.super Ljava/lang/Object;
.source "SourceFile"


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
        value = "titleColor"
    .end annotation
.end field

.field private final d:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "imageUrl"
    .end annotation
.end field

.field private final e:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "backgroundColor"
    .end annotation
.end field

.field private final f:I
    .annotation runtime Lbq7;
        value = "sort"
    .end annotation
.end field

.field private final g:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "url"
    .end annotation
.end field

.field private final h:Lc06;
    .annotation runtime Lbq7;
        value = "ordInfo"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lc06;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lke1;->a:I

    iput-object p2, p0, Lke1;->b:Ljava/lang/String;

    iput-object p3, p0, Lke1;->c:Ljava/lang/String;

    iput-object p4, p0, Lke1;->d:Ljava/lang/String;

    iput-object p5, p0, Lke1;->e:Ljava/lang/String;

    iput p6, p0, Lke1;->f:I

    iput-object p7, p0, Lke1;->g:Ljava/lang/String;

    iput-object p8, p0, Lke1;->h:Lc06;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lke1;->a:I

    return p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lke1;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Lc06;
    .locals 0

    iget-object p0, p0, Lke1;->h:Lc06;

    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lke1;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lke1;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lke1;

    iget v1, p0, Lke1;->a:I

    iget v3, p1, Lke1;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lke1;->b:Ljava/lang/String;

    iget-object v3, p1, Lke1;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lke1;->c:Ljava/lang/String;

    iget-object v3, p1, Lke1;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lke1;->d:Ljava/lang/String;

    iget-object v3, p1, Lke1;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lke1;->e:Ljava/lang/String;

    iget-object v3, p1, Lke1;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lke1;->f:I

    iget v3, p1, Lke1;->f:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lke1;->g:Ljava/lang/String;

    iget-object v3, p1, Lke1;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object p0, p0, Lke1;->h:Lc06;

    iget-object p1, p1, Lke1;->h:Lc06;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lke1;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lke1;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lke1;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lke1;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lke1;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget v2, p0, Lke1;->f:I

    invoke-static {v2, v0, v1}, Lej0;->b(III)I

    move-result v0

    iget-object v2, p0, Lke1;->g:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lke1;->h:Lc06;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lc06;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    iget v0, p0, Lke1;->a:I

    iget-object v1, p0, Lke1;->b:Ljava/lang/String;

    iget-object v2, p0, Lke1;->c:Ljava/lang/String;

    iget-object v3, p0, Lke1;->d:Ljava/lang/String;

    iget-object v4, p0, Lke1;->e:Ljava/lang/String;

    iget v5, p0, Lke1;->f:I

    iget-object v6, p0, Lke1;->g:Ljava/lang/String;

    iget-object p0, p0, Lke1;->h:Lc06;

    const-string v7, ", title="

    const-string v8, ", titleColor="

    const-string v9, "ChequeMiniBannerResponse(id="

    invoke-static {v0, v9, v7, v1, v8}, Lng;->e(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageUrl="

    const-string v7, ", backgroundColor="

    invoke-static {v0, v2, v1, v3, v7}, Lkv2;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", sort="

    const-string v2, ", url="

    invoke-static {v0, v4, v1, v5, v2}, Lo2;->e(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ordInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
