.class public final Llo8;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llo8$a;
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
        value = "logoUrl"
    .end annotation
.end field

.field private final e:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "subtitle"
    .end annotation
.end field

.field private final f:Lc06;
    .annotation runtime Lbq7;
        value = "ordInfo"
    .end annotation
.end field

.field private final g:Ljava/util/List;
    .annotation runtime Lbq7;
        value = "subtasks"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Llo8$a;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljl3;
    .annotation runtime Lbq7;
        value = "fullTerms"
    .end annotation
.end field

.field private final i:Ljava/util/List;
    .annotation runtime Lbq7;
        value = "disclaimers"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfn8;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc06;Ljava/util/List;Ljl3;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lc06;",
            "Ljava/util/List<",
            "Llo8$a;",
            ">;",
            "Ljl3;",
            "Ljava/util/List<",
            "Lfn8;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Llo8;->a:I

    iput-object p2, p0, Llo8;->b:Ljava/lang/String;

    iput-object p3, p0, Llo8;->c:Ljava/lang/String;

    iput-object p4, p0, Llo8;->d:Ljava/lang/String;

    iput-object p5, p0, Llo8;->e:Ljava/lang/String;

    iput-object p6, p0, Llo8;->f:Lc06;

    iput-object p7, p0, Llo8;->g:Ljava/util/List;

    iput-object p8, p0, Llo8;->h:Ljl3;

    iput-object p9, p0, Llo8;->i:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Lk77;
    .locals 21

    move-object/from16 v0, p0

    new-instance v1, Lj77;

    iget-object v2, v0, Llo8;->b:Ljava/lang/String;

    iget-object v3, v0, Llo8;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lj77;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Lcn8;

    iget-object v3, v0, Llo8;->c:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5, v5}, Lcn8;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-static {v2}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    iget-object v3, v0, Llo8;->i:Ljava/util/List;

    const/16 v6, 0xa

    const/4 v7, 0x1

    if-eqz v3, :cond_0

    check-cast v3, Ljava/lang/Iterable;

    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v3, v6}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lfn8;

    new-instance v10, Lcn8;

    invoke-virtual {v9}, Lfn8;->b()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9}, Lfn8;->a()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v11, v9, v7, v5}, Lcn8;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v8, v4

    :cond_1
    if-nez v8, :cond_2

    sget-object v8, Lkx2;->b:Lkx2;

    :cond_2
    check-cast v8, Ljava/lang/Iterable;

    invoke-static {v8, v2}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lgn8;

    invoke-direct {v3, v2, v7}, Lgn8;-><init>(Ljava/util/ArrayList;Z)V

    invoke-static {v3}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2, v1}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, v0, Llo8;->h:Ljl3;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljl3;->a()Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/b;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v4

    :goto_1
    invoke-static {v2}, Lu96;->j(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2, v1}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, v0, Llo8;->e:Ljava/lang/String;

    if-eqz v2, :cond_4

    new-instance v3, Lc77;

    invoke-direct {v3, v2}, Lc77;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move-object v3, v4

    :goto_2
    invoke-static {v3}, Lu96;->j(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2, v1}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, v0, Llo8;->g:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2, v6}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Llo8$a;

    invoke-virtual {v7}, Llo8$a;->b()Llo8$a$b;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Llo8$a$b;->a()Llo8$a$a;

    move-result-object v8

    goto :goto_4

    :cond_5
    move-object v8, v4

    :goto_4
    sget-object v9, Llo8$a$a;->ACTION:Llo8$a$a;

    if-ne v8, v9, :cond_7

    invoke-virtual {v7}, Llo8$a;->b()Llo8$a$b;

    move-result-object v8

    new-instance v9, Lo77$a;

    invoke-virtual {v8}, Llo8$a$b;->d()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Llo8$a$b;->c()Ljava/lang/Boolean;

    move-result-object v11

    if-eqz v11, :cond_6

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    goto :goto_5

    :cond_6
    move v11, v5

    :goto_5
    invoke-virtual {v8}, Llo8$a$b;->b()Z

    move-result v8

    invoke-direct {v9, v10, v11, v8, v5}, Lo77$a;-><init>(Ljava/lang/String;ZZZ)V

    move-object/from16 v16, v9

    goto :goto_6

    :cond_7
    move-object/from16 v16, v4

    :goto_6
    invoke-virtual {v7}, Llo8$a;->b()Llo8$a$b;

    move-result-object v8

    if-eqz v8, :cond_8

    invoke-virtual {v8}, Llo8$a$b;->a()Llo8$a$a;

    move-result-object v8

    goto :goto_7

    :cond_8
    move-object v8, v4

    :goto_7
    sget-object v9, Llo8$a$a;->CLAIM:Llo8$a$a;

    if-ne v8, v9, :cond_a

    invoke-virtual {v7}, Llo8$a;->b()Llo8$a$b;

    move-result-object v8

    new-instance v9, Lo77$a;

    invoke-virtual {v8}, Llo8$a$b;->d()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Llo8$a$b;->c()Ljava/lang/Boolean;

    move-result-object v11

    if-eqz v11, :cond_9

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    goto :goto_8

    :cond_9
    move v11, v5

    :goto_8
    invoke-virtual {v8}, Llo8$a$b;->b()Z

    move-result v8

    invoke-direct {v9, v10, v11, v8, v5}, Lo77$a;-><init>(Ljava/lang/String;ZZZ)V

    move-object/from16 v17, v9

    goto :goto_9

    :cond_a
    move-object/from16 v17, v4

    :goto_9
    invoke-virtual {v7}, Llo8$a;->e()I

    move-result v13

    invoke-virtual {v7}, Llo8$a;->g()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7}, Llo8$a;->d()Z

    move-result v15

    invoke-virtual {v7}, Llo8$a;->c()Ljava/util/List;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v8, v6}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v10, v5

    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v12, v10, 0x1

    if-ltz v10, :cond_c

    check-cast v11, Ljava/lang/String;

    move-object/from16 v20, v4

    new-instance v4, Lf77;

    if-nez v10, :cond_b

    invoke-virtual {v7}, Llo8$a;->a()Ljava/lang/String;

    move-result-object v10

    goto :goto_b

    :cond_b
    move-object/from16 v10, v20

    :goto_b
    invoke-direct {v4, v11, v10}, Lf77;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v10, v12

    move-object/from16 v4, v20

    goto :goto_a

    :cond_c
    move-object/from16 v20, v4

    invoke-static {}, Lu96;->o()V

    throw v20

    :cond_d
    move-object/from16 v20, v4

    invoke-virtual {v7}, Llo8$a;->f()Ljava/lang/String;

    move-result-object v19

    new-instance v12, Lo77;

    move-object/from16 v18, v9

    invoke-direct/range {v12 .. v19}, Lo77;-><init>(ILjava/lang/String;ZLo77$a;Lo77$a;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_e
    move-object/from16 v20, v4

    invoke-static {v3, v1}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, v0, Llo8;->f:Lc06;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lc06;->f()Lb06;

    move-result-object v4

    goto :goto_c

    :cond_f
    move-object/from16 v4, v20

    :goto_c
    new-instance v0, Lk77;

    invoke-direct {v0, v1, v4}, Lk77;-><init>(Ljava/util/List;Lb06;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Llo8;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Llo8;

    iget v1, p0, Llo8;->a:I

    iget v3, p1, Llo8;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Llo8;->b:Ljava/lang/String;

    iget-object v3, p1, Llo8;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Llo8;->c:Ljava/lang/String;

    iget-object v3, p1, Llo8;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Llo8;->d:Ljava/lang/String;

    iget-object v3, p1, Llo8;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Llo8;->e:Ljava/lang/String;

    iget-object v3, p1, Llo8;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Llo8;->f:Lc06;

    iget-object v3, p1, Llo8;->f:Lc06;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Llo8;->g:Ljava/util/List;

    iget-object v3, p1, Llo8;->g:Ljava/util/List;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Llo8;->h:Ljl3;

    iget-object v3, p1, Llo8;->h:Ljl3;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object p0, p0, Llo8;->i:Ljava/util/List;

    iget-object p1, p1, Llo8;->i:Ljava/util/List;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Llo8;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Llo8;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Llo8;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Llo8;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Llo8;->e:Ljava/lang/String;

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

    iget-object v2, p0, Llo8;->f:Lc06;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lc06;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Llo8;->g:Ljava/util/List;

    invoke-static {v2, v0, v1}, Le2;->b(Ljava/util/List;II)I

    move-result v0

    iget-object v2, p0, Llo8;->h:Ljl3;

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljl3;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Llo8;->i:Ljava/util/List;

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 11

    iget v0, p0, Llo8;->a:I

    iget-object v1, p0, Llo8;->b:Ljava/lang/String;

    iget-object v2, p0, Llo8;->c:Ljava/lang/String;

    iget-object v3, p0, Llo8;->d:Ljava/lang/String;

    iget-object v4, p0, Llo8;->e:Ljava/lang/String;

    iget-object v5, p0, Llo8;->f:Lc06;

    iget-object v6, p0, Llo8;->g:Ljava/util/List;

    iget-object v7, p0, Llo8;->h:Ljl3;

    iget-object p0, p0, Llo8;->i:Ljava/util/List;

    const-string v8, ", title="

    const-string v9, ", text="

    const-string v10, "TaskSimpleWithRewardedSubtasksDetailsResponse(id="

    invoke-static {v0, v10, v8, v1, v9}, Lng;->e(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", logoUrl="

    const-string v8, ", subtitle="

    invoke-static {v0, v2, v1, v3, v8}, Lkv2;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ordInfoResponse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", subtasks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fullTerms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", disclaimers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-static {v1, p0, v0}, Lbg;->e(Ljava/lang/String;Ljava/util/List;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
