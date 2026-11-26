.class public final Landroidx/collection/OrderedScatterSetKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EmptyOrderedScatterSet:Landroidx/collection/MutableOrderedScatterSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableOrderedScatterSet<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/collection/MutableOrderedScatterSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/collection/MutableOrderedScatterSet;-><init>(I)V

    sput-object v0, Landroidx/collection/OrderedScatterSetKt;->EmptyOrderedScatterSet:Landroidx/collection/MutableOrderedScatterSet;

    return-void
.end method

.method public static final emptyOrderedScatterSet()Landroidx/collection/OrderedScatterSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Landroidx/collection/OrderedScatterSet<",
            "TE;>;"
        }
    .end annotation

    sget-object v0, Landroidx/collection/OrderedScatterSetKt;->EmptyOrderedScatterSet:Landroidx/collection/MutableOrderedScatterSet;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public static final mutableOrderedScatterSetOf()Landroidx/collection/MutableOrderedScatterSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Landroidx/collection/MutableOrderedScatterSet<",
            "TE;>;"
        }
    .end annotation

    .line 20
    new-instance v0, Landroidx/collection/MutableOrderedScatterSet;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableOrderedScatterSet;-><init>(IILjh2;)V

    return-object v0
.end method

.method public static final mutableOrderedScatterSetOf(Ljava/lang/Object;)Landroidx/collection/MutableOrderedScatterSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Landroidx/collection/MutableOrderedScatterSet<",
            "TE;>;"
        }
    .end annotation

    .line 16
    new-instance v0, Landroidx/collection/MutableOrderedScatterSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/collection/MutableOrderedScatterSet;-><init>(I)V

    invoke-virtual {v0, p0}, Landroidx/collection/MutableOrderedScatterSet;->plusAssign(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final mutableOrderedScatterSetOf(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/collection/MutableOrderedScatterSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;)",
            "Landroidx/collection/MutableOrderedScatterSet<",
            "TE;>;"
        }
    .end annotation

    .line 17
    new-instance v0, Landroidx/collection/MutableOrderedScatterSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/collection/MutableOrderedScatterSet;-><init>(I)V

    .line 18
    invoke-virtual {v0, p0}, Landroidx/collection/MutableOrderedScatterSet;->plusAssign(Ljava/lang/Object;)V

    .line 19
    invoke-virtual {v0, p1}, Landroidx/collection/MutableOrderedScatterSet;->plusAssign(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final mutableOrderedScatterSetOf(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroidx/collection/MutableOrderedScatterSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;)",
            "Landroidx/collection/MutableOrderedScatterSet<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Landroidx/collection/MutableOrderedScatterSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroidx/collection/MutableOrderedScatterSet;-><init>(I)V

    invoke-virtual {v0, p0}, Landroidx/collection/MutableOrderedScatterSet;->plusAssign(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroidx/collection/MutableOrderedScatterSet;->plusAssign(Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Landroidx/collection/MutableOrderedScatterSet;->plusAssign(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final varargs mutableOrderedScatterSetOf([Ljava/lang/Object;)Landroidx/collection/MutableOrderedScatterSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Landroidx/collection/MutableOrderedScatterSet<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    new-instance v0, Landroidx/collection/MutableOrderedScatterSet;

    array-length v1, p0

    invoke-direct {v0, v1}, Landroidx/collection/MutableOrderedScatterSet;-><init>(I)V

    invoke-virtual {v0, p0}, Landroidx/collection/MutableOrderedScatterSet;->plusAssign([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final orderedScatterSetOf()Landroidx/collection/OrderedScatterSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Landroidx/collection/OrderedScatterSet<",
            "TE;>;"
        }
    .end annotation

    .line 16
    sget-object v0, Landroidx/collection/OrderedScatterSetKt;->EmptyOrderedScatterSet:Landroidx/collection/MutableOrderedScatterSet;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public static final orderedScatterSetOf(Ljava/lang/Object;)Landroidx/collection/OrderedScatterSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Landroidx/collection/OrderedScatterSet<",
            "TE;>;"
        }
    .end annotation

    .line 13
    invoke-static {p0}, Landroidx/collection/OrderedScatterSetKt;->mutableOrderedScatterSetOf(Ljava/lang/Object;)Landroidx/collection/MutableOrderedScatterSet;

    move-result-object p0

    return-object p0
.end method

.method public static final orderedScatterSetOf(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/collection/OrderedScatterSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;)",
            "Landroidx/collection/OrderedScatterSet<",
            "TE;>;"
        }
    .end annotation

    .line 14
    invoke-static {p0, p1}, Landroidx/collection/OrderedScatterSetKt;->mutableOrderedScatterSetOf(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/collection/MutableOrderedScatterSet;

    move-result-object p0

    return-object p0
.end method

.method public static final orderedScatterSetOf(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroidx/collection/OrderedScatterSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;)",
            "Landroidx/collection/OrderedScatterSet<",
            "TE;>;"
        }
    .end annotation

    .line 15
    invoke-static {p0, p1, p2}, Landroidx/collection/OrderedScatterSetKt;->mutableOrderedScatterSetOf(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroidx/collection/MutableOrderedScatterSet;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs orderedScatterSetOf([Ljava/lang/Object;)Landroidx/collection/OrderedScatterSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Landroidx/collection/OrderedScatterSet<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/collection/MutableOrderedScatterSet;

    array-length v1, p0

    invoke-direct {v0, v1}, Landroidx/collection/MutableOrderedScatterSet;-><init>(I)V

    invoke-virtual {v0, p0}, Landroidx/collection/MutableOrderedScatterSet;->plusAssign([Ljava/lang/Object;)V

    return-object v0
.end method
