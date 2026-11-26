.class public final Landroidx/paging/PageEvent$Insert;
.super Landroidx/paging/PageEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/paging/PageEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Insert"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/paging/PageEvent$Insert$Companion;
    }
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


# static fields
.field public static final Companion:Landroidx/paging/PageEvent$Insert$Companion;


# instance fields
.field private final loadType:Landroidx/paging/LoadType;

.field private final mediatorLoadStates:Landroidx/paging/LoadStates;

.field private final pages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/paging/TransformablePage<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final placeholdersAfter:I

.field private final placeholdersBefore:I

.field private final sourceLoadStates:Landroidx/paging/LoadStates;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/paging/PageEvent$Insert$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/paging/PageEvent$Insert$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/paging/PageEvent$Insert;->Companion:Landroidx/paging/PageEvent$Insert$Companion;

    return-void
.end method

.method private constructor <init>(Landroidx/paging/LoadType;Ljava/util/List;IILandroidx/paging/LoadStates;Landroidx/paging/LoadStates;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/LoadType;",
            "Ljava/util/List<",
            "Landroidx/paging/TransformablePage<",
            "TT;>;>;II",
            "Landroidx/paging/LoadStates;",
            "Landroidx/paging/LoadStates;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/paging/PageEvent;-><init>(Ljh2;)V

    iput-object p1, p0, Landroidx/paging/PageEvent$Insert;->loadType:Landroidx/paging/LoadType;

    iput-object p2, p0, Landroidx/paging/PageEvent$Insert;->pages:Ljava/util/List;

    iput p3, p0, Landroidx/paging/PageEvent$Insert;->placeholdersBefore:I

    iput p4, p0, Landroidx/paging/PageEvent$Insert;->placeholdersAfter:I

    iput-object p5, p0, Landroidx/paging/PageEvent$Insert;->sourceLoadStates:Landroidx/paging/LoadStates;

    iput-object p6, p0, Landroidx/paging/PageEvent$Insert;->mediatorLoadStates:Landroidx/paging/LoadStates;

    sget-object p0, Landroidx/paging/LoadType;->APPEND:Landroidx/paging/LoadType;

    if-eq p1, p0, :cond_1

    if-ltz p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Prepend insert defining placeholdersBefore must be > 0, but was "

    invoke-static {p3, p0}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc9;->f(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Landroidx/paging/LoadType;->PREPEND:Landroidx/paging/LoadType;

    if-eq p1, p0, :cond_3

    if-ltz p4, :cond_2

    goto :goto_1

    :cond_2
    const-string p0, "Append insert defining placeholdersAfter must be > 0, but was "

    invoke-static {p4, p0}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc9;->f(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :cond_3
    :goto_1
    sget-object p0, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    if-ne p1, p0, :cond_5

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    const-string p0, "Cannot create a REFRESH Insert event with no TransformablePages as this could permanently stall pagination. Note that this check does not prevent empty LoadResults and is instead usually an indication of an internal error in Paging itself."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_5
    :goto_2
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/paging/LoadType;Ljava/util/List;IILandroidx/paging/LoadStates;Landroidx/paging/LoadStates;ILjh2;)V
    .locals 7

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    const/4 p6, 0x0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 74
    invoke-direct/range {v0 .. v6}, Landroidx/paging/PageEvent$Insert;-><init>(Landroidx/paging/LoadType;Ljava/util/List;IILandroidx/paging/LoadStates;Landroidx/paging/LoadStates;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/paging/LoadType;Ljava/util/List;IILandroidx/paging/LoadStates;Landroidx/paging/LoadStates;Ljh2;)V
    .locals 0

    .line 73
    invoke-direct/range {p0 .. p6}, Landroidx/paging/PageEvent$Insert;-><init>(Landroidx/paging/LoadType;Ljava/util/List;IILandroidx/paging/LoadStates;Landroidx/paging/LoadStates;)V

    return-void
.end method

.method public static synthetic copy$default(Landroidx/paging/PageEvent$Insert;Landroidx/paging/LoadType;Ljava/util/List;IILandroidx/paging/LoadStates;Landroidx/paging/LoadStates;ILjava/lang/Object;)Landroidx/paging/PageEvent$Insert;
    .locals 0

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Landroidx/paging/PageEvent$Insert;->loadType:Landroidx/paging/LoadType;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Landroidx/paging/PageEvent$Insert;->pages:Ljava/util/List;

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    iget p3, p0, Landroidx/paging/PageEvent$Insert;->placeholdersBefore:I

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    iget p4, p0, Landroidx/paging/PageEvent$Insert;->placeholdersAfter:I

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    iget-object p5, p0, Landroidx/paging/PageEvent$Insert;->sourceLoadStates:Landroidx/paging/LoadStates;

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    iget-object p6, p0, Landroidx/paging/PageEvent$Insert;->mediatorLoadStates:Landroidx/paging/LoadStates;

    :cond_5
    move-object p7, p5

    move-object p8, p6

    move p5, p3

    move p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p8}, Landroidx/paging/PageEvent$Insert;->copy(Landroidx/paging/LoadType;Ljava/util/List;IILandroidx/paging/LoadStates;Landroidx/paging/LoadStates;)Landroidx/paging/PageEvent$Insert;

    move-result-object p0

    return-object p0
.end method

.method private final mapPages(Lnl3;)Landroidx/paging/PageEvent$Insert;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lnl3<",
            "-",
            "Landroidx/paging/TransformablePage<",
            "TT;>;",
            "Landroidx/paging/TransformablePage<",
            "TR;>;>;)",
            "Landroidx/paging/PageEvent$Insert<",
            "TR;>;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/paging/PageEvent$Insert;->getLoadType()Landroidx/paging/LoadType;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/paging/PageEvent$Insert;->getPages()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/paging/PageEvent$Insert;->getPlaceholdersBefore()I

    move-result v3

    invoke-virtual {p0}, Landroidx/paging/PageEvent$Insert;->getPlaceholdersAfter()I

    move-result v4

    invoke-virtual {p0}, Landroidx/paging/PageEvent$Insert;->getSourceLoadStates()Landroidx/paging/LoadStates;

    move-result-object v5

    invoke-virtual {p0}, Landroidx/paging/PageEvent$Insert;->getMediatorLoadStates()Landroidx/paging/LoadStates;

    move-result-object v6

    new-instance v0, Landroidx/paging/PageEvent$Insert;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroidx/paging/PageEvent$Insert;-><init>(Landroidx/paging/LoadType;Ljava/util/List;IILandroidx/paging/LoadStates;Landroidx/paging/LoadStates;Ljh2;)V

    return-object v0
.end method


# virtual methods
.method public final component1()Landroidx/paging/LoadType;
    .locals 0

    iget-object p0, p0, Landroidx/paging/PageEvent$Insert;->loadType:Landroidx/paging/LoadType;

    return-object p0
.end method

.method public final component2()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/paging/TransformablePage<",
            "TT;>;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/paging/PageEvent$Insert;->pages:Ljava/util/List;

    return-object p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Landroidx/paging/PageEvent$Insert;->placeholdersBefore:I

    return p0
.end method

.method public final component4()I
    .locals 0

    iget p0, p0, Landroidx/paging/PageEvent$Insert;->placeholdersAfter:I

    return p0
.end method

.method public final component5()Landroidx/paging/LoadStates;
    .locals 0

    iget-object p0, p0, Landroidx/paging/PageEvent$Insert;->sourceLoadStates:Landroidx/paging/LoadStates;

    return-object p0
.end method

.method public final component6()Landroidx/paging/LoadStates;
    .locals 0

    iget-object p0, p0, Landroidx/paging/PageEvent$Insert;->mediatorLoadStates:Landroidx/paging/LoadStates;

    return-object p0
.end method

.method public final copy(Landroidx/paging/LoadType;Ljava/util/List;IILandroidx/paging/LoadStates;Landroidx/paging/LoadStates;)Landroidx/paging/PageEvent$Insert;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/LoadType;",
            "Ljava/util/List<",
            "Landroidx/paging/TransformablePage<",
            "TT;>;>;II",
            "Landroidx/paging/LoadStates;",
            "Landroidx/paging/LoadStates;",
            ")",
            "Landroidx/paging/PageEvent$Insert<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroidx/paging/PageEvent$Insert;

    invoke-direct/range {p0 .. p6}, Landroidx/paging/PageEvent$Insert;-><init>(Landroidx/paging/LoadType;Ljava/util/List;IILandroidx/paging/LoadStates;Landroidx/paging/LoadStates;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/paging/PageEvent$Insert;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/paging/PageEvent$Insert;

    iget-object v1, p0, Landroidx/paging/PageEvent$Insert;->loadType:Landroidx/paging/LoadType;

    iget-object v3, p1, Landroidx/paging/PageEvent$Insert;->loadType:Landroidx/paging/LoadType;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/paging/PageEvent$Insert;->pages:Ljava/util/List;

    iget-object v3, p1, Landroidx/paging/PageEvent$Insert;->pages:Ljava/util/List;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Landroidx/paging/PageEvent$Insert;->placeholdersBefore:I

    iget v3, p1, Landroidx/paging/PageEvent$Insert;->placeholdersBefore:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Landroidx/paging/PageEvent$Insert;->placeholdersAfter:I

    iget v3, p1, Landroidx/paging/PageEvent$Insert;->placeholdersAfter:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Landroidx/paging/PageEvent$Insert;->sourceLoadStates:Landroidx/paging/LoadStates;

    iget-object v3, p1, Landroidx/paging/PageEvent$Insert;->sourceLoadStates:Landroidx/paging/LoadStates;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Landroidx/paging/PageEvent$Insert;->mediatorLoadStates:Landroidx/paging/LoadStates;

    iget-object p1, p1, Landroidx/paging/PageEvent$Insert;->mediatorLoadStates:Landroidx/paging/LoadStates;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public filter(Lbm3;Le02;)Ljava/lang/Object;
    .locals 17
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

    move-object/from16 v0, p2

    instance-of v1, v0, Landroidx/paging/PageEvent$Insert$filter$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroidx/paging/PageEvent$Insert$filter$1;

    iget v2, v1, Landroidx/paging/PageEvent$Insert$filter$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Landroidx/paging/PageEvent$Insert$filter$1;->label:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/paging/PageEvent$Insert$filter$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Landroidx/paging/PageEvent$Insert$filter$1;-><init>(Landroidx/paging/PageEvent$Insert;Le02;)V

    :goto_0
    iget-object v0, v1, Landroidx/paging/PageEvent$Insert$filter$1;->result:Ljava/lang/Object;

    sget-object v3, La32;->COROUTINE_SUSPENDED:La32;

    iget v4, v1, Landroidx/paging/PageEvent$Insert$filter$1;->label:I

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v6, :cond_1

    iget v2, v1, Landroidx/paging/PageEvent$Insert$filter$1;->I$1:I

    iget v4, v1, Landroidx/paging/PageEvent$Insert$filter$1;->I$0:I

    iget-object v7, v1, Landroidx/paging/PageEvent$Insert$filter$1;->L$10:Ljava/lang/Object;

    check-cast v7, Ljava/util/Collection;

    iget-object v8, v1, Landroidx/paging/PageEvent$Insert$filter$1;->L$9:Ljava/lang/Object;

    iget-object v9, v1, Landroidx/paging/PageEvent$Insert$filter$1;->L$8:Ljava/lang/Object;

    check-cast v9, Ljava/util/Iterator;

    iget-object v10, v1, Landroidx/paging/PageEvent$Insert$filter$1;->L$7:Ljava/lang/Object;

    check-cast v10, Ljava/util/List;

    iget-object v11, v1, Landroidx/paging/PageEvent$Insert$filter$1;->L$6:Ljava/lang/Object;

    check-cast v11, Ljava/util/List;

    iget-object v12, v1, Landroidx/paging/PageEvent$Insert$filter$1;->L$5:Ljava/lang/Object;

    check-cast v12, Landroidx/paging/TransformablePage;

    iget-object v13, v1, Landroidx/paging/PageEvent$Insert$filter$1;->L$4:Ljava/lang/Object;

    check-cast v13, Ljava/util/Iterator;

    iget-object v14, v1, Landroidx/paging/PageEvent$Insert$filter$1;->L$3:Ljava/lang/Object;

    check-cast v14, Ljava/util/Collection;

    iget-object v15, v1, Landroidx/paging/PageEvent$Insert$filter$1;->L$2:Ljava/lang/Object;

    check-cast v15, Landroidx/paging/LoadType;

    const/16 p2, 0x0

    iget-object v5, v1, Landroidx/paging/PageEvent$Insert$filter$1;->L$1:Ljava/lang/Object;

    check-cast v5, Landroidx/paging/PageEvent$Insert;

    iget-object v6, v1, Landroidx/paging/PageEvent$Insert$filter$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lbm3;

    invoke-static {v0}, Lr57;->b(Ljava/lang/Object;)V

    move-object/from16 v16, v11

    move v11, v4

    move-object v4, v13

    move-object v13, v8

    move-object/from16 v8, v16

    goto/16 :goto_3

    :cond_1
    const/16 p2, 0x0

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object p2

    :cond_2
    const/16 p2, 0x0

    invoke-static {v0}, Lr57;->b(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroidx/paging/PageEvent$Insert;->getLoadType()Landroidx/paging/LoadType;

    move-result-object v0

    invoke-virtual {v2}, Landroidx/paging/PageEvent$Insert;->getPages()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v4, v6}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v6, v5

    move-object v5, v0

    move-object/from16 v0, p1

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/paging/TransformablePage;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7}, Landroidx/paging/TransformablePage;->getData()Ljava/util/List;

    move-result-object v10

    check-cast v10, Ljava/lang/Iterable;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v11, 0x0

    move-object v12, v10

    move-object v10, v9

    move-object v9, v12

    move-object v12, v7

    move-object v7, v6

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v14, v11, 0x1

    if-ltz v11, :cond_6

    iput-object v0, v1, Landroidx/paging/PageEvent$Insert$filter$1;->L$0:Ljava/lang/Object;

    iput-object v2, v1, Landroidx/paging/PageEvent$Insert$filter$1;->L$1:Ljava/lang/Object;

    iput-object v5, v1, Landroidx/paging/PageEvent$Insert$filter$1;->L$2:Ljava/lang/Object;

    iput-object v6, v1, Landroidx/paging/PageEvent$Insert$filter$1;->L$3:Ljava/lang/Object;

    iput-object v4, v1, Landroidx/paging/PageEvent$Insert$filter$1;->L$4:Ljava/lang/Object;

    iput-object v12, v1, Landroidx/paging/PageEvent$Insert$filter$1;->L$5:Ljava/lang/Object;

    iput-object v8, v1, Landroidx/paging/PageEvent$Insert$filter$1;->L$6:Ljava/lang/Object;

    iput-object v10, v1, Landroidx/paging/PageEvent$Insert$filter$1;->L$7:Ljava/lang/Object;

    iput-object v9, v1, Landroidx/paging/PageEvent$Insert$filter$1;->L$8:Ljava/lang/Object;

    iput-object v13, v1, Landroidx/paging/PageEvent$Insert$filter$1;->L$9:Ljava/lang/Object;

    iput-object v7, v1, Landroidx/paging/PageEvent$Insert$filter$1;->L$10:Ljava/lang/Object;

    iput v14, v1, Landroidx/paging/PageEvent$Insert$filter$1;->I$0:I

    iput v11, v1, Landroidx/paging/PageEvent$Insert$filter$1;->I$1:I

    const/4 v15, 0x1

    iput v15, v1, Landroidx/paging/PageEvent$Insert$filter$1;->label:I

    invoke-interface {v0, v13, v1}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-ne v15, v3, :cond_3

    return-object v3

    :cond_3
    move-object/from16 v16, v6

    move-object v6, v0

    move-object v0, v15

    move-object v15, v5

    move-object v5, v2

    move v2, v11

    move v11, v14

    move-object/from16 v14, v16

    :goto_3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v12}, Landroidx/paging/TransformablePage;->getHintOriginalIndices()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v2

    :cond_4
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    move-object v2, v5

    move-object v0, v6

    move-object v6, v14

    move-object v5, v15

    goto :goto_2

    :cond_6
    invoke-static {}, Lu96;->o()V

    throw p2

    :cond_7
    new-instance v9, Landroidx/paging/TransformablePage;

    invoke-virtual {v12}, Landroidx/paging/TransformablePage;->getOriginalPageOffsets()[I

    move-result-object v11

    invoke-virtual {v12}, Landroidx/paging/TransformablePage;->getHintOriginalPageOffset()I

    move-result v12

    invoke-direct {v9, v11, v8, v12, v10}, Landroidx/paging/TransformablePage;-><init>([ILjava/util/List;ILjava/util/List;)V

    invoke-interface {v7, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_8
    check-cast v6, Ljava/util/List;

    invoke-virtual {v2}, Landroidx/paging/PageEvent$Insert;->getPlaceholdersBefore()I

    move-result v7

    invoke-virtual {v2}, Landroidx/paging/PageEvent$Insert;->getPlaceholdersAfter()I

    move-result v8

    invoke-virtual {v2}, Landroidx/paging/PageEvent$Insert;->getSourceLoadStates()Landroidx/paging/LoadStates;

    move-result-object v9

    invoke-virtual {v2}, Landroidx/paging/PageEvent$Insert;->getMediatorLoadStates()Landroidx/paging/LoadStates;

    move-result-object v10

    new-instance v4, Landroidx/paging/PageEvent$Insert;

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v11}, Landroidx/paging/PageEvent$Insert;-><init>(Landroidx/paging/LoadType;Ljava/util/List;IILandroidx/paging/LoadStates;Landroidx/paging/LoadStates;Ljh2;)V

    return-object v4
.end method

.method public flatMap(Lbm3;Le02;)Ljava/lang/Object;
    .locals 17
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

    move-object/from16 v0, p2

    instance-of v1, v0, Landroidx/paging/PageEvent$Insert$flatMap$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroidx/paging/PageEvent$Insert$flatMap$1;

    iget v2, v1, Landroidx/paging/PageEvent$Insert$flatMap$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Landroidx/paging/PageEvent$Insert$flatMap$1;->label:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/paging/PageEvent$Insert$flatMap$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Landroidx/paging/PageEvent$Insert$flatMap$1;-><init>(Landroidx/paging/PageEvent$Insert;Le02;)V

    :goto_0
    iget-object v0, v1, Landroidx/paging/PageEvent$Insert$flatMap$1;->result:Ljava/lang/Object;

    sget-object v3, La32;->COROUTINE_SUSPENDED:La32;

    iget v4, v1, Landroidx/paging/PageEvent$Insert$flatMap$1;->label:I

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v6, :cond_1

    iget v2, v1, Landroidx/paging/PageEvent$Insert$flatMap$1;->I$1:I

    iget v4, v1, Landroidx/paging/PageEvent$Insert$flatMap$1;->I$0:I

    iget-object v7, v1, Landroidx/paging/PageEvent$Insert$flatMap$1;->L$10:Ljava/lang/Object;

    check-cast v7, Ljava/util/Collection;

    iget-object v8, v1, Landroidx/paging/PageEvent$Insert$flatMap$1;->L$9:Ljava/lang/Object;

    check-cast v8, Ljava/util/Collection;

    iget-object v9, v1, Landroidx/paging/PageEvent$Insert$flatMap$1;->L$8:Ljava/lang/Object;

    check-cast v9, Ljava/util/Iterator;

    iget-object v10, v1, Landroidx/paging/PageEvent$Insert$flatMap$1;->L$7:Ljava/lang/Object;

    check-cast v10, Ljava/util/List;

    iget-object v11, v1, Landroidx/paging/PageEvent$Insert$flatMap$1;->L$6:Ljava/lang/Object;

    check-cast v11, Ljava/util/List;

    iget-object v12, v1, Landroidx/paging/PageEvent$Insert$flatMap$1;->L$5:Ljava/lang/Object;

    check-cast v12, Landroidx/paging/TransformablePage;

    iget-object v13, v1, Landroidx/paging/PageEvent$Insert$flatMap$1;->L$4:Ljava/lang/Object;

    check-cast v13, Ljava/util/Iterator;

    iget-object v14, v1, Landroidx/paging/PageEvent$Insert$flatMap$1;->L$3:Ljava/lang/Object;

    check-cast v14, Ljava/util/Collection;

    iget-object v15, v1, Landroidx/paging/PageEvent$Insert$flatMap$1;->L$2:Ljava/lang/Object;

    check-cast v15, Landroidx/paging/LoadType;

    const/16 p2, 0x0

    iget-object v5, v1, Landroidx/paging/PageEvent$Insert$flatMap$1;->L$1:Ljava/lang/Object;

    check-cast v5, Landroidx/paging/PageEvent$Insert;

    iget-object v6, v1, Landroidx/paging/PageEvent$Insert$flatMap$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lbm3;

    invoke-static {v0}, Lr57;->b(Ljava/lang/Object;)V

    move-object/from16 v16, v13

    move v13, v4

    move-object/from16 v4, v16

    move-object/from16 v16, v12

    move-object v12, v10

    move-object v10, v9

    move-object v9, v11

    move v11, v2

    const/4 v2, 0x1

    goto/16 :goto_3

    :cond_1
    const/16 p2, 0x0

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object p2

    :cond_2
    const/16 p2, 0x0

    invoke-static {v0}, Lr57;->b(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroidx/paging/PageEvent$Insert;->getLoadType()Landroidx/paging/LoadType;

    move-result-object v0

    invoke-virtual {v2}, Landroidx/paging/PageEvent$Insert;->getPages()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v4, v6}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v6, v5

    move-object v5, v0

    move-object/from16 v0, p1

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/paging/TransformablePage;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7}, Landroidx/paging/TransformablePage;->getData()Ljava/util/List;

    move-result-object v10

    check-cast v10, Ljava/lang/Iterable;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v11, 0x0

    move-object v12, v10

    move-object v10, v9

    move-object v9, v12

    move-object v12, v7

    move-object v7, v6

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v14, v11, 0x1

    if-ltz v11, :cond_6

    move-object v15, v8

    check-cast v15, Ljava/util/Collection;

    iput-object v0, v1, Landroidx/paging/PageEvent$Insert$flatMap$1;->L$0:Ljava/lang/Object;

    iput-object v2, v1, Landroidx/paging/PageEvent$Insert$flatMap$1;->L$1:Ljava/lang/Object;

    iput-object v5, v1, Landroidx/paging/PageEvent$Insert$flatMap$1;->L$2:Ljava/lang/Object;

    iput-object v6, v1, Landroidx/paging/PageEvent$Insert$flatMap$1;->L$3:Ljava/lang/Object;

    iput-object v4, v1, Landroidx/paging/PageEvent$Insert$flatMap$1;->L$4:Ljava/lang/Object;

    iput-object v12, v1, Landroidx/paging/PageEvent$Insert$flatMap$1;->L$5:Ljava/lang/Object;

    iput-object v8, v1, Landroidx/paging/PageEvent$Insert$flatMap$1;->L$6:Ljava/lang/Object;

    iput-object v10, v1, Landroidx/paging/PageEvent$Insert$flatMap$1;->L$7:Ljava/lang/Object;

    iput-object v9, v1, Landroidx/paging/PageEvent$Insert$flatMap$1;->L$8:Ljava/lang/Object;

    iput-object v15, v1, Landroidx/paging/PageEvent$Insert$flatMap$1;->L$9:Ljava/lang/Object;

    iput-object v7, v1, Landroidx/paging/PageEvent$Insert$flatMap$1;->L$10:Ljava/lang/Object;

    iput v14, v1, Landroidx/paging/PageEvent$Insert$flatMap$1;->I$0:I

    iput v11, v1, Landroidx/paging/PageEvent$Insert$flatMap$1;->I$1:I

    move-object/from16 p0, v2

    const/4 v2, 0x1

    iput v2, v1, Landroidx/paging/PageEvent$Insert$flatMap$1;->label:I

    invoke-interface {v0, v13, v1}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v3, :cond_3

    return-object v3

    :cond_3
    move-object/from16 v16, v6

    move-object v6, v0

    move-object v0, v13

    move v13, v14

    move-object/from16 v14, v16

    move-object/from16 v16, v12

    move-object v12, v10

    move-object v10, v9

    move-object v9, v8

    move-object v8, v15

    move-object v15, v5

    move-object/from16 v5, p0

    :goto_3
    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0, v8}, Lnn1;->s(Ljava/lang/Iterable;Ljava/util/Collection;)V

    invoke-virtual/range {v16 .. v16}, Landroidx/paging/TransformablePage;->getHintOriginalIndices()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v11

    :cond_4
    :goto_4
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_5

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v11}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    move-object v2, v5

    move-object v0, v6

    move-object v8, v9

    move-object v9, v10

    move-object v10, v12

    move v11, v13

    move-object v6, v14

    move-object v5, v15

    move-object/from16 v12, v16

    goto :goto_2

    :cond_6
    invoke-static {}, Lu96;->o()V

    throw p2

    :cond_7
    move-object/from16 p0, v2

    const/4 v2, 0x1

    new-instance v9, Landroidx/paging/TransformablePage;

    invoke-virtual {v12}, Landroidx/paging/TransformablePage;->getOriginalPageOffsets()[I

    move-result-object v11

    invoke-virtual {v12}, Landroidx/paging/TransformablePage;->getHintOriginalPageOffset()I

    move-result v12

    invoke-direct {v9, v11, v8, v12, v10}, Landroidx/paging/TransformablePage;-><init>([ILjava/util/List;ILjava/util/List;)V

    invoke-interface {v7, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, p0

    goto/16 :goto_1

    :cond_8
    move-object v0, v2

    check-cast v6, Ljava/util/List;

    invoke-virtual {v0}, Landroidx/paging/PageEvent$Insert;->getPlaceholdersBefore()I

    move-result v7

    invoke-virtual {v0}, Landroidx/paging/PageEvent$Insert;->getPlaceholdersAfter()I

    move-result v8

    invoke-virtual {v0}, Landroidx/paging/PageEvent$Insert;->getSourceLoadStates()Landroidx/paging/LoadStates;

    move-result-object v9

    invoke-virtual {v0}, Landroidx/paging/PageEvent$Insert;->getMediatorLoadStates()Landroidx/paging/LoadStates;

    move-result-object v10

    new-instance v4, Landroidx/paging/PageEvent$Insert;

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v11}, Landroidx/paging/PageEvent$Insert;-><init>(Landroidx/paging/LoadType;Ljava/util/List;IILandroidx/paging/LoadStates;Landroidx/paging/LoadStates;Ljh2;)V

    return-object v4
.end method

.method public final getLoadType()Landroidx/paging/LoadType;
    .locals 0

    iget-object p0, p0, Landroidx/paging/PageEvent$Insert;->loadType:Landroidx/paging/LoadType;

    return-object p0
.end method

.method public final getMediatorLoadStates()Landroidx/paging/LoadStates;
    .locals 0

    iget-object p0, p0, Landroidx/paging/PageEvent$Insert;->mediatorLoadStates:Landroidx/paging/LoadStates;

    return-object p0
.end method

.method public final getPages()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/paging/TransformablePage<",
            "TT;>;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/paging/PageEvent$Insert;->pages:Ljava/util/List;

    return-object p0
.end method

.method public final getPlaceholdersAfter()I
    .locals 0

    iget p0, p0, Landroidx/paging/PageEvent$Insert;->placeholdersAfter:I

    return p0
.end method

.method public final getPlaceholdersBefore()I
    .locals 0

    iget p0, p0, Landroidx/paging/PageEvent$Insert;->placeholdersBefore:I

    return p0
.end method

.method public final getSourceLoadStates()Landroidx/paging/LoadStates;
    .locals 0

    iget-object p0, p0, Landroidx/paging/PageEvent$Insert;->sourceLoadStates:Landroidx/paging/LoadStates;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/paging/PageEvent$Insert;->loadType:Landroidx/paging/LoadType;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/paging/PageEvent$Insert;->pages:Ljava/util/List;

    invoke-static {v2, v0, v1}, Le2;->b(Ljava/util/List;II)I

    move-result v0

    iget v2, p0, Landroidx/paging/PageEvent$Insert;->placeholdersBefore:I

    invoke-static {v2, v0, v1}, Lej0;->b(III)I

    move-result v0

    iget v2, p0, Landroidx/paging/PageEvent$Insert;->placeholdersAfter:I

    invoke-static {v2, v0, v1}, Lej0;->b(III)I

    move-result v0

    iget-object v2, p0, Landroidx/paging/PageEvent$Insert;->sourceLoadStates:Landroidx/paging/LoadStates;

    invoke-virtual {v2}, Landroidx/paging/LoadStates;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object p0, p0, Landroidx/paging/PageEvent$Insert;->mediatorLoadStates:Landroidx/paging/LoadStates;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/paging/LoadStates;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v2, p0

    return v2
.end method

.method public map(Lbm3;Le02;)Ljava/lang/Object;
    .locals 17
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

    move-object/from16 v0, p2

    instance-of v1, v0, Landroidx/paging/PageEvent$Insert$map$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroidx/paging/PageEvent$Insert$map$1;

    iget v2, v1, Landroidx/paging/PageEvent$Insert$map$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Landroidx/paging/PageEvent$Insert$map$1;->label:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/paging/PageEvent$Insert$map$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Landroidx/paging/PageEvent$Insert$map$1;-><init>(Landroidx/paging/PageEvent$Insert;Le02;)V

    :goto_0
    iget-object v0, v1, Landroidx/paging/PageEvent$Insert$map$1;->result:Ljava/lang/Object;

    sget-object v3, La32;->COROUTINE_SUSPENDED:La32;

    iget v4, v1, Landroidx/paging/PageEvent$Insert$map$1;->label:I

    const/16 v5, 0xa

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v6, :cond_1

    iget-object v2, v1, Landroidx/paging/PageEvent$Insert$map$1;->L$10:Ljava/lang/Object;

    check-cast v2, Ljava/util/Collection;

    iget-object v4, v1, Landroidx/paging/PageEvent$Insert$map$1;->L$9:Ljava/lang/Object;

    check-cast v4, Ljava/util/Collection;

    iget-object v7, v1, Landroidx/paging/PageEvent$Insert$map$1;->L$8:Ljava/lang/Object;

    check-cast v7, Ljava/util/Iterator;

    iget-object v8, v1, Landroidx/paging/PageEvent$Insert$map$1;->L$7:Ljava/lang/Object;

    check-cast v8, Ljava/util/Collection;

    iget-object v9, v1, Landroidx/paging/PageEvent$Insert$map$1;->L$6:Ljava/lang/Object;

    check-cast v9, [I

    iget-object v10, v1, Landroidx/paging/PageEvent$Insert$map$1;->L$5:Ljava/lang/Object;

    check-cast v10, Landroidx/paging/TransformablePage;

    iget-object v11, v1, Landroidx/paging/PageEvent$Insert$map$1;->L$4:Ljava/lang/Object;

    check-cast v11, Ljava/util/Iterator;

    iget-object v12, v1, Landroidx/paging/PageEvent$Insert$map$1;->L$3:Ljava/lang/Object;

    check-cast v12, Ljava/util/Collection;

    iget-object v13, v1, Landroidx/paging/PageEvent$Insert$map$1;->L$2:Ljava/lang/Object;

    check-cast v13, Landroidx/paging/LoadType;

    iget-object v14, v1, Landroidx/paging/PageEvent$Insert$map$1;->L$1:Ljava/lang/Object;

    check-cast v14, Landroidx/paging/PageEvent$Insert;

    iget-object v15, v1, Landroidx/paging/PageEvent$Insert$map$1;->L$0:Ljava/lang/Object;

    check-cast v15, Lbm3;

    invoke-static {v0}, Lr57;->b(Ljava/lang/Object;)V

    move-object/from16 v16, v11

    move-object v11, v7

    move-object/from16 v7, v16

    move-object/from16 v16, v12

    move-object v12, v8

    move-object/from16 v8, v16

    move-object/from16 v16, v10

    move-object v10, v9

    move-object v9, v13

    move-object/from16 v13, v16

    goto/16 :goto_3

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_2
    invoke-static {v0}, Lr57;->b(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroidx/paging/PageEvent$Insert;->getLoadType()Landroidx/paging/LoadType;

    move-result-object v0

    invoke-virtual {v2}, Landroidx/paging/PageEvent$Insert;->getPages()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v4, v5}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v8, v0

    move-object/from16 v0, p1

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/paging/TransformablePage;

    invoke-virtual {v9}, Landroidx/paging/TransformablePage;->getOriginalPageOffsets()[I

    move-result-object v10

    invoke-virtual {v9}, Landroidx/paging/TransformablePage;->getData()Ljava/util/List;

    move-result-object v11

    check-cast v11, Ljava/lang/Iterable;

    new-instance v12, Ljava/util/ArrayList;

    invoke-static {v11, v5}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-object v13, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v4

    move-object v4, v2

    move-object v2, v8

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    iput-object v0, v1, Landroidx/paging/PageEvent$Insert$map$1;->L$0:Ljava/lang/Object;

    iput-object v4, v1, Landroidx/paging/PageEvent$Insert$map$1;->L$1:Ljava/lang/Object;

    iput-object v9, v1, Landroidx/paging/PageEvent$Insert$map$1;->L$2:Ljava/lang/Object;

    iput-object v8, v1, Landroidx/paging/PageEvent$Insert$map$1;->L$3:Ljava/lang/Object;

    iput-object v7, v1, Landroidx/paging/PageEvent$Insert$map$1;->L$4:Ljava/lang/Object;

    iput-object v13, v1, Landroidx/paging/PageEvent$Insert$map$1;->L$5:Ljava/lang/Object;

    iput-object v10, v1, Landroidx/paging/PageEvent$Insert$map$1;->L$6:Ljava/lang/Object;

    iput-object v12, v1, Landroidx/paging/PageEvent$Insert$map$1;->L$7:Ljava/lang/Object;

    iput-object v11, v1, Landroidx/paging/PageEvent$Insert$map$1;->L$8:Ljava/lang/Object;

    iput-object v12, v1, Landroidx/paging/PageEvent$Insert$map$1;->L$9:Ljava/lang/Object;

    iput-object v2, v1, Landroidx/paging/PageEvent$Insert$map$1;->L$10:Ljava/lang/Object;

    iput v6, v1, Landroidx/paging/PageEvent$Insert$map$1;->label:I

    invoke-interface {v0, v14, v1}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v3, :cond_3

    return-object v3

    :cond_3
    move-object v15, v0

    move-object v0, v14

    move-object v14, v4

    move-object v4, v12

    :goto_3
    invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v4, v14

    move-object v0, v15

    goto :goto_2

    :cond_4
    check-cast v12, Ljava/util/List;

    invoke-virtual {v13}, Landroidx/paging/TransformablePage;->getHintOriginalPageOffset()I

    move-result v11

    invoke-virtual {v13}, Landroidx/paging/TransformablePage;->getHintOriginalIndices()Ljava/util/List;

    move-result-object v13

    new-instance v14, Landroidx/paging/TransformablePage;

    invoke-direct {v14, v10, v12, v11, v13}, Landroidx/paging/TransformablePage;-><init>([ILjava/util/List;ILjava/util/List;)V

    invoke-interface {v2, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v2, v4

    move-object v4, v7

    move-object v7, v8

    move-object v8, v9

    goto :goto_1

    :cond_5
    move-object v9, v7

    check-cast v9, Ljava/util/List;

    invoke-virtual {v2}, Landroidx/paging/PageEvent$Insert;->getPlaceholdersBefore()I

    move-result v10

    invoke-virtual {v2}, Landroidx/paging/PageEvent$Insert;->getPlaceholdersAfter()I

    move-result v11

    invoke-virtual {v2}, Landroidx/paging/PageEvent$Insert;->getSourceLoadStates()Landroidx/paging/LoadStates;

    move-result-object v12

    invoke-virtual {v2}, Landroidx/paging/PageEvent$Insert;->getMediatorLoadStates()Landroidx/paging/LoadStates;

    move-result-object v13

    new-instance v7, Landroidx/paging/PageEvent$Insert;

    const/4 v14, 0x0

    invoke-direct/range {v7 .. v14}, Landroidx/paging/PageEvent$Insert;-><init>(Landroidx/paging/LoadType;Ljava/util/List;IILandroidx/paging/LoadStates;Landroidx/paging/LoadStates;Ljh2;)V

    return-object v7
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Landroidx/paging/PageEvent$Insert;->pages:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/paging/TransformablePage;

    invoke-virtual {v2}, Landroidx/paging/TransformablePage;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/paging/PageEvent$Insert;->placeholdersBefore:I

    const-string v2, "none"

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    iget v4, p0, Landroidx/paging/PageEvent$Insert;->placeholdersAfter:I

    if-eq v4, v3, :cond_2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    :cond_2
    iget-object v3, p0, Landroidx/paging/PageEvent$Insert;->mediatorLoadStates:Landroidx/paging/LoadStates;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "PageEvent.Insert for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Landroidx/paging/PageEvent$Insert;->loadType:Landroidx/paging/LoadType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " items (\n                    |   first item: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/paging/PageEvent$Insert;->pages:Ljava/util/List;

    invoke-static {v1}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/paging/TransformablePage;

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroidx/paging/TransformablePage;->getData()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v1}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v5

    :goto_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n                    |   last item: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/paging/PageEvent$Insert;->pages:Ljava/util/List;

    invoke-static {v1}, Lqn1;->c0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/paging/TransformablePage;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroidx/paging/TransformablePage;->getData()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {v1}, Lqn1;->c0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    :cond_4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n                    |   placeholdersBefore: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n                    |   placeholdersAfter: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n                    |   sourceLoadStates: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/paging/PageEvent$Insert;->sourceLoadStates:Landroidx/paging/LoadStates;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\n                    "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz v3, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "|   mediatorLoadStates: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0xa

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_5
    const-string v0, "|)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lna8;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final transformPages$paging_common(Lnl3;)Landroidx/paging/PageEvent$Insert;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lnl3<",
            "-",
            "Ljava/util/List<",
            "Landroidx/paging/TransformablePage<",
            "TT;>;>;+",
            "Ljava/util/List<",
            "Landroidx/paging/TransformablePage<",
            "TR;>;>;>;)",
            "Landroidx/paging/PageEvent$Insert<",
            "TR;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/paging/PageEvent$Insert;

    invoke-virtual {p0}, Landroidx/paging/PageEvent$Insert;->getLoadType()Landroidx/paging/LoadType;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/paging/PageEvent$Insert;->getPages()Ljava/util/List;

    move-result-object v2

    invoke-interface {p1, v2}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/util/List;

    invoke-virtual {p0}, Landroidx/paging/PageEvent$Insert;->getPlaceholdersBefore()I

    move-result v3

    invoke-virtual {p0}, Landroidx/paging/PageEvent$Insert;->getPlaceholdersAfter()I

    move-result v4

    invoke-virtual {p0}, Landroidx/paging/PageEvent$Insert;->getSourceLoadStates()Landroidx/paging/LoadStates;

    move-result-object v5

    invoke-virtual {p0}, Landroidx/paging/PageEvent$Insert;->getMediatorLoadStates()Landroidx/paging/LoadStates;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroidx/paging/PageEvent$Insert;-><init>(Landroidx/paging/LoadType;Ljava/util/List;IILandroidx/paging/LoadStates;Landroidx/paging/LoadStates;Ljh2;)V

    return-object v0
.end method
