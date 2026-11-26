.class public final Landroidx/compose/foundation/pager/PagerState$_scrollIndicatorState$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/ScrollIndicatorState;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/pager/PagerState;-><init>(IFLandroidx/compose/foundation/lazy/layout/PrefetchScheduler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/foundation/pager/PagerState;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/pager/PagerState;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerState$_scrollIndicatorState$1;->this$0:Landroidx/compose/foundation/pager/PagerState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentSize()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState$_scrollIndicatorState$1;->this$0:Landroidx/compose/foundation/pager/PagerState;

    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerLayoutInfo;

    move-result-object v0

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState$_scrollIndicatorState$1;->this$0:Landroidx/compose/foundation/pager/PagerState;

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getPageCount()I

    move-result p0

    invoke-static {v0, p0}, Landroidx/compose/foundation/pager/PagerLayoutInfoKt;->calculateContentSize(Landroidx/compose/foundation/pager/PagerLayoutInfo;I)I

    move-result p0

    return p0
.end method

.method public getScrollOffset()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState$_scrollIndicatorState$1;->this$0:Landroidx/compose/foundation/pager/PagerState;

    invoke-static {p0}, Landroidx/compose/foundation/pager/PagerState;->access$calculateScrollOffset(Landroidx/compose/foundation/pager/PagerState;)I

    move-result p0

    return p0
.end method

.method public getViewportSize()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState$_scrollIndicatorState$1;->this$0:Landroidx/compose/foundation/pager/PagerState;

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerLayoutInfo;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/foundation/pager/PagerLayoutInfoKt;->getMainAxisViewportSize(Landroidx/compose/foundation/pager/PagerLayoutInfo;)I

    move-result p0

    return p0
.end method
