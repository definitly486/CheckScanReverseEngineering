.class final Landroidx/compose/foundation/layout/ResolvedGridItemIndicesResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final gridItems:Landroidx/collection/MutableObjectList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableObjectList<",
            "Landroidx/compose/foundation/layout/GridItem;",
            ">;"
        }
    .end annotation
.end field

.field private final gridSize:J


# direct methods
.method private constructor <init>(Landroidx/collection/MutableObjectList;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableObjectList<",
            "Landroidx/compose/foundation/layout/GridItem;",
            ">;J)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/layout/ResolvedGridItemIndicesResult;->gridItems:Landroidx/collection/MutableObjectList;

    iput-wide p2, p0, Landroidx/compose/foundation/layout/ResolvedGridItemIndicesResult;->gridSize:J

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/collection/MutableObjectList;JLjh2;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/layout/ResolvedGridItemIndicesResult;-><init>(Landroidx/collection/MutableObjectList;J)V

    return-void
.end method


# virtual methods
.method public final getGridItems()Landroidx/collection/MutableObjectList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/MutableObjectList<",
            "Landroidx/compose/foundation/layout/GridItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/layout/ResolvedGridItemIndicesResult;->gridItems:Landroidx/collection/MutableObjectList;

    return-object p0
.end method

.method public final getGridSize-YbymL2g()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/layout/ResolvedGridItemIndicesResult;->gridSize:J

    return-wide v0
.end method
