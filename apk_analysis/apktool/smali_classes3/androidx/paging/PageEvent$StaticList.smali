.class public final Landroidx/paging/PageEvent$StaticList;
.super Landroidx/paging/PageEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/paging/PageEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StaticList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/paging/PageEvent<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mediatorLoadStates:Landroidx/paging/LoadStates;

.field private final placeholdersAfter:I

.field private final placeholdersBefore:I

.field private final sourceLoadStates:Landroidx/paging/LoadStates;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;",
            "Landroidx/paging/LoadStates;",
            "Landroidx/paging/LoadStates;",
            "II)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, v0}, Landroidx/paging/PageEvent;-><init>(Ljh2;)V

    .line 27
    iput-object p1, p0, Landroidx/paging/PageEvent$StaticList;->data:Ljava/util/List;

    .line 28
    iput-object p2, p0, Landroidx/paging/PageEvent$StaticList;->sourceLoadStates:Landroidx/paging/LoadStates;

    .line 29
    iput-object p3, p0, Landroidx/paging/PageEvent$StaticList;->mediatorLoadStates:Landroidx/paging/LoadStates;

    .line 30
    iput p4, p0, Landroidx/paging/PageEvent$StaticList;->placeholdersBefore:I

    .line 31
    iput p5, p0, Landroidx/paging/PageEvent$StaticList;->placeholdersAfter:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;IIILjh2;)V
    .locals 1

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p7, p6, 0x8

    const/4 v0, 0x0

    if-eqz p7, :cond_2

    move p4, v0

    :cond_2
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_3

    move p5, v0

    :cond_3
    invoke-direct/range {p0 .. p5}, Landroidx/paging/PageEvent$StaticList;-><init>(Ljava/util/List;Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;II)V

    return-void
.end method

.method public static synthetic copy$default(Landroidx/paging/PageEvent$StaticList;Ljava/util/List;Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;IIILjava/lang/Object;)Landroidx/paging/PageEvent$StaticList;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Landroidx/paging/PageEvent$StaticList;->data:Ljava/util/List;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Landroidx/paging/PageEvent$StaticList;->sourceLoadStates:Landroidx/paging/LoadStates;

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    iget-object p3, p0, Landroidx/paging/PageEvent$StaticList;->mediatorLoadStates:Landroidx/paging/LoadStates;

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    iget p4, p0, Landroidx/paging/PageEvent$StaticList;->placeholdersBefore:I

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    iget p5, p0, Landroidx/paging/PageEvent$StaticList;->placeholdersAfter:I

    :cond_4
    move p6, p4

    move p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p7}, Landroidx/paging/PageEvent$StaticList;->copy(Ljava/util/List;Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;II)Landroidx/paging/PageEvent$StaticList;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/paging/PageEvent$StaticList;->data:Ljava/util/List;

    return-object p0
.end method

.method public final component2()Landroidx/paging/LoadStates;
    .locals 0

    iget-object p0, p0, Landroidx/paging/PageEvent$StaticList;->sourceLoadStates:Landroidx/paging/LoadStates;

    return-object p0
.end method

.method public final component3()Landroidx/paging/LoadStates;
    .locals 0

    iget-object p0, p0, Landroidx/paging/PageEvent$StaticList;->mediatorLoadStates:Landroidx/paging/LoadStates;

    return-object p0
.end method

.method public final component4()I
    .locals 0

    iget p0, p0, Landroidx/paging/PageEvent$StaticList;->placeholdersBefore:I

    return p0
.end method

.method public final component5()I
    .locals 0

    iget p0, p0, Landroidx/paging/PageEvent$StaticList;->placeholdersAfter:I

    return p0
.end method

