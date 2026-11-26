.class public abstract Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"

# interfaces
.implements Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wdullaer/materialdatetimepicker/date/DayPickerView$OnPageListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MonthFragment"


# instance fields
.field protected mAdapter:Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter;

.field protected mContext:Landroid/content/Context;

.field private mController:Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;

.field protected mCurrentMonthDisplayed:I

.field protected mPreviousScrollState:I

.field protected mSelectedDay:Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;

.field protected mTempDay:Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;

.field private pageListener:Lcom/wdullaer/materialdatetimepicker/date/DayPickerView$OnPageListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 18
    iput p2, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mPreviousScrollState:I

    .line 19
    sget-object p2, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$ScrollOrientation;->HORIZONTAL:Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$ScrollOrientation;

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->init(Landroid/content/Context;Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$ScrollOrientation;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mPreviousScrollState:I

    invoke-interface {p2}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;->getScrollOrientation()Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$ScrollOrientation;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->init(Landroid/content/Context;Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$ScrollOrientation;)V

    invoke-virtual {p0, p2}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->setController(Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;)V

    return-void
.end method

.method public static synthetic a(Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->lambda$postSetSelection$1(I)V

    return-void
.end method

.method public static synthetic b(Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->lambda$setUpRecyclerView$0(I)V

    return-void
.end method

.method private findAccessibilityFocus()Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/wdullaer/materialdatetimepicker/date/MonthView;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/wdullaer/materialdatetimepicker/date/MonthView;

    invoke-virtual {v2}, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->getAccessibilityFocus()Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getMonthAndYearString(IILjava/util/Locale;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string p1, "MMMM yyyy"

    invoke-direct {p0, p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$postSetSelection$1(I)V
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mSelectedDay:Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;

    invoke-direct {p0, v0}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->restoreAccessibilityFocus(Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;)Z

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->pageListener:Lcom/wdullaer/materialdatetimepicker/date/DayPickerView$OnPageListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView$OnPageListener;->onPageChanged(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setUpRecyclerView$0(I)V
    .locals 0

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->pageListener:Lcom/wdullaer/materialdatetimepicker/date/DayPickerView$OnPageListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView$OnPageListener;->onPageChanged(I)V

    :cond_0
    return-void
.end method

.method private restoreAccessibilityFocus(Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/wdullaer/materialdatetimepicker/date/MonthView;

    if-eqz v4, :cond_1

    check-cast v3, Lcom/wdullaer/materialdatetimepicker/date/MonthView;

    invoke-virtual {v3, p1}, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->restoreAccessibilityFocus(Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method


# virtual methods
.method public accessibilityAnnouncePageChanged()V
    .locals 3

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->getMostVisibleMonth()Lcom/wdullaer/materialdatetimepicker/date/MonthView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mMonth:I

    iget v0, v0, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->mYear:I

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mController:Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;

    invoke-interface {v2}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->getMonthAndYearString(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/wdullaer/materialdatetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string p0, "DayPickerView"

    const-string v0, "Tried to announce before layout was initialized"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public abstract createMonthAdapter(Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;)Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter;
.end method

.method public getCount()I
    .locals 0

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mAdapter:Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter;

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter;->getItemCount()I

    move-result p0

    return p0
.end method

.method public getMostVisibleMonth()Lcom/wdullaer/materialdatetimepicker/date/MonthView;
    .locals 10

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mController:Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;

    invoke-interface {v0}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;->getScrollOrientation()Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$ScrollOrientation;

    move-result-object v0

    sget-object v1, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$ScrollOrientation;->VERTICAL:Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$ScrollOrientation;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    :goto_1
    const/4 v3, 0x0

    move v4, v2

    move v5, v4

    move v6, v5

    :goto_2
    if-ge v4, v1, :cond_6

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_5

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v7

    goto :goto_3

    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v7

    :goto_3
    if-eqz v0, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v8

    goto :goto_4

    :cond_4
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v8

    :goto_4
    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    sub-int/2addr v9, v8

    if-le v9, v6, :cond_5

    check-cast v4, Lcom/wdullaer/materialdatetimepicker/date/MonthView;

    move-object v3, v4

    move v6, v9

    :cond_5
    add-int/lit8 v5, v5, 0x1

    move v4, v7

    goto :goto_2

    :cond_6
    :goto_5
    return-object v3
.end method

.method public getMostVisiblePosition()I
    .locals 1

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->getMostVisibleMonth()Lcom/wdullaer/materialdatetimepicker/date/MonthView;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public getOnPageListener()Lcom/wdullaer/materialdatetimepicker/date/DayPickerView$OnPageListener;
    .locals 0

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->pageListener:Lcom/wdullaer/materialdatetimepicker/date/DayPickerView$OnPageListener;

    return-object p0
.end method

.method public goTo(Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;ZZZ)Z
    .locals 9

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mSelectedDay:Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;

    invoke-virtual {v0, p1}, Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;->set(Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;)V

    :cond_0
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mTempDay:Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;

    invoke-virtual {v0, p1}, Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;->set(Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mController:Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;

    invoke-interface {v0}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;->getStartDate()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget v1, p1, Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;->year:I

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mController:Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;

    invoke-interface {v2}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;->getMinYear()I

    move-result v2

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0xc

    iget p1, p1, Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;->month:I

    add-int/2addr v1, p1

    sub-int/2addr v1, v0

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x3

    const-string v5, "MonthFragment"

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "child at "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " has top "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-ltz v6, :cond_b

    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    goto :goto_2

    :cond_3
    move v0, p1

    :goto_2
    if-eqz p3, :cond_4

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mAdapter:Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter;

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mSelectedDay:Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;

    invoke-virtual {v2, v3}, Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter;->setSelectedDay(Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;)V

    :cond_4
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "GoTo position "

    invoke-static {v1, v2, v5}, Lvh;->d(ILjava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-ne v1, v0, :cond_7

    if-eqz p4, :cond_6

    goto :goto_3

    :cond_6
    if-eqz p3, :cond_a

    iget-object p2, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mSelectedDay:Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;

    invoke-virtual {p0, p2}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->setMonthDisplayed(Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;)V

    goto :goto_4

    :cond_7
    :goto_3
    iget-object p3, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mTempDay:Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;

    invoke-virtual {p0, p3}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->setMonthDisplayed(Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;)V

    const/4 p3, 0x1

    iput p3, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mPreviousScrollState:I

    if-eqz p2, :cond_9

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->pageListener:Lcom/wdullaer/materialdatetimepicker/date/DayPickerView$OnPageListener;

    if-eqz p0, :cond_8

    invoke-interface {p0, v1}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView$OnPageListener;->onPageChanged(I)V

    :cond_8
    return p3

    :cond_9
    invoke-virtual {p0, v1}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->postSetSelection(I)V

    :cond_a
    :goto_4
    return p1

    :cond_b
    move v0, v2

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$ScrollOrientation;)V
    .locals 3

    sget-object v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$ScrollOrientation;->VERTICAL:Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$ScrollOrientation;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p1, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->setUpRecyclerView(Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$ScrollOrientation;)V

    return-void
.end method

.method public onChange()V
    .locals 0

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->refreshAdapter()V

    return-void
.end method

.method public onDateChanged()V
    .locals 3

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mController:Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;

    invoke-interface {v0}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;->getSelectedDay()Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->goTo(Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;ZZZ)Z

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 p0, -0x1

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroidx/recyclerview/widget/RecyclerView;->onLayout(ZIIII)V

    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->findAccessibilityFocus()Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->restoreAccessibilityFocus(Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;)Z

    return-void
.end method

.method public postSetSelection(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    new-instance v0, Lwc2;

    invoke-direct {v0, p0, p1}, Lwc2;-><init>(Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public refreshAdapter()V
    .locals 2

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mAdapter:Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mController:Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;

    invoke-virtual {p0, v0}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->createMonthAdapter(Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;)Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mAdapter:Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mSelectedDay:Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;

    invoke-virtual {v0, v1}, Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter;->setSelectedDay(Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->pageListener:Lcom/wdullaer/materialdatetimepicker/date/DayPickerView$OnPageListener;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->getMostVisiblePosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView$OnPageListener;->onPageChanged(I)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mAdapter:Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public setController(Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;)V
    .locals 1

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mController:Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;

    invoke-interface {p1, p0}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;->registerOnDateChangedListener(Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$OnDateChangedListener;)V

    new-instance p1, Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mController:Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;

    invoke-interface {v0}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;-><init>(Ljava/util/TimeZone;)V

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mSelectedDay:Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;

    new-instance p1, Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mController:Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;

    invoke-interface {v0}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;-><init>(Ljava/util/TimeZone;)V

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mTempDay:Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->refreshAdapter()V

    return-void
.end method

.method public setMonthDisplayed(Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;)V
    .locals 0

    iget p1, p1, Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;->month:I

    iput p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->mCurrentMonthDisplayed:I

    return-void
.end method

.method public setOnPageListener(Lcom/wdullaer/materialdatetimepicker/date/DayPickerView$OnPageListener;)V
    .locals 0

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->pageListener:Lcom/wdullaer/materialdatetimepicker/date/DayPickerView$OnPageListener;

    return-void
.end method

.method public setUpRecyclerView(Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$ScrollOrientation;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setFadingEdgeLength(I)V

    sget-object v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$ScrollOrientation;->VERTICAL:Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$ScrollOrientation;

    if-ne p1, v0, :cond_0

    const/16 p1, 0x30

    goto :goto_0

    :cond_0
    const p1, 0x800003

    :goto_0
    new-instance v0, Lcom/wdullaer/materialdatetimepicker/GravitySnapHelper;

    new-instance v1, Lg21;

    invoke-direct {v1, p0}, Lg21;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, p1, v1}, Lcom/wdullaer/materialdatetimepicker/GravitySnapHelper;-><init>(ILcom/wdullaer/materialdatetimepicker/GravitySnapHelper$SnapListener;)V

    invoke-virtual {v0, p0}, Lcom/wdullaer/materialdatetimepicker/GravitySnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method
