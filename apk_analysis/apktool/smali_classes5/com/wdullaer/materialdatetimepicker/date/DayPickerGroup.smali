.class public Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/wdullaer/materialdatetimepicker/date/DayPickerView$OnPageListener;


# instance fields
.field private controller:Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;

.field private dayPickerView:Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;

.field private nextButton:Landroid/widget/ImageButton;

.field private prevButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 10
    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;->controller:Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;

    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    new-instance v0, Lcom/wdullaer/materialdatetimepicker/date/SimpleDayPickerView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;->controller:Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;

    invoke-direct {v0, v1, v2}, Lcom/wdullaer/materialdatetimepicker/date/SimpleDayPickerView;-><init>(Landroid/content/Context;Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;)V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;->dayPickerView:Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/wdullaer/materialdatetimepicker/R$layout;->mdtp_daypicker_group:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    sget v0, Lcom/wdullaer/materialdatetimepicker/R$id;->mdtp_previous_month_arrow:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;->prevButton:Landroid/widget/ImageButton;

    sget v0, Lcom/wdullaer/materialdatetimepicker/R$id;->mdtp_next_month_arrow:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;->nextButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;->controller:Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;

    invoke-interface {v0}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;->getVersion()Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$Version;

    move-result-object v0

    sget-object v1, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$Version;->VERSION_1:Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$Version;

    if-ne v0, v1, :cond_1

    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wdullaer/materialdatetimepicker/Utils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v0

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;->prevButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;->prevButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/view/View;->setMinimumWidth(I)V

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;->nextButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;->nextButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/view/View;->setMinimumWidth(I)V

    :cond_1
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;->controller:Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;

    invoke-interface {v0}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;->isThemeDark()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/wdullaer/materialdatetimepicker/R$color;->mdtp_date_picker_text_normal_dark_theme:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;->prevButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;->nextButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_2
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;->prevButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;->nextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;->dayPickerView:Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;

    invoke-virtual {v0, p0}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->setOnPageListener(Lcom/wdullaer/materialdatetimepicker/date/DayPickerView$OnPageListener;)V

    return-void
.end method

.method private updateButtonVisibility(I)V
    .locals 5

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;->controller:Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;

    invoke-interface {v0}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;->getScrollOrientation()Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$ScrollOrientation;

    move-result-object v0

    sget-object v1, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$ScrollOrientation;->HORIZONTAL:Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$ScrollOrientation;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-lez p1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    iget-object v4, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;->dayPickerView:Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;

    invoke-virtual {v4}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->getCount()I

    move-result v4

    sub-int/2addr v4, v2

    if-ge p1, v4, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    iget-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;->prevButton:Landroid/widget/ImageButton;

    const/4 v4, 0x4

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v4

    :goto_3
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;->nextButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    move v3, v4

    :goto_4
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getMostVisiblePosition()I
    .locals 0

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;->dayPickerView:Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->getMostVisiblePosition()I

    move-result p0

    return p0
.end method

.method public onChange()V
    .locals 0

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;->dayPickerView:Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->onChange()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;->nextButton:Landroid/widget/ImageButton;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;->prevButton:Landroid/widget/ImageButton;

    if-ne v0, p1, :cond_1

    const/4 p1, -0x1

    :goto_0
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;->dayPickerView:Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->getMostVisiblePosition()I

    move-result v0

    add-int/2addr v0, p1

    if-ltz v0, :cond_1

    iget-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;->dayPickerView:Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->getCount()I

    move-result p1

    if-ge v0, p1, :cond_1

    iget-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;->dayPickerView:Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    invoke-direct {p0, v0}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;->updateButtonVisibility(I)V

    :cond_1
    return-void
.end method

.method public onDateChanged()V
    .locals 0

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;->dayPickerView:Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->onDateChanged()V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 7

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;->nextButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;->prevButton:Landroid/widget/ImageButton;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;->prevButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;->nextButton:Landroid/widget/ImageButton;

    :goto_0
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;->controller:Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;

    invoke-interface {v1}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;->getVersion()Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$Version;

    move-result-object v1

    sget-object v2, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$Version;->VERSION_1:Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$Version;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/wdullaer/materialdatetimepicker/R$dimen;->mdtp_date_picker_view_animator_padding_v2:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_1
    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    iget-object p2, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;->dayPickerView:Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;

    invoke-virtual {p2, v3, v1, p4, p5}, Landroid/view/View;->layout(IIII)V

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;->dayPickerView:Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/wdullaer/materialdatetimepicker/date/SimpleMonthView;

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->getMonthHeight()I

    move-result p2

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->getCellWidth()I

    move-result p3

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/MonthView;->getEdgePadding()I

    move-result p5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    add-int/2addr v4, v1

    const/4 v5, 0x2

    invoke-static {p2, v3, v5, v4}, Lk;->b(IIII)I

    move-result v4

    invoke-static {p3, v2, v5, p5}, Lk;->b(IIII)I

    move-result v6

    add-int/2addr v2, v6

    add-int/2addr v3, v4

    invoke-virtual {p1, v6, v4, v2, v3}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    add-int/2addr p0, v1

    invoke-static {p2, v2, v5, p0}, Lk;->b(IIII)I

    move-result p0

    sub-int/2addr p4, p5

    sub-int/2addr p3, p1

    div-int/2addr p3, v5

    sub-int/2addr p4, p3

    sub-int/2addr p4, v5

    sub-int p1, p4, p1

    add-int/2addr v2, p0

    invoke-virtual {v0, p1, p0, p4, v2}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;->dayPickerView:Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    iget-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;->dayPickerView:Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result p1

    iget-object p2, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;->dayPickerView:Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeightAndState()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    iget-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;->dayPickerView:Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget-object p2, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;->dayPickerView:Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    const/high16 v0, -0x80000000

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;->prevButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;->nextButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public onPageChanged(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;->updateButtonVisibility(I)V

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;->dayPickerView:Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->accessibilityAnnouncePageChanged()V

    return-void
.end method

.method public postSetSelection(I)V
    .locals 0

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;->dayPickerView:Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;

    invoke-virtual {p0, p1}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->postSetSelection(I)V

    return-void
.end method
