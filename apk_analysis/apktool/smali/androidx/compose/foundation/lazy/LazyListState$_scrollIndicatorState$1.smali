.class public final Landroidx/compose/foundation/lazy/LazyListState$_scrollIndicatorState$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/ScrollIndicatorState;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/LazyListState;-><init>(IILandroidx/compose/foundation/lazy/LazyListPrefetchStrategy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/foundation/lazy/LazyListState;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/LazyListState;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState$_scrollIndicatorState$1;->this$0:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentSize()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListState$_scrollIndicatorState$1;->this$0:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListState;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfoKt;->calculateContentSize(Landroidx/compose/foundation/lazy/LazyListLayoutInfo;)I

    move-result p0

    return p0
.end method

.method public getScrollOffset()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListState$_scrollIndicatorState$1;->this$0:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-static {p0}, Landroidx/compose/foundation/lazy/LazyListState;->access$calculateScrollOffset(Landroidx/compose/foundation/lazy/LazyListState;)I

    move-result p0

    return p0
.end method

.method public getViewportSize()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListState$_scrollIndicatorState$1;->this$0:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListState;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfoKt;->getSingleAxisViewportSize(Landroidx/compose/foundation/lazy/LazyListLayoutInfo;)I

    move-result p0

    return p0
.end method
