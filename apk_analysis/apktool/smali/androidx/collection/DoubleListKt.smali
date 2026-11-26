.class public final Landroidx/collection/DoubleListKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EmptyDoubleList:Landroidx/collection/DoubleList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/collection/MutableDoubleList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/collection/MutableDoubleList;-><init>(I)V

    sput-object v0, Landroidx/collection/DoubleListKt;->EmptyDoubleList:Landroidx/collection/DoubleList;

    return-void
.end method

.method public static final buildDoubleList(ILnl3;)Landroidx/collection/DoubleList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lnl3<",
            "-",
            "Landroidx/collection/MutableDoubleList;",
            "Lj59;",
            ">;)",
            "Landroidx/collection/DoubleList;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    new-instance v0, Landroidx/collection/MutableDoubleList;

    invoke-direct {v0, p0}, Landroidx/collection/MutableDoubleList;-><init>(I)V

    invoke-interface {p1, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static final buildDoubleList(Lnl3;)Landroidx/collection/DoubleList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/collection/MutableDoubleList;",
            "Lj59;",
            ">;)",
            "Landroidx/collection/DoubleList;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/collection/MutableDoubleList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableDoubleList;-><init>(IILjh2;)V

    invoke-interface {p0, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static final doubleListOf()Landroidx/collection/DoubleList;
    .locals 1

    .line 18
    sget-object v0, Landroidx/collection/DoubleListKt;->EmptyDoubleList:Landroidx/collection/DoubleList;

    return-object v0
.end method

.method public static final doubleListOf(D)Landroidx/collection/DoubleList;
    .locals 0

    .line 15
    invoke-static {p0, p1}, Landroidx/collection/DoubleListKt;->mutableDoubleListOf(D)Landroidx/collection/MutableDoubleList;

    move-result-object p0

    return-object p0
.end method

.method public static final doubleListOf(DD)Landroidx/collection/DoubleList;
    .locals 0

    .line 16
    invoke-static {p0, p1, p2, p3}, Landroidx/collection/DoubleListKt;->mutableDoubleListOf(DD)Landroidx/collection/MutableDoubleList;

    move-result-object p0

    return-object p0
.end method

.method public static final doubleListOf(DDD)Landroidx/collection/DoubleList;
    .locals 0

    .line 17
    invoke-static/range {p0 .. p5}, Landroidx/collection/DoubleListKt;->mutableDoubleListOf(DDD)Landroidx/collection/MutableDoubleList;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs doubleListOf([D)Landroidx/collection/DoubleList;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/collection/MutableDoubleList;

    array-length v1, p0

    invoke-direct {v0, v1}, Landroidx/collection/MutableDoubleList;-><init>(I)V

    iget v1, v0, Landroidx/collection/DoubleList;->_size:I

    invoke-virtual {v0, v1, p0}, Landroidx/collection/MutableDoubleList;->addAll(I[D)Z

    return-object v0
.end method

.method public static final emptyDoubleList()Landroidx/collection/DoubleList;
    .locals 1

    sget-object v0, Landroidx/collection/DoubleListKt;->EmptyDoubleList:Landroidx/collection/DoubleList;

    return-object v0
.end method

.method public static final mutableDoubleListOf()Landroidx/collection/MutableDoubleList;
    .locals 4

    .line 21
    new-instance v0, Landroidx/collection/MutableDoubleList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableDoubleList;-><init>(IILjh2;)V

    return-object v0
.end method

.method public static final mutableDoubleListOf(D)Landroidx/collection/MutableDoubleList;
    .locals 2

    .line 16
    new-instance v0, Landroidx/collection/MutableDoubleList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/collection/MutableDoubleList;-><init>(I)V

    .line 17
    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableDoubleList;->add(D)Z

    return-object v0
.end method

.method public static final mutableDoubleListOf(DD)Landroidx/collection/MutableDoubleList;
    .locals 2

    .line 18
    new-instance v0, Landroidx/collection/MutableDoubleList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/collection/MutableDoubleList;-><init>(I)V

    .line 19
    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableDoubleList;->add(D)Z

    .line 20
    invoke-virtual {v0, p2, p3}, Landroidx/collection/MutableDoubleList;->add(D)Z

    return-object v0
.end method

.method public static final mutableDoubleListOf(DDD)Landroidx/collection/MutableDoubleList;
    .locals 2

    new-instance v0, Landroidx/collection/MutableDoubleList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroidx/collection/MutableDoubleList;-><init>(I)V

    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableDoubleList;->add(D)Z

    invoke-virtual {v0, p2, p3}, Landroidx/collection/MutableDoubleList;->add(D)Z

    invoke-virtual {v0, p4, p5}, Landroidx/collection/MutableDoubleList;->add(D)Z

    return-object v0
.end method

.method public static final varargs mutableDoubleListOf([D)Landroidx/collection/MutableDoubleList;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    new-instance v0, Landroidx/collection/MutableDoubleList;

    array-length v1, p0

    invoke-direct {v0, v1}, Landroidx/collection/MutableDoubleList;-><init>(I)V

    .line 23
    iget v1, v0, Landroidx/collection/DoubleList;->_size:I

    invoke-virtual {v0, v1, p0}, Landroidx/collection/MutableDoubleList;->addAll(I[D)Z

    return-object v0
.end method
