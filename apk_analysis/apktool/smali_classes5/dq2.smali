.class public final Ldq2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldq2$a;
    }
.end annotation


# static fields
.field public static final p:Ljava/util/LinkedHashSet;

.field public static final q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lpj0;",
            ">;",
            "Lvj0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/CharSequence;

.field public b:I

.field public c:I

.field public d:Z

.field public e:I

.field public f:I

.field public g:I

.field public h:Z

.field public final i:Ljava/util/ArrayList;

.field public final j:Ln54;

.field public final k:Ljava/util/ArrayList;

.field public final l:Laq2;

.field public final m:Ljava/util/LinkedHashMap;

.field public final n:Ljava/util/ArrayList;

.field public final o:Ljava/util/LinkedHashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Ljava/util/LinkedHashSet;

    const-class v1, Lwj0;

    const-class v2, Lnv3;

    const-class v3, Lm63;

    const-class v4, Lqx3;

    const-class v5, Ldt8;

    const-class v6, Lyq4;

    const-class v7, Lg44;

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Ldq2;->p:Ljava/util/LinkedHashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v8, Lxj0$a;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lov3$a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ln63$a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lrx3$a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Let8$a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lzq4$a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lh44$a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Ldq2;->q:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ln54;Ljava/util/ArrayList;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ldq2;->b:I

    iput v0, p0, Ldq2;->c:I

    iput v0, p0, Ldq2;->e:I

    iput v0, p0, Ldq2;->f:I

    iput v0, p0, Ldq2;->g:I

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Ldq2;->m:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldq2;->n:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, p0, Ldq2;->o:Ljava/util/LinkedHashSet;

    iput-object p1, p0, Ldq2;->i:Ljava/util/ArrayList;

    iput-object p2, p0, Ldq2;->j:Ln54;

    iput-object p3, p0, Ldq2;->k:Ljava/util/ArrayList;

    new-instance p1, Laq2;

    invoke-direct {p1}, Laq2;-><init>()V

    iput-object p1, p0, Ldq2;->l:Laq2;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a(Luj0;)V
    .locals 2

    :goto_0
    invoke-virtual {p0}, Ldq2;->h()Luj0;

    move-result-object v0

    invoke-interface {p1}, Luj0;->d()Lpj0;

    move-result-object v1

    invoke-interface {v0, v1}, Luj0;->c(Lpj0;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ldq2;->h()Luj0;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldq2;->e(Luj0;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ldq2;->h()Luj0;

    move-result-object v0

    invoke-interface {v0}, Luj0;->d()Lpj0;

    move-result-object v0

    invoke-interface {p1}, Luj0;->d()Lpj0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzn5;->b(Lzn5;)V

    iget-object v0, p0, Ldq2;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Ldq2;->o:Ljava/util/LinkedHashSet;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Le36;)V
    .locals 5

    iget-object v0, p1, Le36;->b:Lpq4;

    invoke-virtual {v0}, Lpq4;->a()V

    iget-object v0, v0, Lpq4;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Loq4;

    iget-object v2, p1, Le36;->a:Ld36;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lzn5;->f()V

    iget-object v3, v2, Lzn5;->d:Lzn5;

    iput-object v3, v1, Lzn5;->d:Lzn5;

    if-eqz v3, :cond_1

    iput-object v1, v3, Lzn5;->e:Lzn5;

    :cond_1
    iput-object v2, v1, Lzn5;->e:Lzn5;

    iput-object v1, v2, Lzn5;->d:Lzn5;

    iget-object v2, v2, Lzn5;->a:Lzn5;

    iput-object v2, v1, Lzn5;->a:Lzn5;

    iget-object v3, v1, Lzn5;->d:Lzn5;

    if-nez v3, :cond_2

    iput-object v1, v2, Lzn5;->b:Lzn5;

    :cond_2
    iget-object v2, v1, Loq4;->f:Ljava/lang/String;

    iget-object v3, p0, Ldq2;->m:Ljava/util/LinkedHashMap;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final c()V
    .locals 5

    iget-boolean v0, p0, Ldq2;->d:Z

    if-eqz v0, :cond_1

    iget v0, p0, Ldq2;->b:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Ldq2;->a:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v1, v0, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    iget v1, p0, Ldq2;->c:I

    rem-int/lit8 v1, v1, 0x4

    rsub-int/lit8 v1, v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/2addr v3, v1

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Ldq2;->a:Ljava/lang/CharSequence;

    iget v1, p0, Ldq2;->b:I

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_1
    invoke-virtual {p0}, Ldq2;->h()Luj0;

    move-result-object p0

    invoke-interface {p0, v0}, Luj0;->e(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Ldq2;->a:Ljava/lang/CharSequence;

    iget v1, p0, Ldq2;->b:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    iget v1, p0, Ldq2;->b:I

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ldq2;->b:I

    iget v0, p0, Ldq2;->c:I

    rem-int/lit8 v1, v0, 0x4

    rsub-int/lit8 v1, v1, 0x4

    add-int/2addr v1, v0

    iput v1, p0, Ldq2;->c:I

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ldq2;->b:I

    iget v0, p0, Ldq2;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldq2;->c:I

    return-void
.end method

.method public final e(Luj0;)V
    .locals 2

    invoke-virtual {p0}, Ldq2;->h()Luj0;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Ldq2;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    instance-of v0, p1, Le36;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Le36;

    invoke-virtual {p0, v0}, Ldq2;->b(Le36;)V

    :cond_1
    invoke-interface {p1}, Luj0;->h()V

    return-void
.end method

.method public final f(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Luj0;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Luj0;

    invoke-virtual {p0, v1}, Ldq2;->e(Luj0;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 5

    iget v0, p0, Ldq2;->b:I

    iget v1, p0, Ldq2;->c:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Ldq2;->h:Z

    iget-object v2, p0, Ldq2;->a:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_2

    iget-object v3, p0, Ldq2;->a:Ljava/lang/CharSequence;

    invoke-interface {v3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_1

    const/16 v4, 0x20

    if-eq v3, v4, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, p0, Ldq2;->h:Z

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v3, v1, 0x4

    rsub-int/lit8 v3, v3, 0x4

    add-int/2addr v1, v3

    goto :goto_0

    :cond_2
    :goto_1
    iput v0, p0, Ldq2;->e:I

    iput v1, p0, Ldq2;->f:I

    iget v0, p0, Ldq2;->c:I

    sub-int/2addr v1, v0

    iput v1, p0, Ldq2;->g:I

    return-void
.end method

.method public final h()Luj0;
    .locals 1

    iget-object p0, p0, Ldq2;->n:Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-static {v0, p0}, Ldd2;->b(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Luj0;

    return-object p0
.end method

.method public final i(Ljava/lang/String;)V
    .locals 11

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v1

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v4, :cond_2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, p1, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    :cond_1
    const v5, 0xfffd

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_4
    iput-object p1, p0, Ldq2;->a:Ljava/lang/CharSequence;

    iput v2, p0, Ldq2;->b:I

    iput v2, p0, Ldq2;->c:I

    iput-boolean v2, p0, Ldq2;->d:Z

    iget-object p1, p0, Ldq2;->n:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v4, v3

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, -0x1

    if-eqz v5, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Luj0;

    invoke-virtual {p0}, Ldq2;->g()V

    invoke-interface {v5, p0}, Luj0;->f(Ldq2;)Lrj0;

    move-result-object v7

    if-eqz v7, :cond_8

    iget-boolean v8, v7, Lrj0;->c:Z

    if-eqz v8, :cond_5

    invoke-virtual {p0, v5}, Ldq2;->e(Luj0;)V

    return-void

    :cond_5
    iget v5, v7, Lrj0;->a:I

    if-eq v5, v6, :cond_6

    invoke-virtual {p0, v5}, Ldq2;->k(I)V

    goto :goto_3

    :cond_6
    iget v5, v7, Lrj0;->b:I

    if-eq v5, v6, :cond_7

    invoke-virtual {p0, v5}, Ldq2;->j(I)V

    :cond_7
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sub-int/2addr v4, v3

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Luj0;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    invoke-interface {v4}, Luj0;->d()Lpj0;

    move-result-object v7

    instance-of v7, v7, Ld36;

    if-nez v7, :cond_a

    invoke-interface {v4}, Luj0;->a()Z

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_4

    :cond_9
    move v7, v2

    goto :goto_5

    :cond_a
    :goto_4
    move v7, v3

    :cond_b
    :goto_5
    if-eqz v7, :cond_16

    invoke-virtual {p0}, Ldq2;->g()V

    iget-boolean v8, p0, Ldq2;->h:Z

    if-nez v8, :cond_15

    iget v8, p0, Ldq2;->g:I

    const/4 v9, 0x4

    if-ge v8, v9, :cond_c

    iget-object v8, p0, Ldq2;->a:Ljava/lang/CharSequence;

    iget v9, p0, Ldq2;->e:I

    invoke-static {v8, v9}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isLetter(I)Z

    move-result v8

    if-eqz v8, :cond_c

    goto/16 :goto_9

    :cond_c
    new-instance v8, Ldq2$a;

    invoke-direct {v8, v4}, Ldq2$a;-><init>(Luj0;)V

    iget-object v9, p0, Ldq2;->i:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lvj0;

    invoke-interface {v10, p0, v8}, Lvj0;->a(Ldq2;Ldq2$a;)Lbk0;

    move-result-object v10

    if-eqz v10, :cond_d

    goto :goto_6

    :cond_e
    move-object v10, v1

    :goto_6
    if-nez v10, :cond_f

    iget p1, p0, Ldq2;->e:I

    invoke-virtual {p0, p1}, Ldq2;->k(I)V

    goto :goto_a

    :cond_f
    if-nez v5, :cond_10

    invoke-virtual {p0, v0}, Ldq2;->f(Ljava/util/List;)V

    move v5, v3

    :cond_10
    iget v8, v10, Lbk0;->b:I

    if-eq v8, v6, :cond_11

    invoke-virtual {p0, v8}, Ldq2;->k(I)V

    goto :goto_7

    :cond_11
    iget v8, v10, Lbk0;->c:I

    if-eq v8, v6, :cond_12

    invoke-virtual {p0, v8}, Ldq2;->j(I)V

    :cond_12
    :goto_7
    iget-boolean v8, v10, Lbk0;->d:Z

    if-eqz v8, :cond_14

    invoke-virtual {p0}, Ldq2;->h()Luj0;

    move-result-object v8

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v9, p0, Ldq2;->o:Ljava/util/LinkedHashSet;

    invoke-interface {v9, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    instance-of v9, v8, Le36;

    if-eqz v9, :cond_13

    move-object v9, v8

    check-cast v9, Le36;

    invoke-virtual {p0, v9}, Ldq2;->b(Le36;)V

    :cond_13
    invoke-interface {v8}, Luj0;->d()Lpj0;

    move-result-object v8

    invoke-virtual {v8}, Lzn5;->f()V

    :cond_14
    iget-object v8, v10, Lbk0;->a:[Luj0;

    array-length v9, v8

    move v10, v2

    :goto_8
    if-ge v10, v9, :cond_b

    aget-object v4, v8, v10

    invoke-virtual {p0, v4}, Ldq2;->a(Luj0;)V

    invoke-interface {v4}, Luj0;->a()Z

    move-result v7

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_15
    :goto_9
    iget p1, p0, Ldq2;->e:I

    invoke-virtual {p0, p1}, Ldq2;->k(I)V

    :cond_16
    :goto_a
    if-nez v5, :cond_17

    iget-boolean p1, p0, Ldq2;->h:Z

    if-nez p1, :cond_17

    invoke-virtual {p0}, Ldq2;->h()Luj0;

    move-result-object p1

    invoke-interface {p1}, Luj0;->b()Z

    move-result p1

    if-eqz p1, :cond_17

    invoke-virtual {p0}, Ldq2;->c()V

    return-void

    :cond_17
    if-nez v5, :cond_18

    invoke-virtual {p0, v0}, Ldq2;->f(Ljava/util/List;)V

    :cond_18
    invoke-interface {v4}, Luj0;->a()Z

    move-result p1

    if-nez p1, :cond_19

    invoke-virtual {p0}, Ldq2;->c()V

    return-void

    :cond_19
    iget-boolean p1, p0, Ldq2;->h:Z

    if-nez p1, :cond_1a

    new-instance p1, Le36;

    invoke-direct {p1}, Le36;-><init>()V

    invoke-virtual {p0, p1}, Ldq2;->a(Luj0;)V

    invoke-virtual {p0}, Ldq2;->c()V

    :cond_1a
    return-void
.end method

.method public final j(I)V
    .locals 3

    iget v0, p0, Ldq2;->f:I

    if-lt p1, v0, :cond_0

    iget v1, p0, Ldq2;->e:I

    iput v1, p0, Ldq2;->b:I

    iput v0, p0, Ldq2;->c:I

    :cond_0
    iget-object v0, p0, Ldq2;->a:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :goto_0
    iget v1, p0, Ldq2;->c:I

    if-ge v1, p1, :cond_1

    iget v2, p0, Ldq2;->b:I

    if-eq v2, v0, :cond_1

    invoke-virtual {p0}, Ldq2;->d()V

    goto :goto_0

    :cond_1
    if-le v1, p1, :cond_2

    iget v0, p0, Ldq2;->b:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Ldq2;->b:I

    iput p1, p0, Ldq2;->c:I

    iput-boolean v1, p0, Ldq2;->d:Z

    return-void

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Ldq2;->d:Z

    return-void
.end method

.method public final k(I)V
    .locals 2

    iget v0, p0, Ldq2;->e:I

    if-lt p1, v0, :cond_0

    iput v0, p0, Ldq2;->b:I

    iget v0, p0, Ldq2;->f:I

    iput v0, p0, Ldq2;->c:I

    :cond_0
    iget-object v0, p0, Ldq2;->a:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :goto_0
    iget v1, p0, Ldq2;->b:I

    if-ge v1, p1, :cond_1

    if-eq v1, v0, :cond_1

    invoke-virtual {p0}, Ldq2;->d()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Ldq2;->d:Z

    return-void
.end method
