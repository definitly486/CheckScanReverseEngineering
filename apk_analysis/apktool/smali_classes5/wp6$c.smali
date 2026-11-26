.class public final Lwp6$c;
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
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwp6$c$a;,
        Lwp6$c$b;,
        Lwp6$c$c;,
        Lwp6$c$d;
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

.field private final e:Lwp6$c$b;
    .annotation runtime Lbq7;
        value = "mainButton"
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation runtime Lbq7;
        value = "conditions"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lwp6$c$c;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/List;
    .annotation runtime Lbq7;
        value = "advantages"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lwp6$c$a;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/List;
    .annotation runtime Lbq7;
        value = "disclaimers"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lwp6$c$d;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lwa8;
    .annotation runtime Lbq7;
        value = "stroke"
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
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lwp6$c$b;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lwa8;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lwp6$c$b;",
            "Ljava/util/List<",
            "Lwp6$c$c;",
            ">;",
            "Ljava/util/List<",
            "Lwp6$c$a;",
            ">;",
            "Ljava/util/List<",
            "Lwp6$c$d;",
            ">;",
            "Lwa8;",
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

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lwp6$c;->a:I

    iput-object p2, p0, Lwp6$c;->b:Ljava/lang/String;

    iput-object p3, p0, Lwp6$c;->c:Ljava/lang/String;

    iput-object p4, p0, Lwp6$c;->d:Ljava/lang/String;

    iput-object p5, p0, Lwp6$c;->e:Lwp6$c$b;

    iput-object p6, p0, Lwp6$c;->f:Ljava/util/List;

    iput-object p7, p0, Lwp6$c;->g:Ljava/util/List;

    iput-object p8, p0, Lwp6$c;->h:Ljava/util/List;

    iput-object p9, p0, Lwp6$c;->i:Lwa8;

    iput-object p10, p0, Lwp6$c;->j:Ljava/lang/String;

    iput-object p11, p0, Lwp6$c;->k:Ljava/lang/String;

    iput-object p12, p0, Lwp6$c;->l:Ljava/lang/Integer;

    sget-object p0, Lwp6$h$a;->COMMON:Lwp6$h$a;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lwp6$c$b;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lwa8;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILjh2;)V
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

    .line 45
    :cond_2
    invoke-direct/range {p0 .. p12}, Lwp6$c;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lwp6$c$b;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lwa8;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public final a()Lpz3;
    .locals 14

    new-instance v10, Lpw7;

    iget-object v0, p0, Lwp6$c;->j:Ljava/lang/String;

    iget v1, p0, Lwp6$c;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lwp6$c;->k:Ljava/lang/String;

    const/16 v3, 0x18

    invoke-direct {v10, v3, v0, v2, v1}, Lpw7;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    iget v1, p0, Lwp6$c;->a:I

    iget-object v2, p0, Lwp6$c;->b:Ljava/lang/String;

    iget-object v3, p0, Lwp6$c;->c:Ljava/lang/String;

    iget-object v4, p0, Lwp6$c;->d:Ljava/lang/String;

    new-instance v5, Lws4$b;

    iget-object v0, p0, Lwp6$c;->e:Lwp6$c$b;

    invoke-virtual {v0}, Lwp6$c$b;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lwp6$c;->e:Lwp6$c$b;

    invoke-virtual {v6}, Lwp6$c$b;->b()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Lws4$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lwp6$c;->f:Ljava/util/List;

    const/16 v6, 0xa

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v0, v6}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lwp6$c$c;

    new-instance v11, Lqs4;

    invoke-virtual {v9}, Lwp6$c$c;->a()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9}, Lwp6$c$c;->b()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v11, v12, v9}, Lqs4;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v8, v7

    :cond_1
    if-nez v8, :cond_2

    sget-object v8, Lkx2;->b:Lkx2;

    :cond_2
    iget-object v0, p0, Lwp6$c;->g:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    move-object v9, v7

    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v0, v6}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lwp6$c$a;

    new-instance v11, Lns4;

    invoke-virtual {v6}, Lwp6$c$a;->a()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6}, Lwp6$c$a;->c()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6}, Lwp6$c$a;->b()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v11, v12, v13, v6}, Lns4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lwp6$c;->h:Ljava/util/List;

    if-eqz v0, :cond_a

    new-instance v6, Lws4$c;

    invoke-static {v0}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwp6$c$d;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lwp6$c$d;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    move-object v0, v9

    :goto_2
    const-string v11, ""

    if-nez v0, :cond_5

    move-object v0, v11

    :cond_5
    iget-object v12, p0, Lwp6$c;->h:Ljava/util/List;

    const/4 v13, 0x1

    invoke-static {v13, v12}, Lqn1;->W(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lwp6$c$d;

    if-eqz v12, :cond_6

    invoke-virtual {v12}, Lwp6$c$d;->b()Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    :cond_6
    move-object v12, v9

    :goto_3
    if-nez v12, :cond_7

    move-object v12, v11

    :cond_7
    iget-object v13, p0, Lwp6$c;->h:Ljava/util/List;

    invoke-static {v13}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lwp6$c$d;

    if-eqz v13, :cond_8

    invoke-virtual {v13}, Lwp6$c$d;->a()Ljava/lang/String;

    move-result-object v13

    goto :goto_4

    :cond_8
    move-object v13, v9

    :goto_4
    if-nez v13, :cond_9

    goto :goto_5

    :cond_9
    move-object v11, v13

    :goto_5
    invoke-direct {v6, v0, v12, v11}, Lws4$c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_a
    move-object v6, v9

    :goto_6
    iget-object p0, p0, Lwp6$c;->i:Lwa8;

    if-eqz p0, :cond_b

    new-instance v0, Lws4$a;

    invoke-virtual {p0}, Lwa8;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lwa8;->b()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0}, Lwa8;->a()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0}, Lwa8;->d()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v9, v11, v12, p0}, Lws4$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_b
    move-object v0, v9

    :goto_7
    new-instance p0, Lws4;

    move-object v9, v6

    move-object v6, v8

    move-object v8, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lws4;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lws4$b;Ljava/util/List;Ljava/util/ArrayList;Lws4$a;Lws4$c;Lpw7;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lwp6$c;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lwp6$c;

    iget v1, p0, Lwp6$c;->a:I

    iget v3, p1, Lwp6$c;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lwp6$c;->b:Ljava/lang/String;

    iget-object v3, p1, Lwp6$c;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lwp6$c;->c:Ljava/lang/String;

    iget-object v3, p1, Lwp6$c;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lwp6$c;->d:Ljava/lang/String;

    iget-object v3, p1, Lwp6$c;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lwp6$c;->e:Lwp6$c$b;

    iget-object v3, p1, Lwp6$c;->e:Lwp6$c$b;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lwp6$c;->f:Ljava/util/List;

    iget-object v3, p1, Lwp6$c;->f:Ljava/util/List;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lwp6$c;->g:Ljava/util/List;

    iget-object v3, p1, Lwp6$c;->g:Ljava/util/List;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lwp6$c;->h:Ljava/util/List;

    iget-object v3, p1, Lwp6$c;->h:Ljava/util/List;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lwp6$c;->i:Lwa8;

    iget-object v3, p1, Lwp6$c;->i:Lwa8;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lwp6$c;->j:Ljava/lang/String;

    iget-object v3, p1, Lwp6$c;->j:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lwp6$c;->k:Ljava/lang/String;

    iget-object v3, p1, Lwp6$c;->k:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object p0, p0, Lwp6$c;->l:Ljava/lang/Integer;

    iget-object p1, p1, Lwp6$c;->l:Ljava/lang/Integer;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    return v2

    :cond_d
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lwp6$c;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lwp6$c;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lwp6$c;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lwp6$c;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lwp6$c;->e:Lwp6$c$b;

    invoke-virtual {v2}, Lwp6$c$b;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lwp6$c;->f:Ljava/util/List;

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lwp6$c;->g:Ljava/util/List;

    invoke-static {v0, v2, v1}, Le2;->b(Ljava/util/List;II)I

    move-result v0

    iget-object v2, p0, Lwp6$c;->h:Ljava/util/List;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lwp6$c;->i:Lwa8;

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lwa8;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lwp6$c;->j:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lwp6$c;->k:Ljava/lang/String;

    if-nez v2, :cond_4

    move v2, v3

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lwp6$c;->l:Ljava/lang/Integer;

    if-nez p0, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 14

    iget v0, p0, Lwp6$c;->a:I

    iget-object v1, p0, Lwp6$c;->b:Ljava/lang/String;

    iget-object v2, p0, Lwp6$c;->c:Ljava/lang/String;

    iget-object v3, p0, Lwp6$c;->d:Ljava/lang/String;

    iget-object v4, p0, Lwp6$c;->e:Lwp6$c$b;

    iget-object v5, p0, Lwp6$c;->f:Ljava/util/List;

    iget-object v6, p0, Lwp6$c;->g:Ljava/util/List;

    iget-object v7, p0, Lwp6$c;->h:Ljava/util/List;

    iget-object v8, p0, Lwp6$c;->i:Lwa8;

    iget-object v9, p0, Lwp6$c;->j:Ljava/lang/String;

    iget-object v10, p0, Lwp6$c;->k:Ljava/lang/String;

    iget-object p0, p0, Lwp6$c;->l:Ljava/lang/Integer;

    const-string v11, ", title="

    const-string v12, ", text="

    const-string v13, "MfoRichPreviewResponse(id="

    invoke-static {v0, v13, v11, v1, v12}, Lng;->e(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", logoUrl="

    const-string v11, ", mainButton="

    invoke-static {v0, v2, v1, v3, v11}, Lkv2;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", conditions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", advantages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", disclaimers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", stroke="

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
