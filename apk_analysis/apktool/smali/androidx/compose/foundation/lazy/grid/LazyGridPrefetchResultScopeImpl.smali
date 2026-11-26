.class public final Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchResultScopeImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchResultScope;


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final lineIndex:I

.field private final mainAxisSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchResultScopeImpl;->lineIndex:I

    iput-object p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchResultScopeImpl;->mainAxisSizes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getLineIndex()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchResultScopeImpl;->lineIndex:I

    return p0
.end method

.method public getLineItemCount()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchResultScopeImpl;->mainAxisSizes:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getMainAxisSize(I)I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchResultScopeImpl;->mainAxisSizes:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method
