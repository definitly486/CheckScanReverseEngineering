.class public Lcom/wdullaer/materialdatetimepicker/date/MonthView$MonthViewTouchHelper;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wdullaer/materialdatetimepicker/date/MonthView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MonthViewTouchHelper"
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "dd MMMM yyyy"


# instance fields
.field private final mTempCalendar:Ljava/util/Calendar;

.field private final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/wdullaer/materialdatetimepicker/date/MonthView;


# direct methods
.method public constructor <init>(Lcom/wdullaer/materialdatetimepicker/date/MonthView;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView$MonthViewTouchHelper;->this$0:Lcom/wdullaer/materialdatetimepicker/date/MonthView;

    invoke-direct {p0, p2}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    iget-object p1, p1, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mController:Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;

    invoke-interface {p1}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView$MonthViewTouchHelper;->mTempCalendar:Ljava/util/Calendar;

    return-void
.end method


# virtual methods
.method public clearFocusedVirtualView()V
    .locals 3

    invoke-virtual {p0}, Landroidx/customview/widget/ExploreByTouchHelper;->getAccessibilityFocusedVirtualViewId()I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView$MonthViewTouchHelper;->this$0:Lcom/wdullaer/materialdatetimepicker/date/MonthView;

    invoke-virtual {p0, v1}, Landroidx/customview/widget/ExploreByTouchHelper;->getAccessibilityNodeProvider(Landroid/view/View;)Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;

    move-result-object p0

    const/16 v1, 0x80

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;->performAction(IILandroid/os/Bundle;)Z

    :cond_0
    return-void
.end method

.method public getItemBounds(ILandroid/graphics/Rect;)V
    .locals 6

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView$MonthViewTouchHelper;->this$0:Lcom/wdullaer/materialdatetimepicker/date/MonthView;

    iget v1, v0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mEdgePadding:I

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->getMonthHeaderSize()I

    move-result v0

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView$MonthViewTouchHelper;->this$0:Lcom/wdullaer/materialdatetimepicker/date/MonthView;

    iget v3, v2, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mRowHeight:I

    iget v4, v2, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mWidth:I

    iget v5, v2, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mEdgePadding:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, v2, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mNumDays:I

    div-int/2addr v4, v5

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v2}, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->findDayOffset()I

    move-result v2

    add-int/2addr v2, p1

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView$MonthViewTouchHelper;->this$0:Lcom/wdullaer/materialdatetimepicker/date/MonthView;

    iget p0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mNumDays:I

    div-int p1, v2, p0

    rem-int/2addr v2, p0

    mul-int/2addr v2, v4

    add-int/2addr v2, v1

    mul-int/2addr p1, v3

    add-int/2addr p1, v0

    add-int/2addr v4, v2

    add-int/2addr v3, p1

    invoke-virtual {p2, v2, p1, v4, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public getItemDescription(I)Ljava/lang/CharSequence;
    .locals 3

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView$MonthViewTouchHelper;->mTempCalendar:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView$MonthViewTouchHelper;->this$0:Lcom/wdullaer/materialdatetimepicker/date/MonthView;

    iget v2, v1, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mYear:I

    iget v1, v1, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mMonth:I

    invoke-virtual {v0, v2, v1, p1}, Ljava/util/Calendar;->set(III)V

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView$MonthViewTouchHelper;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    const-string v0, "dd MMMM yyyy"

    invoke-static {v0, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getVirtualViewAt(FF)I
    .locals 0

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView$MonthViewTouchHelper;->this$0:Lcom/wdullaer/materialdatetimepicker/date/MonthView;

    invoke-virtual {p0, p1, p2}, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->getDayFromLocation(FF)I

    move-result p0

    if-ltz p0, :cond_0

    return p0

    :cond_0
    const/high16 p0, -0x80000000

    return p0
.end method

.method public getVisibleVirtualViews(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView$MonthViewTouchHelper;->this$0:Lcom/wdullaer/materialdatetimepicker/date/MonthView;

    iget v1, v1, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mNumCells:I

    if-gt v0, v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 0

    const/16 p3, 0x10

    if-eq p2, p3, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView$MonthViewTouchHelper;->this$0:Lcom/wdullaer/materialdatetimepicker/date/MonthView;

    invoke-static {p0, p1}, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->access$000(Lcom/wdullaer/materialdatetimepicker/date/MonthView;I)V

    const/4 p0, 0x1

    return p0
.end method

.method public onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/wdullaer/materialdatetimepicker/date/MonthView$MonthViewTouchHelper;->getItemDescription(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 3

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/wdullaer/materialdatetimepicker/date/MonthView$MonthViewTouchHelper;->getItemBounds(ILandroid/graphics/Rect;)V

    invoke-virtual {p0, p1}, Lcom/wdullaer/materialdatetimepicker/date/MonthView$MonthViewTouchHelper;->getItemDescription(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView$MonthViewTouchHelper;->this$0:Lcom/wdullaer/materialdatetimepicker/date/MonthView;

    iget-object v1, v0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mController:Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;

    iget v2, v0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mYear:I

    iget v0, v0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mMonth:I

    invoke-interface {v1, v2, v0, p1}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;->isOutOfRange(III)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setEnabled(Z)V

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView$MonthViewTouchHelper;->this$0:Lcom/wdullaer/materialdatetimepicker/date/MonthView;

    iget p0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mSelectedDay:I

    if-ne p1, p0, :cond_0

    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method public setFocusedVirtualView(I)V
    .locals 2

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/MonthView$MonthViewTouchHelper;->this$0:Lcom/wdullaer/materialdatetimepicker/date/MonthView;

    invoke-virtual {p0, v0}, Landroidx/customview/widget/ExploreByTouchHelper;->getAccessibilityNodeProvider(Landroid/view/View;)Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;

    move-result-object p0

    const/16 v0, 0x40

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;->performAction(IILandroid/os/Bundle;)Z

    return-void
.end method
