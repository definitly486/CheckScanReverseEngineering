.class public final Lwp6$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwp6$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwp6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwp6$i$a;,
        Lwp6$i$b;,
        Lwp6$i$c;
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

.field private final d:Lwp6$i$b;
    .annotation runtime Lbq7;
        value = "mainButton"
    .end annotation
.end field

.field private final e:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "logoUrl"
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation runtime Lbq7;
        value = "tags"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/List;
    .annotation runtime Lbq7;
        value = "conditions"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lwp6$i$c;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lwa8;
    .annotation runtime Lbq7;
        value = "stroke"
    .end annotation
.end field

.field private final i:Lwp6$i$a;
    .annotation runtime Lbq7;
        value = "bottom"
    .end annotation
.end field

.field private final j:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "block"
    .end annotation
.end field

.field private final k:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "badge"
    .end annotation
.end field

.field private final l:Ljava/lang/Integer;
    .annotation runtime Lbq7;
        value = "operationId"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lwp6$i$b;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lwa8;Lwp6$i$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lwp6$i$b;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lwp6$i$c;",
            ">;",
            "Lwa8;",
            "Lwp6$i$a;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lwp6$i;->a:I

    iput-object p2, p0, Lwp6$i;->b:Ljava/lang/String;

    iput-object p3, p0, Lwp6$i;->c:Ljava/lang/String;

    iput-object p4, p0, Lwp6$i;->d:Lwp6$i$b;

    iput-object p5, p0, Lwp6$i;->e:Ljava/lang/String;

    iput-object p6, p0, Lwp6$i;->f:Ljava/util/List;

    iput-object p7, p0, Lwp6$i;->g:Ljava/util/List;

    iput-object p8, p0, Lwp6$i;->h:Lwa8;

    iput-object p9, p0, Lwp6$i;->i:Lwp6$i$a;

    iput-object p10, p0, Lwp6$i;->j:Ljava/lang/String;

    iput-object p11, p0, Lwp6$i;->k:Ljava/lang/String;

    iput-object p12, p0, Lwp6$i;->l:Ljava/lang/Integer;

    sget-object p0, Lwp6$h$a;->COMMON:Lwp6$h$a;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Lwp6$i$b;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lwa8;Lwp6$i$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILjh2;)V
    .locals 1

    and-int/lit16 p14, p13, 0x200

    const/4 v0, 0x0

    if-eqz p14, :cond_0

    move-object p10, v0

    :cond_0
    and-int/lit16 p14, p13, 0x400

    if-eqz p14, :cond_1

    move-object p11, v0

    :cond_1
    and-int/lit16 p13, p13, 0x800

    if-eqz p13, :cond_2

    move-object p12, v0

    .line 48
    :cond_2
    invoke-direct/range {p0 .. p12}, Lwp6$i;-><init>(ILjava/lang/String;Ljava/lang/String;Lwp6$i$b;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lwa8;Lwp6$i$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public final a()Lpz3;
    .locals 10

    iget v0, p0, Lwp6$i;->a:I

    new-instance v1, Lpw7;

    iget-object v2, p0, Lwp6$i;->j:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lwp6$i;->k:Ljava/lang/String;

    const/16 v5, 0x18

    invoke-direct {v1, v5, v2, v4, v3}, Lpw7;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, p0, Lwp6$i;->h:Lwa8;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    new-instance v4, Lvo6$a;

    invoke-virtual {v2}, Lwa8;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lwp6$i;->h:Lwa8;

    invoke-virtual {v5}, Lwa8;->d()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lwp6$i;->h:Lwa8;

    invoke-virtual {v6}, Lwa8;->a()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lwp6$i;->h:Lwa8;

    invoke-virtual {v7}, Lwa8;->b()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v2, v5, v6, v7}, Lvo6$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    new-instance v2, Luo6;

    iget-object v5, p0, Lwp6$i;->b:Ljava/lang/String;

    iget-object v6, p0, Lwp6$i;->c:Ljava/lang/String;

    iget-object v7, p0, Lwp6$i;->e:Ljava/lang/String;

    invoke-direct {v2, v5, v6, v7}, Luo6;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lwp6$i;->f:Ljava/util/List;

    check-cast v5, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v5, v7}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    new-instance v9, Lep6;

    invoke-direct {v9, v8}, Lep6;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v5, Lip6;

    invoke-direct {v5, v6}, Lip6;-><init>(Ljava/util/ArrayList;)V

    const/4 v6, 0x2

    new-array v6, v6, [Llp6;

    const/4 v8, 0x0

    aput-object v2, v6, v8

    const/4 v2, 0x1

    aput-object v5, v6, v2

    invoke-static {v6}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    iget-object v5, p0, Lwp6$i;->g:Ljava/util/List;

    check-cast v5, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v5, v7}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lwp6$i$c;

    invoke-virtual {v7}, Lwp6$i$c;->a()Lko6;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-static {v6, v2}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v5, p0, Lwp6$i;->i:Lwp6$i$a;

    if-eqz v5, :cond_3

    new-instance v3, Lpo6;

    invoke-virtual {v5}, Lwp6$i$a;->b()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lwp6$i;->i:Lwp6$i$a;

    invoke-virtual {v6}, Lwp6$i$a;->a()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lpo6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static {v3}, Lu96;->j(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3, v2}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lwp6$i;->a:I

    new-instance v5, Lio6;

    iget-object v6, p0, Lwp6$i;->d:Lwp6$i$b;

    invoke-virtual {v6}, Lwp6$i$b;->a()Ljava/lang/String;

    move-result-object v6

    iget-object p0, p0, Lwp6$i;->d:Lwp6$i$b;

    invoke-virtual {p0}, Lwp6$i$b;->b()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v5, v3, v6, p0}, Lio6;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0, v2}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    new-instance v2, Lvo6;

    invoke-direct {v2, v0, v4, p0, v1}, Lvo6;-><init>(ILvo6$a;Ljava/util/ArrayList;Lpw7;)V

    return-object v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lwp6$i;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lwp6$i;

    iget v1, p0, Lwp6$i;->a:I

    iget v3, p1, Lwp6$i;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lwp6$i;->b:Ljava/lang/String;

    iget-object v3, p1, Lwp6$i;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lwp6$i;->c:Ljava/lang/String;

    iget-object v3, p1, Lwp6$i;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lwp6$i;->d:Lwp6$i$b;

    iget-object v3, p1, Lwp6$i;->d:Lwp6$i$b;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lwp6$i;->e:Ljava/lang/String;

    iget-object v3, p1, Lwp6$i;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lwp6$i;->f:Ljava/util/List;

    iget-object v3, p1, Lwp6$i;->f:Ljava/util/List;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lwp6$i;->g:Ljava/util/List;

    iget-object v3, p1, Lwp6$i;->g:Ljava/util/List;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lwp6$i;->h:Lwa8;

    iget-object v3, p1, Lwp6$i;->h:Lwa8;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lwp6$i;->i:Lwp6$i$a;

    iget-object v3, p1, Lwp6$i;->i:Lwp6$i$a;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lwp6$i;->j:Ljava/lang/String;

    iget-object v3, p1, Lwp6$i;->j:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lwp6$i;->k:Ljava/lang/String;

    iget-object v3, p1, Lwp6$i;->k:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object p0, p0, Lwp6$i;->l:Ljava/lang/Integer;

    iget-object p1, p1, Lwp6$i;->l:Ljava/lang/Integer;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    return v2

    :cond_d
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lwp6$i;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lwp6$i;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lwp6$i;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lwp6$i;->d:Lwp6$i$b;

    invoke-virtual {v2}, Lwp6$i$b;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lwp6$i;->e:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lwp6$i;->f:Ljava/util/List;

    invoke-static {v2, v0, v1}, Le2;->b(Ljava/util/List;II)I

    move-result v0

    iget-object v2, p0, Lwp6$i;->g:Ljava/util/List;

    invoke-static {v2, v0, v1}, Le2;->b(Ljava/util/List;II)I

    move-result v0

    iget-object v2, p0, Lwp6$i;->h:Lwa8;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lwa8;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lwp6$i;->i:Lwp6$i$a;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lwp6$i$a;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lwp6$i;->j:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lwp6$i;->k:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lwp6$i;->l:Ljava/lang/Integer;

    if-nez p0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 14

    iget v0, p0, Lwp6$i;->a:I

    iget-object v1, p0, Lwp6$i;->b:Ljava/lang/String;

    iget-object v2, p0, Lwp6$i;->c:Ljava/lang/String;

    iget-object v3, p0, Lwp6$i;->d:Lwp6$i$b;

    iget-object v4, p0, Lwp6$i;->e:Ljava/lang/String;

    iget-object v5, p0, Lwp6$i;->f:Ljava/util/List;

    iget-object v6, p0, Lwp6$i;->g:Ljava/util/List;

    iget-object v7, p0, Lwp6$i;->h:Lwa8;

    iget-object v8, p0, Lwp6$i;->i:Lwp6$i$a;

    iget-object v9, p0, Lwp6$i;->j:Ljava/lang/String;

    iget-object v10, p0, Lwp6$i;->k:Ljava/lang/String;

    iget-object p0, p0, Lwp6$i;->l:Ljava/lang/Integer;

    const-string v11, ", title="

    const-string v12, ", text="

    const-string v13, "PromoCardResponse(id="

    invoke-static {v0, v13, v11, v1, v12}, Lng;->e(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mainButton="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", logoUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", conditions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", stroke="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", block="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", badge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", operationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
