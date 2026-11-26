.class public final Lvw3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I
    .annotation runtime Lbq7;
        value = "offset"
    .end annotation
.end field

.field private final b:I
    .annotation runtime Lbq7;
        value = "pageNumber"
    .end annotation
.end field

.field private final c:I
    .annotation runtime Lbq7;
        value = "pageSize"
    .end annotation
.end field

.field private final d:Z
    .annotation runtime Lbq7;
        value = "paged"
    .end annotation
.end field

.field private final e:Lxw3;
    .annotation runtime Lbq7;
        value = "sort"
    .end annotation
.end field

.field private final f:Z
    .annotation runtime Lbq7;
        value = "unpaged"
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIIZLxw3;Z)V
    .locals 0

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lvw3;->a:I

    iput p2, p0, Lvw3;->b:I

    iput p3, p0, Lvw3;->c:I

    iput-boolean p4, p0, Lvw3;->d:Z

    iput-object p5, p0, Lvw3;->e:Lxw3;

    iput-boolean p6, p0, Lvw3;->f:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lvw3;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lvw3;

    iget v1, p0, Lvw3;->a:I

    iget v3, p1, Lvw3;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lvw3;->b:I

    iget v3, p1, Lvw3;->b:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lvw3;->c:I

    iget v3, p1, Lvw3;->c:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lvw3;->d:Z

    iget-boolean v3, p1, Lvw3;->d:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lvw3;->e:Lxw3;

    iget-object v3, p1, Lvw3;->e:Lxw3;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-boolean p0, p0, Lvw3;->f:Z

    iget-boolean p1, p1, Lvw3;->f:Z

    if-eq p0, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lvw3;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lvw3;->b:I

    invoke-static {v2, v0, v1}, Lej0;->b(III)I

    move-result v0

    iget v2, p0, Lvw3;->c:I

    invoke-static {v2, v0, v1}, Lej0;->b(III)I

    move-result v0

    iget-boolean v2, p0, Lvw3;->d:Z

    invoke-static {v0, v1, v2}, Ltg;->c(IIZ)I

    move-result v0

    iget-object v2, p0, Lvw3;->e:Lxw3;

    invoke-virtual {v2}, Lxw3;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-boolean p0, p0, Lvw3;->f:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v2

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    iget v0, p0, Lvw3;->a:I

    iget v1, p0, Lvw3;->b:I

    iget v2, p0, Lvw3;->c:I

    iget-boolean v3, p0, Lvw3;->d:Z

    iget-object v4, p0, Lvw3;->e:Lxw3;

    iget-boolean p0, p0, Lvw3;->f:Z

    const-string v5, ", pageNumber="

    const-string v6, ", pageSize="

    const-string v7, "HotItemPageableResponse(offset="

    invoke-static {v0, v1, v7, v5, v6}, Lbg;->f(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", paged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", unpaged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
