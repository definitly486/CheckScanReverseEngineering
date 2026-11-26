.class public final Landroidx/compose/foundation/lazy/LazyListPrefetchResultScopeImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/lazy/LazyListPrefetchResultScope;


# static fields
.field public static final $stable:I


# instance fields
.field private final index:I

.field private final mainAxisSize:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/lazy/LazyListPrefetchResultScopeImpl;->index:I

    iput p2, p0, Landroidx/compose/foundation/lazy/LazyListPrefetchResultScopeImpl;->mainAxisSize:I

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/LazyListPrefetchResultScopeImpl;->index:I

    return p0
.end method

.method public getMainAxisSize()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/LazyListPrefetchResultScopeImpl;->mainAxisSize:I

    return p0
.end method
