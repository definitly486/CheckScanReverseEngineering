.class public final Li19;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li19$a;
    }
.end annotation


# instance fields
.field private final a:I
    .annotation runtime Lbq7;
        value = "sumMin"
    .end annotation
.end field

.field private final b:I
    .annotation runtime Lbq7;
        value = "sumMax"
    .end annotation
.end field

.field private final c:I
    .annotation runtime Lbq7;
        value = "sum"
    .end annotation
.end field

.field private final d:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "info"
    .end annotation
.end field

.field private final e:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "destination"
    .end annotation
.end field

.field private final f:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "description"
    .end annotation
.end field

.field private final g:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "rules"
    .end annotation
.end field

.field private final h:Ljava/util/List;
    .annotation runtime Lbq7;
        value = "banks"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li19$a;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "bottomText"
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Li19$a;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Li19;->a:I

    iput p2, p0, Li19;->b:I

    iput p3, p0, Li19;->c:I

    iput-object p4, p0, Li19;->d:Ljava/lang/String;

    iput-object p5, p0, Li19;->e:Ljava/lang/String;

    iput-object p6, p0, Li19;->f:Ljava/lang/String;

    iput-object p7, p0, Li19;->g:Ljava/lang/String;

    iput-object p8, p0, Li19;->h:Ljava/util/List;

    iput-object p9, p0, Li19;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lu09;
    .locals 19

    move-object/from16 v0, p0

    new-instance v1, Lx09;

    iget-object v2, v0, Li19;->d:Ljava/lang/String;

    invoke-direct {v1, v2}, Lx09;-><init>(Ljava/lang/String;)V

    new-instance v2, Le19;

    iget-object v3, v0, Li19;->e:Ljava/lang/String;

    invoke-direct {v2, v3}, Le19;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Li19;->h:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v3, v5}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Li19$a;

    new-instance v7, Lm09;

    invoke-virtual {v5}, Li19$a;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Li19$a;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Li19$a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v8, v9, v5, v6}, Lm09;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v3, Lq09;

    invoke-direct {v3, v4}, Lq09;-><init>(Ljava/util/ArrayList;)V

    new-instance v7, Lj09;

    iget v4, v0, Li19;->c:I

    int-to-double v8, v4

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    div-double/2addr v8, v10

    iget v5, v0, Li19;->a:I

    int-to-double v12, v5

    div-double/2addr v12, v10

    iget v14, v0, Li19;->b:I

    move-wide v15, v10

    int-to-double v10, v14

    div-double/2addr v10, v15

    const/16 v18, 0x1

    if-gt v4, v14, :cond_2

    if-ge v4, v5, :cond_1

    goto :goto_1

    :cond_1
    move/from16 v16, v6

    goto :goto_2

    :cond_2
    :goto_1
    move/from16 v16, v18

    :goto_2
    if-gt v4, v14, :cond_4

    if-ge v4, v5, :cond_3

    goto :goto_4

    :cond_3
    const/4 v4, 0x0

    :goto_3
    move-object/from16 v17, v4

    move-wide v14, v10

    goto :goto_5

    :cond_4
    :goto_4
    const-string v4, "\u041d\u0435\u0432\u0435\u0440\u043d\u0430\u044f \u0441\u0443\u043c\u043c\u0430"

    goto :goto_3

    :goto_5
    move-wide v10, v8

    invoke-direct/range {v7 .. v17}, Lj09;-><init>(DDDDZLjava/lang/String;)V

    new-instance v4, Lc19;

    iget-object v5, v0, Li19;->f:Ljava/lang/String;

    iget-object v8, v0, Li19;->g:Ljava/lang/String;

    invoke-direct {v4, v5, v8}, Lc19;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lt09;

    invoke-direct {v5, v6}, Lt09;-><init>(Z)V

    new-instance v8, Lh19;

    iget-object v0, v0, Li19;->i:Ljava/lang/String;

    invoke-direct {v8, v0}, Lh19;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x7

    new-array v0, v0, [Lpz3;

    aput-object v1, v0, v6

    aput-object v2, v0, v18

    const/4 v1, 0x2

    aput-object v3, v0, v1

    const/4 v1, 0x3

    aput-object v7, v0, v1

    const/4 v1, 0x4

    aput-object v4, v0, v1

    const/4 v1, 0x5

    aput-object v5, v0, v1

    const/4 v1, 0x6

    aput-object v8, v0, v1

    invoke-static {v0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lu09;

    invoke-direct {v1, v0}, Lu09;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Li19;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Li19;

    iget v1, p0, Li19;->a:I

    iget v3, p1, Li19;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Li19;->b:I

    iget v3, p1, Li19;->b:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Li19;->c:I

    iget v3, p1, Li19;->c:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Li19;->d:Ljava/lang/String;

    iget-object v3, p1, Li19;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Li19;->e:Ljava/lang/String;

    iget-object v3, p1, Li19;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Li19;->f:Ljava/lang/String;

    iget-object v3, p1, Li19;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Li19;->g:Ljava/lang/String;

    iget-object v3, p1, Li19;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Li19;->h:Ljava/util/List;

    iget-object v3, p1, Li19;->h:Ljava/util/List;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object p0, p0, Li19;->i:Ljava/lang/String;

    iget-object p1, p1, Li19;->i:Ljava/lang/String;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Li19;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Li19;->b:I

    invoke-static {v2, v0, v1}, Lej0;->b(III)I

    move-result v0

    iget v2, p0, Li19;->c:I

    invoke-static {v2, v0, v1}, Lej0;->b(III)I

    move-result v0

    iget-object v2, p0, Li19;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Li19;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Li19;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Li19;->g:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Li19;->h:Ljava/util/List;

    invoke-static {v2, v0, v1}, Le2;->b(Ljava/util/List;II)I

    move-result v0

    iget-object p0, p0, Li19;->i:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 11

    iget v0, p0, Li19;->a:I

    iget v1, p0, Li19;->b:I

    iget v2, p0, Li19;->c:I

    iget-object v3, p0, Li19;->d:Ljava/lang/String;

    iget-object v4, p0, Li19;->e:Ljava/lang/String;

    iget-object v5, p0, Li19;->f:Ljava/lang/String;

    iget-object v6, p0, Li19;->g:Ljava/lang/String;

    iget-object v7, p0, Li19;->h:Ljava/util/List;

    iget-object p0, p0, Li19;->i:Ljava/lang/String;

    const-string v8, ", maximumSumInKopeikas="

    const-string v9, ", sum="

    const-string v10, "TransferSBPResponse(minimalSumInKopeikas="

    invoke-static {v0, v1, v10, v8, v9}, Lbg;->f(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", phone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    const-string v2, ", rules="

    invoke-static {v0, v4, v1, v5, v2}, Lkv2;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", banks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bottomText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Lme0;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
