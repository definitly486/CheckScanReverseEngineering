.class final Lcom/wdullaer/materialdatetimepicker/date/YearPickerView$YearAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "YearAdapter"
.end annotation


# instance fields
.field private final mMaxYear:I

.field private final mMinYear:I

.field final synthetic this$0:Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;


# direct methods
.method public constructor <init>(Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;II)V
    .locals 0

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/YearPickerView$YearAdapter;->this$0:Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    if-gt p2, p3, :cond_0

    iput p2, p0, Lcom/wdullaer/materialdatetimepicker/date/YearPickerView$YearAdapter;->mMinYear:I

    iput p3, p0, Lcom/wdullaer/materialdatetimepicker/date/YearPickerView$YearAdapter;->mMaxYear:I

    return-void

    :cond_0
    const-string p0, "minYear > maxYear"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/date/YearPickerView$YearAdapter;->mMaxYear:I

    iget p0, p0, Lcom/wdullaer/materialdatetimepicker/date/YearPickerView$YearAdapter;->mMinYear:I

    sub-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/wdullaer/materialdatetimepicker/date/YearPickerView$YearAdapter;->mMinYear:I

    add-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    check-cast p2, Lcom/wdullaer/materialdatetimepicker/date/TextViewWithCircularIndicator;

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/wdullaer/materialdatetimepicker/R$layout;->mdtp_year_label_text_view:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/wdullaer/materialdatetimepicker/date/TextViewWithCircularIndicator;

    iget-object p3, p0, Lcom/wdullaer/materialdatetimepicker/date/YearPickerView$YearAdapter;->this$0:Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;

    invoke-static {p3}, Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;->access$000(Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;)Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;

    move-result-object p3

    invoke-interface {p3}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;->getAccentColor()I

    move-result p3

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/YearPickerView$YearAdapter;->this$0:Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;

    invoke-static {v1}, Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;->access$000(Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;)Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;

    move-result-object v1

    invoke-interface {v1}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;->isThemeDark()Z

    move-result v1

    invoke-virtual {p2, p3, v1}, Lcom/wdullaer/materialdatetimepicker/date/TextViewWithCircularIndicator;->setAccentColor(IZ)V

    :goto_0
    iget p3, p0, Lcom/wdullaer/materialdatetimepicker/date/YearPickerView$YearAdapter;->mMinYear:I

    add-int/2addr p3, p1

    iget-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/YearPickerView$YearAdapter;->this$0:Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;

    invoke-static {p1}, Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;->access$000(Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;)Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;

    move-result-object p1

    invoke-interface {p1}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;->getSelectedDay()Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;

    move-result-object p1

    iget p1, p1, Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;->year:I

    if-ne p1, p3, :cond_1

    const/4 v0, 0x1

    :cond_1
    iget-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/YearPickerView$YearAdapter;->this$0:Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;

    invoke-static {p1}, Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;->access$000(Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;)Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;

    move-result-object p1

    invoke-interface {p1}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;->getLocale()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    const-string v1, "%d"

    invoke-static {p1, v1, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Lcom/wdullaer/materialdatetimepicker/date/TextViewWithCircularIndicator;->drawIndicator(Z)V

    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/YearPickerView$YearAdapter;->this$0:Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;

    invoke-static {p0, p2}, Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;->access$102(Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;Lcom/wdullaer/materialdatetimepicker/date/TextViewWithCircularIndicator;)Lcom/wdullaer/materialdatetimepicker/date/TextViewWithCircularIndicator;

    :cond_2
    return-object p2
.end method