.method public final copy(Ljava/util/List;Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;II)Landroidx/paging/PageEvent$StaticList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;",
            "Landroidx/paging/LoadStates;",
            "Landroidx/paging/LoadStates;",
            "II)",
            "Landroidx/paging/PageEvent$StaticList<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroidx/paging/PageEvent$StaticList;

    invoke-direct/range {p0 .. p5}, Landroidx/paging/PageEvent$StaticList;-><init>(Ljava/util/List;Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;II)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/paging/PageEvent$StaticList;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/paging/PageEvent$StaticList;

    iget-object v1, p0, Landroidx/paging/PageEvent$StaticList;->data:Ljava/util/List;

    iget-object v3, p1, Landroidx/paging/PageEvent$StaticList;->data:Ljava/util/List;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/paging/PageEvent$StaticList;->sourceLoadStates:Landroidx/paging/LoadStates;

    iget-object v3, p1, Landroidx/paging/PageEvent$StaticList;->sourceLoadStates:Landroidx/paging/LoadStates;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Landroidx/paging/PageEvent$StaticList;->mediatorLoadStates:Landroidx/paging/LoadStates;

    iget-object v3, p1, Landroidx/paging/PageEvent$StaticList;->mediatorLoadStates:Landroidx/paging/LoadStates;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Landroidx/paging/PageEvent$StaticList;->placeholdersBefore:I

    iget v3, p1, Landroidx/paging/PageEvent$StaticList;->placeholdersBefore:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget p0, p0, Landroidx/paging/PageEvent$StaticList;->placeholdersAfter:I

    iget p1, p1, Landroidx/paging/PageEvent$StaticList;->placeholdersAfter:I

    if-eq p0, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public filter(Lbm3;Le02;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbm3<",
            "-TT;-",
            "Le02<",
            "-",
            "Ljava/lang/Boolean;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Le02<",
            "-",
            "Landroidx/paging/PageEvent<",
            "TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Landroidx/paging/PageEvent$StaticList$filter$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/paging/PageEvent$StaticList$filter$1;

    iget v1, v0, Landroidx/paging/PageEvent$StaticList$filter$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/paging/PageEvent$StaticList$filter$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/paging/PageEvent$StaticList$filter$1;

    invoke-direct {v0, p0, p2}, Landroidx/paging/PageEvent$StaticList$filter$1;-><init>(Landroidx/paging/PageEvent$StaticList;Le02;)V

    :goto_0
    iget-object p2, v0, Landroidx/paging/PageEvent$StaticList$filter$1;->result:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Landroidx/paging/PageEvent$StaticList$filter$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Landroidx/paging/PageEvent$StaticList$filter$1;->L$3:Ljava/lang/Object;

    iget-object v2, v0, Landroidx/paging/PageEvent$StaticList$filter$1;->L$2:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v4, v0, Landroidx/paging/PageEvent$StaticList$filter$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/util/Collection;

    iget-object v5, v0, Landroidx/paging/PageEvent$StaticList$filter$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lbm3;

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Landroidx/paging/PageEvent$StaticList;->data:Ljava/util/List;

    check-cast p2, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move-object v4, v2

    move-object v2, p2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    iput-object p1, v0, Landroidx/paging/PageEvent$StaticList$filter$1;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Landroidx/paging/PageEvent$StaticList$filter$1;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/paging/PageEvent$StaticList$filter$1;->L$2:Ljava/lang/Object;

    iput-object p2, v0, Landroidx/paging/PageEvent$StaticList$filter$1;->L$3:Ljava/lang/Object;

    iput v3, v0, Landroidx/paging/PageEvent$StaticList$filter$1;->label:I

    invoke-interface {p1, p2, v0}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_3

    return-object v1

    :cond_3
    move-object v12, v5

    move-object v5, p1

    move-object p1, p2

    move-object p2, v12

    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {v4, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_4
    move-object p1, v5

    goto :goto_1

    :cond_5
    move-object v7, v4

    check-cast v7, Ljava/util/List;

    iget-object v8, p0, Landroidx/paging/PageEvent$StaticList;->sourceLoadStates:Landroidx/paging/LoadStates;

    iget-object v9, p0, Landroidx/paging/PageEvent$StaticList;->mediatorLoadStates:Landroidx/paging/LoadStates;

    iget v10, p0, Landroidx/paging/PageEvent$StaticList;->placeholdersBefore:I

    iget v11, p0, Landroidx/paging/PageEvent$StaticList;->placeholdersAfter:I

    new-instance v6, Landroidx/paging/PageEvent$StaticList;

    invoke-direct/range {v6 .. v11}, Landroidx/paging/PageEvent$StaticList;-><init>(Ljava/util/List;Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;II)V

    return-object v6
.end method

.method public flatMap(Lbm3;Le02;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lbm3<",
            "-TT;-",
            "Le02<",
            "-",
            "Ljava/lang/Iterable<",
            "+TR;>;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Le02<",
            "-",
            "Landroidx/paging/PageEvent<",
            "TR;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Landroidx/paging/PageEvent$StaticList$flatMap$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/paging/PageEvent$StaticList$flatMap$1;

    iget v1, v0, Landroidx/paging/PageEvent$StaticList$flatMap$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/paging/PageEvent$StaticList$flatMap$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/paging/PageEvent$StaticList$flatMap$1;

    invoke-direct {v0, p0, p2}, Landroidx/paging/PageEvent$StaticList$flatMap$1;-><init>(Landroidx/paging/PageEvent$StaticList;Le02;)V

    :goto_0
    iget-object p2, v0, Landroidx/paging/PageEvent$StaticList$flatMap$1;->result:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Landroidx/paging/PageEvent$StaticList$flatMap$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Landroidx/paging/PageEvent$StaticList$flatMap$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ljava/util/Iterator;

    iget-object v2, v0, Landroidx/paging/PageEvent$StaticList$flatMap$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/util/Collection;

    iget-object v4, v0, Landroidx/paging/PageEvent$StaticList$flatMap$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lbm3;

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Landroidx/paging/PageEvent$StaticList;->data:Ljava/util/List;

    check-cast p2, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move-object v11, p2

    move-object p2, p1

    move-object p1, v11

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    iput-object p2, v0, Landroidx/paging/PageEvent$StaticList$flatMap$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/paging/PageEvent$StaticList$flatMap$1;->L$1:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/paging/PageEvent$StaticList$flatMap$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Landroidx/paging/PageEvent$StaticList$flatMap$1;->label:I

    invoke-interface {p2, v4, v0}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_3

    return-object v1

    :cond_3
    move-object v11, v4

    move-object v4, p2

    move-object p2, v11

    :goto_2
    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p2, v2}, Lnn1;->s(Ljava/lang/Iterable;Ljava/util/Collection;)V

    move-object p2, v4

    goto :goto_1

    :cond_4
    move-object v6, v2

    check-cast v6, Ljava/util/List;

    iget-object v7, p0, Landroidx/paging/PageEvent$StaticList;->sourceLoadStates:Landroidx/paging/LoadStates;

    iget-object v8, p0, Landroidx/paging/PageEvent$StaticList;->mediatorLoadStates:Landroidx/paging/LoadStates;

    iget v9, p0, Landroidx/paging/PageEvent$StaticList;->placeholdersBefore:I

    iget v10, p0, Landroidx/paging/PageEvent$StaticList;->placeholdersAfter:I

    new-instance v5, Landroidx/paging/PageEvent$StaticList;

    invoke-direct/range {v5 .. v10}, Landroidx/paging/PageEvent$StaticList;-><init>(Ljava/util/List;Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;II)V

    return-object v5
.end method

.method public final getData()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/paging/PageEvent$StaticList;->data:Ljava/util/List;

    return-object p0
.end method

.method public final getMediatorLoadStates()Landroidx/paging/LoadStates;
    .locals 0

    iget-object p0, p0, Landroidx/paging/PageEvent$StaticList;->mediatorLoadStates:Landroidx/paging/LoadStates;

    return-object p0
.end method

.method public final getPlaceholdersAfter()I
    .locals 0

    iget p0, p0, Landroidx/paging/PageEvent$StaticList;->placeholdersAfter:I

    return p0
.end method

.method public final getPlaceholdersBefore()I
    .locals 0

    iget p0, p0, Landroidx/paging/PageEvent$StaticList;->placeholdersBefore:I

    return p0
.end method

.method public final getSourceLoadStates()Landroidx/paging/LoadStates;
    .locals 0

    iget-object p0, p0, Landroidx/paging/PageEvent$StaticList;->sourceLoadStates:Landroidx/paging/LoadStates;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Landroidx/paging/PageEvent$StaticList;->data:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/paging/PageEvent$StaticList;->sourceLoadStates:Landroidx/paging/LoadStates;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroidx/paging/LoadStates;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/paging/PageEvent$StaticList;->mediatorLoadStates:Landroidx/paging/LoadStates;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroidx/paging/LoadStates;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/paging/PageEvent$StaticList;->placeholdersBefore:I

    invoke-static {v2, v0, v1}, Lej0;->b(III)I

    move-result v0

    iget p0, p0, Landroidx/paging/PageEvent$StaticList;->placeholdersAfter:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public map(Lbm3;Le02;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lbm3<",
            "-TT;-",
            "Le02<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Le02<",
            "-",
            "Landroidx/paging/PageEvent<",
            "TR;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Landroidx/paging/PageEvent$StaticList$map$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/paging/PageEvent$StaticList$map$1;

    iget v1, v0, Landroidx/paging/PageEvent$StaticList$map$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/paging/PageEvent$StaticList$map$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/paging/PageEvent$StaticList$map$1;

    invoke-direct {v0, p0, p2}, Landroidx/paging/PageEvent$StaticList$map$1;-><init>(Landroidx/paging/PageEvent$StaticList;Le02;)V

    :goto_0
    iget-object p2, v0, Landroidx/paging/PageEvent$StaticList$map$1;->result:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Landroidx/paging/PageEvent$StaticList$map$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Landroidx/paging/PageEvent$StaticList$map$1;->L$3:Ljava/lang/Object;

    check-cast p1, Ljava/util/Collection;

    iget-object v2, v0, Landroidx/paging/PageEvent$StaticList$map$1;->L$2:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v4, v0, Landroidx/paging/PageEvent$StaticList$map$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/util/Collection;

    iget-object v5, v0, Landroidx/paging/PageEvent$StaticList$map$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lbm3;

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Landroidx/paging/PageEvent$StaticList;->data:Ljava/util/List;

    check-cast p2, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {p2, v4}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move-object v12, p2

    move-object p2, p1

    move-object p1, v2

    move-object v2, v12

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    iput-object p2, v0, Landroidx/paging/PageEvent$StaticList$map$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/paging/PageEvent$StaticList$map$1;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/paging/PageEvent$StaticList$map$1;->L$2:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/paging/PageEvent$StaticList$map$1;->L$3:Ljava/lang/Object;

    iput v3, v0, Landroidx/paging/PageEvent$StaticList$map$1;->label:I

    invoke-interface {p2, v4, v0}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_3

    return-object v1

    :cond_3
    move-object v5, p2

    move-object p2, v4

    move-object v4, p1

    :goto_2
    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object p1, v4

    move-object p2, v5

    goto :goto_1

    :cond_4
    move-object v7, p1

    check-cast v7, Ljava/util/List;

    iget-object v8, p0, Landroidx/paging/PageEvent$StaticList;->sourceLoadStates:Landroidx/paging/LoadStates;

    iget-object v9, p0, Landroidx/paging/PageEvent$StaticList;->mediatorLoadStates:Landroidx/paging/LoadStates;

    iget v10, p0, Landroidx/paging/PageEvent$StaticList;->placeholdersBefore:I

    iget v11, p0, Landroidx/paging/PageEvent$StaticList;->placeholdersAfter:I

    new-instance v6, Landroidx/paging/PageEvent$StaticList;

    invoke-direct/range {v6 .. v11}, Landroidx/paging/PageEvent$StaticList;-><init>(Ljava/util/List;Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;II)V

    return-object v6
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroidx/paging/PageEvent$StaticList;->mediatorLoadStates:Landroidx/paging/LoadStates;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PageEvent.StaticList with "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/paging/PageEvent$StaticList;->data:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " items (\n                    |   first item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/paging/PageEvent$StaticList;->data:Ljava/util/List;

    invoke-static {v2}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n                    |   last item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/paging/PageEvent$StaticList;->data:Ljava/util/List;

    invoke-static {v2}, Lqn1;->c0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n                    |   sourceLoadStates: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/paging/PageEvent$StaticList;->sourceLoadStates:Landroidx/paging/LoadStates;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",\n                    |   placeholdersBefore: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/paging/PageEvent$StaticList;->placeholdersBefore:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",\n                    |   placeholdersAfter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/paging/PageEvent$StaticList;->placeholdersAfter:I

    const-string v2, ",\n                    "

    invoke-static {v1, v2, p0}, Ll2;->e(Ljava/lang/StringBuilder;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "|   mediatorLoadStates: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0xa

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string v0, "|)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lna8;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
