.class public final Lie8;
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

.field private final c:Ljava/util/List;
    .annotation runtime Lbq7;
        value = "blocks"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfe8;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lhe8;
    .annotation runtime Lbq7;
        value = "button"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/List;Lhe8;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lfe8;",
            ">;",
            "Lhe8;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lie8;->a:I

    iput-object p2, p0, Lie8;->b:Ljava/lang/String;

    iput-object p3, p0, Lie8;->c:Ljava/util/List;

    iput-object p4, p0, Lie8;->d:Lhe8;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfe8;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lie8;->c:Ljava/util/List;

    return-object p0
.end method

.method public final b()Lhe8;
    .locals 0

    iget-object p0, p0, Lie8;->d:Lhe8;

    return-object p0
.end method

.method public final c()I
    .locals 0

    iget p0, p0, Lie8;->a:I

    return p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lie8;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lie8;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lie8;

    iget v1, p0, Lie8;->a:I

    iget v3, p1, Lie8;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lie8;->b:Ljava/lang/String;

    iget-object v3, p1, Lie8;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lie8;->c:Ljava/util/List;

    iget-object v3, p1, Lie8;->c:Ljava/util/List;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lie8;->d:Lhe8;

    iget-object p1, p1, Lie8;->d:Lhe8;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lie8;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lie8;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lie8;->c:Ljava/util/List;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lie8;->d:Lhe8;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lhe8;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lie8;->a:I

    iget-object v1, p0, Lie8;->b:Ljava/lang/String;

    iget-object v2, p0, Lie8;->c:Ljava/util/List;

    iget-object p0, p0, Lie8;->d:Lhe8;

    const-string v3, ", title="

    const-string v4, ", blocks="

    const-string v5, "SupportFaqChildQuestionResponse(id="

    invoke-static {v0, v5, v3, v1, v4}, Lng;->e(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", button="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
