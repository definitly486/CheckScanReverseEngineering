.class public final Lcx3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;
    .annotation runtime Lbq7;
        value = "content"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lww3;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Z
    .annotation runtime Lbq7;
        value = "empty"
    .end annotation
.end field

.field private final c:Z
    .annotation runtime Lbq7;
        value = "first"
    .end annotation
.end field

.field private final d:Z
    .annotation runtime Lbq7;
        value = "last"
    .end annotation
.end field

.field private final e:I
    .annotation runtime Lbq7;
        value = "number"
    .end annotation
.end field

.field private final f:I
    .annotation runtime Lbq7;
        value = "numberOfElements"
    .end annotation
.end field

.field private final g:Lvw3;
    .annotation runtime Lbq7;
        value = "pageable"
    .end annotation
.end field

.field private final h:I
    .annotation runtime Lbq7;
        value = "size"
    .end annotation
.end field

.field private final i:Lxw3;
    .annotation runtime Lbq7;
        value = "sort"
    .end annotation
.end field

.field private final j:I
    .annotation runtime Lbq7;
        value = "totalElements"
    .end annotation
.end field

.field private final k:I
    .annotation runtime Lbq7;
        value = "totalPages"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;ZZZIILvw3;ILxw3;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lww3;",
            ">;ZZZII",
            "Lvw3;",
            "I",
            "Lxw3;",
            "II)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcx3;->a:Ljava/util/List;

    iput-boolean p2, p0, Lcx3;->b:Z

    iput-boolean p3, p0, Lcx3;->c:Z

    iput-boolean p4, p0, Lcx3;->d:Z

    iput p5, p0, Lcx3;->e:I

    iput p6, p0, Lcx3;->f:I

    iput-object p7, p0, Lcx3;->g:Lvw3;

    iput p8, p0, Lcx3;->h:I

    iput-object p9, p0, Lcx3;->i:Lxw3;

    iput p10, p0, Lcx3;->j:I

    iput p11, p0, Lcx3;->k:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lww3;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcx3;->a:Ljava/util/List;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcx3;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcx3;

    iget-object v1, p0, Lcx3;->a:Ljava/util/List;

    iget-object v3, p1, Lcx3;->a:Ljava/util/List;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcx3;->b:Z

    iget-boolean v3, p1, Lcx3;->b:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcx3;->c:Z

    iget-boolean v3, p1, Lcx3;->c:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcx3;->d:Z

    iget-boolean v3, p1, Lcx3;->d:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcx3;->e:I

    iget v3, p1, Lcx3;->e:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcx3;->f:I

    iget v3, p1, Lcx3;->f:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcx3;->g:Lvw3;

    iget-object v3, p1, Lcx3;->g:Lvw3;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lcx3;->h:I

    iget v3, p1, Lcx3;->h:I

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcx3;->i:Lxw3;

    iget-object v3, p1, Lcx3;->i:Lxw3;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget v1, p0, Lcx3;->j:I

    iget v3, p1, Lcx3;->j:I

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget p0, p0, Lcx3;->k:I

    iget p1, p1, Lcx3;->k:I

    if-eq p0, p1, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcx3;->a:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcx3;->b:Z

    invoke-static {v0, v1, v2}, Ltg;->c(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcx3;->c:Z

    invoke-static {v0, v1, v2}, Ltg;->c(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcx3;->d:Z

    invoke-static {v0, v1, v2}, Ltg;->c(IIZ)I

    move-result v0

    iget v2, p0, Lcx3;->e:I

    invoke-static {v2, v0, v1}, Lej0;->b(III)I

    move-result v0

    iget v2, p0, Lcx3;->f:I

    invoke-static {v2, v0, v1}, Lej0;->b(III)I

    move-result v0

    iget-object v2, p0, Lcx3;->g:Lvw3;

    invoke-virtual {v2}, Lvw3;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, Lcx3;->h:I

    invoke-static {v0, v2, v1}, Lej0;->b(III)I

    move-result v0

    iget-object v2, p0, Lcx3;->i:Lxw3;

    invoke-virtual {v2}, Lxw3;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, Lcx3;->j:I

    invoke-static {v0, v2, v1}, Lej0;->b(III)I

    move-result v0

    iget p0, p0, Lcx3;->k:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 12

    iget-object v0, p0, Lcx3;->a:Ljava/util/List;

    iget-boolean v1, p0, Lcx3;->b:Z

    iget-boolean v2, p0, Lcx3;->c:Z

    iget-boolean v3, p0, Lcx3;->d:Z

    iget v4, p0, Lcx3;->e:I

    iget v5, p0, Lcx3;->f:I

    iget-object v6, p0, Lcx3;->g:Lvw3;

    iget v7, p0, Lcx3;->h:I

    iget-object v8, p0, Lcx3;->i:Lxw3;

    iget v9, p0, Lcx3;->j:I

    iget p0, p0, Lcx3;->k:I

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "HotItemsResponse(content="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", empty="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", first="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", last="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", number="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", numberOfElements="

    const-string v1, ", pageable="

    invoke-static {v10, v4, v0, v5, v1}, Lgg;->e(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", size="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", sort="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", totalElements="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", totalPages="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-static {v10, v0, p0}, Ll2;->e(Ljava/lang/StringBuilder;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
