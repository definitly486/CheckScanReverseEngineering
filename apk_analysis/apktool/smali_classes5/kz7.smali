.class public final Lkz7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfm8;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lrl8;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public final j:Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;

.field public final k:Ljava/lang/String;

.field public final l:Z

.field public final m:Lpw7;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZZZZLcom/warefly/checkscan/tasks/presentation/flows/TasksReason;Ljava/lang/String;ZLpw7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lrl8;",
            ">;ZZZZ",
            "Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;",
            "Ljava/lang/String;",
            "Z",
            "Lpw7;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lkz7;->a:I

    iput-object p2, p0, Lkz7;->b:Ljava/lang/String;

    iput-object p3, p0, Lkz7;->c:Ljava/lang/String;

    iput-object p4, p0, Lkz7;->d:Ljava/lang/String;

    iput-object p5, p0, Lkz7;->e:Ljava/util/List;

    iput-boolean p6, p0, Lkz7;->f:Z

    iput-boolean p7, p0, Lkz7;->g:Z

    iput-boolean p8, p0, Lkz7;->h:Z

    iput-boolean p9, p0, Lkz7;->i:Z

    iput-object p10, p0, Lkz7;->j:Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;

    iput-object p11, p0, Lkz7;->k:Ljava/lang/String;

    iput-boolean p12, p0, Lkz7;->l:Z

    iput-object p13, p0, Lkz7;->m:Lpw7;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto/16 :goto_1

    :cond_0
    instance-of v0, p1, Lkz7;

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    check-cast p1, Lkz7;

    iget v0, p0, Lkz7;->a:I

    iget v1, p1, Lkz7;->a:I

    if-eq v0, v1, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lkz7;->b:Ljava/lang/String;

    iget-object v1, p1, Lkz7;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lkz7;->c:Ljava/lang/String;

    iget-object v1, p1, Lkz7;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lkz7;->d:Ljava/lang/String;

    iget-object v1, p1, Lkz7;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lkz7;->e:Ljava/util/List;

    iget-object v1, p1, Lkz7;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    iget-boolean v0, p0, Lkz7;->f:Z

    iget-boolean v1, p1, Lkz7;->f:Z

    if-eq v0, v1, :cond_7

    goto :goto_0

    :cond_7
    iget-boolean v0, p0, Lkz7;->g:Z

    iget-boolean v1, p1, Lkz7;->g:Z

    if-eq v0, v1, :cond_8

    goto :goto_0

    :cond_8
    iget-boolean v0, p0, Lkz7;->h:Z

    iget-boolean v1, p1, Lkz7;->h:Z

    if-eq v0, v1, :cond_9

    goto :goto_0

    :cond_9
    iget-boolean v0, p0, Lkz7;->i:Z

    iget-boolean v1, p1, Lkz7;->i:Z

    if-eq v0, v1, :cond_a

    goto :goto_0

    :cond_a
    iget-object v0, p0, Lkz7;->j:Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;

    iget-object v1, p1, Lkz7;->j:Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    iget-object v0, p0, Lkz7;->k:Ljava/lang/String;

    iget-object v1, p1, Lkz7;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_0

    :cond_c
    iget-boolean v0, p0, Lkz7;->l:Z

    iget-boolean v1, p1, Lkz7;->l:Z

    if-eq v0, v1, :cond_d

    goto :goto_0

    :cond_d
    iget-object p0, p0, Lkz7;->m:Lpw7;

    iget-object p1, p1, Lkz7;->m:Lpw7;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_e
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final f()Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lkz7;->e:Ljava/util/List;

    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    const/4 v6, 0x0

    const/16 v7, 0x3f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lqn1;->a0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ILnl3;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lkz7;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lkz7;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lkz7;->f:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lkz7;->g:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lkz7;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lkz7;->h:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lkz7;->j:Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lkz7;->i:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lkz7;->k:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lkz7;->a:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lkz7;->l:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lkz7;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lkz7;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lkz7;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lkz7;->d:Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lkz7;->e:Ljava/util/List;

    invoke-static {v3, v0, v1}, Le2;->b(Ljava/util/List;II)I

    move-result v0

    iget-boolean v3, p0, Lkz7;->f:Z

    invoke-static {v0, v1, v3}, Ltg;->c(IIZ)I

    move-result v0

    iget-boolean v3, p0, Lkz7;->g:Z

    invoke-static {v0, v1, v3}, Ltg;->c(IIZ)I

    move-result v0

    iget-boolean v3, p0, Lkz7;->h:Z

    invoke-static {v0, v1, v3}, Ltg;->c(IIZ)I

    move-result v0

    iget-boolean v3, p0, Lkz7;->i:Z

    invoke-static {v0, v1, v3}, Ltg;->c(IIZ)I

    move-result v0

    iget-object v3, p0, Lkz7;->j:Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lkz7;->k:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-boolean v0, p0, Lkz7;->l:Z

    invoke-static {v3, v1, v0}, Ltg;->c(IIZ)I

    move-result v0

    iget-object p0, p0, Lkz7;->m:Lpw7;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lpw7;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    return v0
.end method

.method public final id()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lkz7;->a:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final isDone()Z
    .locals 0

    iget-boolean p0, p0, Lkz7;->f:Z

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", iconUrl="

    const-string v1, ", title="

    iget v2, p0, Lkz7;->a:I

    const-string v3, "SimpleTaskCardViewModel(id="

    iget-object v4, p0, Lkz7;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lng;->e(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subtitle="

    const-string v2, ", badges="

    iget-object v3, p0, Lkz7;->c:Ljava/lang/String;

    iget-object v4, p0, Lkz7;->d:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lkv2;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lkz7;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isDone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lkz7;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lkz7;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isRewardAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lkz7;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isClaimRewardLoading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lkz7;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", direction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkz7;->j:Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", counterText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", skipDetails="

    const-string v2, ", analytics="

    iget-object v3, p0, Lkz7;->k:Ljava/lang/String;

    iget-boolean v4, p0, Lkz7;->l:Z

    invoke-static {v0, v3, v1, v4, v2}, Lud;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    iget-object p0, p0, Lkz7;->m:Lpw7;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
