.class public final Landroidx/collection/LongListKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EmptyLongList:Landroidx/collection/LongList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/collection/MutableLongList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/collection/MutableLongList;-><init>(I)V

    sput-object v0, Landroidx/collection/LongListKt;->EmptyLongList:Landroidx/collection/LongList;

    return-void
.end method

.method public static final buildLongList(ILnl3;)Landroidx/collection/LongList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lnl3<",
            "-",
            "Landroidx/collection/MutableLongList;",
            "Lj59;",
            ">;)",
            "Landroidx/collection/LongList;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    new-instance v0, Landroidx/collection/MutableLongList;

    invoke-direct {v0, p0}, Landroidx/collection/MutableLongList;-><init>(I)V

    invoke-interface {p1, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static final buildLongList(Lnl3;)Landroidx/collection/LongList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/collection/MutableLongList;",
            "Lj59;",
            ">;)",
            "Landroidx/collection/LongList;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/collection/MutableLongList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableLongList;-><init>(IILjh2;)V

    invoke-interface {p0, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static final emptyLongList()Landroidx/collection/LongList;
    .locals 1

    sget-object v0, Landroidx/collection/LongListKt;->EmptyLongList:Landroidx/collection/LongList;

    return-object v0
.end method

.method public static final longListOf()Landroidx/collection/LongList;
    .locals 1

    .line 18
    sget-object v0, Landroidx/collection/LongListKt;->EmptyLongList:Landroidx/collection/LongList;

    return-object v0
.end method

.method public static final longListOf(J)Landroidx/collection/LongList;
    .locals 0

    .line 15
    invoke-static {p0, p1}, Landroidx/collection/LongListKt;->mutableLongListOf(J)Landroidx/collection/MutableLongList;

    move-result-object p0

    return-object p0
.end method

.method public static final longListOf(JJ)Landroidx/collection/LongList;
    .locals 0

    .line 16
    invoke-static {p0, p1, p2, p3}, Landroidx/collection/LongListKt;->mutableLongListOf(JJ)Landroidx/collection/MutableLongList;

    move-result-object p0

    return-object p0
.end method

.method public static final longListOf(JJJ)Landroidx/collection/LongList;
    .locals 0

    .line 17
    invoke-static/range {p0 .. p5}, Landroidx/collection/LongListKt;->mutableLongListOf(JJJ)Landroidx/collection/MutableLongList;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs longListOf([J)Landroidx/collection/LongList;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/collection/MutableLongList;

    array-length v1, p0

    invoke-direct {v0, v1}, Landroidx/collection/MutableLongList;-><init>(I)V

    iget v1, v0, Landroidx/collection/LongList;->_size:I

    invoke-virtual {v0, v1, p0}, Landroidx/collection/MutableLongList;->addAll(I[J)Z

    return-object v0
.end method

.method public static final mutableLongListOf()Landroidx/collection/MutableLongList;
    .locals 4

    .line 21
    new-instance v0, Landroidx/collection/MutableLongList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableLongList;-><init>(IILjh2;)V

    return-object v0
.end method

.method public static final mutableLongListOf(J)Landroidx/collection/MutableLongList;
    .locals 2

    .line 16
    new-instance v0, Landroidx/collection/MutableLongList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/collection/MutableLongList;-><init>(I)V

    .line 17
    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableLongList;->add(J)Z

    return-object v0
.end method

.method public static final mutableLongListOf(JJ)Landroidx/collection/MutableLongList;
    .locals 2

    .line 18
    new-instance v0, Landroidx/collection/MutableLongList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/collection/MutableLongList;-><init>(I)V

    .line 19
    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableLongList;->add(J)Z

    .line 20
    invoke-virtual {v0, p2, p3}, Landroidx/collection/MutableLongList;->add(J)Z

    return-object v0
.end method

.method public static final mutableLongListOf(JJJ)Landroidx/collection/MutableLongList;
    .locals 2

    new-instance v0, Landroidx/collection/MutableLongList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroidx/collection/MutableLongList;-><init>(I)V

    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableLongList;->add(J)Z

    invoke-virtual {v0, p2, p3}, Landroidx/collection/MutableLongList;->add(J)Z

    invoke-virtual {v0, p4, p5}, Landroidx/collection/MutableLongList;->add(J)Z

    return-object v0
.end method

.method public static final varargs mutableLongListOf([J)Landroidx/collection/MutableLongList;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    new-instance v0, Landroidx/collection/MutableLongList;

    array-length v1, p0

    invoke-direct {v0, v1}, Landroidx/collection/MutableLongList;-><init>(I)V

    .line 23
    iget v1, v0, Landroidx/collection/LongList;->_size:I

    invoke-virtual {v0, v1, p0}, Landroidx/collection/MutableLongList;->addAll(I[J)Z

    return-object v0
.end method
