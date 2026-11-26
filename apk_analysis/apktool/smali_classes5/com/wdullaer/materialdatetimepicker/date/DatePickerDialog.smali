.class public Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;
.super Landroidx/appcompat/app/AppCompatDialogFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$OnDateChangedListener;,
        Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$OnDateSetListener;,
        Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$ScrollOrientation;,
        Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$Version;
    }
.end annotation


# static fields
.field private static final ANIMATION_DELAY:I = 0x1f4

.field private static final ANIMATION_DURATION:I = 0x12c

.field private static DAY_FORMAT:Ljava/text/SimpleDateFormat; = null

.field private static final KEY_ACCENT:Ljava/lang/String; = "accent"

.field private static final KEY_AUTO_DISMISS:Ljava/lang/String; = "auto_dismiss"

.field private static final KEY_CANCEL_COLOR:Ljava/lang/String; = "cancel_color"

.field private static final KEY_CANCEL_RESID:Ljava/lang/String; = "cancel_resid"

.field private static final KEY_CANCEL_STRING:Ljava/lang/String; = "cancel_string"

.field private static final KEY_CURRENT_VIEW:Ljava/lang/String; = "current_view"

.field private static final KEY_DATERANGELIMITER:Ljava/lang/String; = "daterangelimiter"

.field private static final KEY_DEFAULT_VIEW:Ljava/lang/String; = "default_view"

.field private static final KEY_DISMISS:Ljava/lang/String; = "dismiss"

.field private static final KEY_HIGHLIGHTED_DAYS:Ljava/lang/String; = "highlighted_days"

.field private static final KEY_LIST_POSITION:Ljava/lang/String; = "list_position"

.field private static final KEY_LIST_POSITION_OFFSET:Ljava/lang/String; = "list_position_offset"

.field private static final KEY_LOCALE:Ljava/lang/String; = "locale"

.field private static final KEY_OK_COLOR:Ljava/lang/String; = "ok_color"

.field private static final KEY_OK_RESID:Ljava/lang/String; = "ok_resid"

.field private static final KEY_OK_STRING:Ljava/lang/String; = "ok_string"

.field private static final KEY_SCROLL_ORIENTATION:Ljava/lang/String; = "scrollorientation"

.field private static final KEY_SELECTED_DAY:Ljava/lang/String; = "day"

.field private static final KEY_SELECTED_MONTH:Ljava/lang/String; = "month"

.field private static final KEY_SELECTED_YEAR:Ljava/lang/String; = "year"

.field private static final KEY_THEME_DARK:Ljava/lang/String; = "theme_dark"

.field private static final KEY_THEME_DARK_CHANGED:Ljava/lang/String; = "theme_dark_changed"

.field private static final KEY_TIMEZONE:Ljava/lang/String; = "timezone"

.field private static final KEY_TITLE:Ljava/lang/String; = "title"

.field private static final KEY_VERSION:Ljava/lang/String; = "version"

.field private static final KEY_VIBRATE:Ljava/lang/String; = "vibrate"

.field private static final KEY_WEEK_START:Ljava/lang/String; = "week_start"

.field private static final MONTH_AND_DAY_VIEW:I = 0x0

.field private static MONTH_FORMAT:Ljava/text/SimpleDateFormat; = null

.field private static final UNINITIALIZED:I = -0x1

.field private static VERSION_2_FORMAT:Ljava/text/SimpleDateFormat; = null

.field private static YEAR_FORMAT:Ljava/text/SimpleDateFormat; = null

.field private static final YEAR_VIEW:I = 0x1


# instance fields
.field private highlightedDays:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation
.end field

.field private mAccentColor:Ljava/lang/Integer;

.field private mAnimator:Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;

.field private mAutoDismiss:Z

.field private mCalendar:Ljava/util/Calendar;

.field private mCallBack:Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$OnDateSetListener;

.field private mCancelColor:Ljava/lang/Integer;

.field private mCancelResid:I

.field private mCancelString:Ljava/lang/String;

.field private mCurrentView:I

.field private mDatePickerHeaderView:Landroid/widget/TextView;

.field private mDateRangeLimiter:Lcom/wdullaer/materialdatetimepicker/date/DateRangeLimiter;

.field private mDayPickerDescription:Ljava/lang/String;

.field private mDayPickerView:Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;

.field private mDefaultLimiter:Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;

.field private mDefaultView:I

.field private mDelayAnimation:Z

.field private mDismissOnPause:Z

.field private mHapticFeedbackController:Lcom/wdullaer/materialdatetimepicker/HapticFeedbackController;

.field private mListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$OnDateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocale:Ljava/util/Locale;

.field private mMonthAndDayView:Landroid/widget/LinearLayout;

.field private mOkColor:Ljava/lang/Integer;

.field private mOkResid:I

.field private mOkString:Ljava/lang/String;

.field private mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mScrollOrientation:Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$ScrollOrientation;

.field private mSelectDay:Ljava/lang/String;

.field private mSelectYear:Ljava/lang/String;

.field private mSelectedDayTextView:Landroid/widget/TextView;

.field private mSelectedMonthTextView:Landroid/widget/TextView;

.field private mThemeDark:Z

.field private mThemeDarkChanged:Z

.field private mTimezone:Ljava/util/TimeZone;

.field private mTitle:Ljava/lang/String;

.field private mVersion:Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$Version;

.field private mVibrate:Z

.field private mWeekStart:I

.field private mYearPickerDescription:Ljava/lang/String;

.field private mYearPickerView:Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;

.field private mYearView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->YEAR_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->MONTH_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->DAY_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDialogFragment;-><init>()V

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0}, Lcom/wdullaer/materialdatetimepicker/Utils;->trimToMidnight(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mListeners:Ljava/util/HashSet;

    const/4 v0, -0x1

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCurrentView:I

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mWeekStart:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->highlightedDays:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mThemeDark:Z

    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mThemeDarkChanged:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mAccentColor:Ljava/lang/Integer;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mVibrate:Z

    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDismissOnPause:Z

    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mAutoDismiss:Z

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDefaultView:I

    sget v0, Lcom/wdullaer/materialdatetimepicker/R$string;->mdtp_ok:I

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mOkResid:I

    iput-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mOkColor:Ljava/lang/Integer;

    sget v0, Lcom/wdullaer/materialdatetimepicker/R$string;->mdtp_cancel:I

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCancelResid:I

    iput-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCancelColor:Ljava/lang/Integer;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mLocale:Ljava/util/Locale;

    new-instance v0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;

    invoke-direct {v0}, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;-><init>()V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDefaultLimiter:Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDateRangeLimiter:Lcom/wdullaer/materialdatetimepicker/date/DateRangeLimiter;

    iput-boolean v2, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDelayAnimation:Z

    return-void
.end method

.method private adjustDayInMonthIfNeeded(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 3

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    if-le v1, v2, :cond_0

    invoke-virtual {p1, v0, v2}, Ljava/util/Calendar;->set(II)V

    :cond_0
    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDateRangeLimiter:Lcom/wdullaer/materialdatetimepicker/date/DateRangeLimiter;

    invoke-interface {p0, p1}, Lcom/wdullaer/materialdatetimepicker/date/DateRangeLimiter;->setToNearestDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->lambda$onCreateView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->lambda$onCreateView$0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onCreateView$0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->tryVibrate()V

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->notifyOnDateListener()V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onCreateView$1(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->tryVibrate()V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    :cond_0
    return-void
.end method

.method public static newInstance(Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$OnDateSetListener;)Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;
    .locals 1

    .line 9
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 10
    invoke-static {p0, v0}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->newInstance(Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$OnDateSetListener;Ljava/util/Calendar;)Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$OnDateSetListener;III)Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;
    .locals 1

    new-instance v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;

    invoke-direct {v0}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;-><init>()V

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->initialize(Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$OnDateSetListener;III)V

    return-object v0
.end method

.method public static newInstance(Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$OnDateSetListener;Ljava/util/Calendar;)Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;
    .locals 1

    .line 11
    new-instance v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;

    invoke-direct {v0}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;-><init>()V

    .line 12
    invoke-virtual {v0, p0, p1}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->initialize(Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$OnDateSetListener;Ljava/util/Calendar;)V

    return-object v0
.end method

.method private setCurrentView(I)V
    .locals 10

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-string v2, ": "

    const-wide/16 v3, 0x1f4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_5

    if-eq p1, v5, :cond_0

    return-void

    :cond_0
    iget-object v7, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mVersion:Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$Version;

    sget-object v8, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$Version;->VERSION_1:Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$Version;

    if-ne v7, v8, :cond_3

    iget-object v7, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mYearView:Landroid/widget/TextView;

    const v8, 0x3f59999a    # 0.85f

    const v9, 0x3f8ccccd    # 1.1f

    invoke-static {v7, v8, v9}, Lcom/wdullaer/materialdatetimepicker/Utils;->getPulseAnimator(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v7

    iget-boolean v8, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDelayAnimation:Z

    if-eqz v8, :cond_1

    invoke-virtual {v7, v3, v4}, Landroid/animation/Animator;->setStartDelay(J)V

    iput-boolean v6, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDelayAnimation:Z

    :cond_1
    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mYearPickerView:Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;

    invoke-virtual {v3}, Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;->onDateChanged()V

    iget v3, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCurrentView:I

    if-eq v3, p1, :cond_2

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mMonthAndDayView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/view/View;->setSelected(Z)V

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mYearView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mAnimator:Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;

    invoke-virtual {v3, v5}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    iput p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCurrentView:I

    :cond_2
    invoke-virtual {v7}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mYearPickerView:Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;

    invoke-virtual {v3}, Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;->onDateChanged()V

    iget v3, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCurrentView:I

    if-eq v3, p1, :cond_4

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mMonthAndDayView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/view/View;->setSelected(Z)V

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mYearView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mAnimator:Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;

    invoke-virtual {v3, v5}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    iput p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCurrentView:I

    :cond_4
    :goto_0
    sget-object p1, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->YEAR_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mAnimator:Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mYearPickerDescription:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mAnimator:Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mSelectYear:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/wdullaer/materialdatetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void

    :cond_5
    iget-object v7, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mVersion:Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$Version;

    sget-object v8, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$Version;->VERSION_1:Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$Version;

    if-ne v7, v8, :cond_8

    iget-object v7, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mMonthAndDayView:Landroid/widget/LinearLayout;

    const v8, 0x3f666666    # 0.9f

    const v9, 0x3f866666    # 1.05f

    invoke-static {v7, v8, v9}, Lcom/wdullaer/materialdatetimepicker/Utils;->getPulseAnimator(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v7

    iget-boolean v8, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDelayAnimation:Z

    if-eqz v8, :cond_6

    invoke-virtual {v7, v3, v4}, Landroid/animation/Animator;->setStartDelay(J)V

    iput-boolean v6, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDelayAnimation:Z

    :cond_6
    iget v3, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCurrentView:I

    if-eq v3, p1, :cond_7

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mMonthAndDayView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/view/View;->setSelected(Z)V

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mYearView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mAnimator:Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;

    invoke-virtual {v3, v6}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    iput p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCurrentView:I

    :cond_7
    iget-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDayPickerView:Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;->onDateChanged()V

    invoke-virtual {v7}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    :cond_8
    iget v3, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCurrentView:I

    if-eq v3, p1, :cond_9

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mMonthAndDayView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/view/View;->setSelected(Z)V

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mYearView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mAnimator:Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;

    invoke-virtual {v3, v6}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    iput p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCurrentView:I

    :cond_9
    iget-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDayPickerView:Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;->onDateChanged()V

    :goto_1
    const/16 p1, 0x10

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v0, v1, p1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mAnimator:Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDayPickerDescription:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mAnimator:Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mSelectDay:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/wdullaer/materialdatetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateDisplay(Z)V
    .locals 5

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mYearView:Landroid/widget/TextView;

    sget-object v1, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->YEAR_FORMAT:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mVersion:Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$Version;

    sget-object v1, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$Version;->VERSION_1:Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$Version;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDatePickerHeaderView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mTitle:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mLocale:Ljava/util/Locale;

    const/4 v4, 0x7

    invoke-virtual {v1, v4, v2, v3}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mSelectedMonthTextView:Landroid/widget/TextView;

    sget-object v1, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->MONTH_FORMAT:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mSelectedDayTextView:Landroid/widget/TextView;

    sget-object v1, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->DAY_FORMAT:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mVersion:Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$Version;

    sget-object v1, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$Version;->VERSION_2:Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$Version;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mSelectedDayTextView:Landroid/widget/TextView;

    sget-object v1, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->VERSION_2_FORMAT:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDatePickerHeaderView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mAnimator:Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;

    invoke-virtual {v2, v0, v1}, Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;->setDateMillis(J)V

    const/16 v2, 0x18

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v0, v1, v2}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mMonthAndDayView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_5

    const/16 p1, 0x14

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v0, v1, p1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mAnimator:Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;

    invoke-static {p0, p1}, Lcom/wdullaer/materialdatetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method

.method private updatePickers()V
    .locals 1

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mListeners:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$OnDateChangedListener;

    invoke-interface {v0}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$OnDateChangedListener;->onDateChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public autoDismiss(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mAutoDismiss:Z

    return-void
.end method

.method public dismissOnPause(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDismissOnPause:Z

    return-void
.end method

.method public getAccentColor()I
    .locals 0

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mAccentColor:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getDisabledDays()[Ljava/util/Calendar;
    .locals 0

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDefaultLimiter:Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->getDisabledDays()[Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public getEndDate()Ljava/util/Calendar;
    .locals 0

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDateRangeLimiter:Lcom/wdullaer/materialdatetimepicker/date/DateRangeLimiter;

    invoke-interface {p0}, Lcom/wdullaer/materialdatetimepicker/date/DateRangeLimiter;->getEndDate()Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public getFirstDayOfWeek()I
    .locals 0

    iget p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mWeekStart:I

    return p0
.end method

.method public getHighlightedDays()[Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->highlightedDays:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->highlightedDays:Ljava/util/HashSet;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/Calendar;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/util/Calendar;

    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    return-object p0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mLocale:Ljava/util/Locale;

    return-object p0
.end method

.method public getMaxDate()Ljava/util/Calendar;
    .locals 0

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDefaultLimiter:Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->getMaxDate()Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public getMaxYear()I
    .locals 0

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDateRangeLimiter:Lcom/wdullaer/materialdatetimepicker/date/DateRangeLimiter;

    invoke-interface {p0}, Lcom/wdullaer/materialdatetimepicker/date/DateRangeLimiter;->getMaxYear()I

    move-result p0

    return p0
.end method

.method public getMinDate()Ljava/util/Calendar;
    .locals 0

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDefaultLimiter:Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->getMinDate()Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public getMinYear()I
    .locals 0

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDateRangeLimiter:Lcom/wdullaer/materialdatetimepicker/date/DateRangeLimiter;

    invoke-interface {p0}, Lcom/wdullaer/materialdatetimepicker/date/DateRangeLimiter;->getMinYear()I

    move-result p0

    return p0
.end method

.method public getOnDateSetListener()Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$OnDateSetListener;
    .locals 0

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCallBack:Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$OnDateSetListener;

    return-object p0
.end method

.method public getScrollOrientation()Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$ScrollOrientation;
    .locals 0

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mScrollOrientation:Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$ScrollOrientation;

    return-object p0
.end method

.method public getSelectableDays()[Ljava/util/Calendar;
    .locals 0

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDefaultLimiter:Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->getSelectableDays()[Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public getSelectedDay()Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;
    .locals 2

    new-instance v0, Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;-><init>(Ljava/util/Calendar;Ljava/util/TimeZone;)V

    return-object v0
.end method

.method public getStartDate()Ljava/util/Calendar;
    .locals 0

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDateRangeLimiter:Lcom/wdullaer/materialdatetimepicker/date/DateRangeLimiter;

    invoke-interface {p0}, Lcom/wdullaer/materialdatetimepicker/date/DateRangeLimiter;->getStartDate()Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 0

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mTimezone:Ljava/util/TimeZone;

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getVersion()Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$Version;
    .locals 0

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mVersion:Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$Version;

    return-object p0
.end method

.method public initialize(Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$OnDateSetListener;III)V
    .locals 2

    .line 29
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 30
    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    const/4 p2, 0x2

    .line 31
    invoke-virtual {v0, p2, p3}, Ljava/util/Calendar;->set(II)V

    const/4 p2, 0x5

    .line 32
    invoke-virtual {v0, p2, p4}, Ljava/util/Calendar;->set(II)V

    .line 33
    invoke-virtual {p0, p1, v0}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->initialize(Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$OnDateSetListener;Ljava/util/Calendar;)V

    return-void
.end method

.method public initialize(Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$OnDateSetListener;Ljava/util/Calendar;)V
    .locals 0

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCallBack:Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$OnDateSetListener;

    invoke-virtual {p2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    invoke-static {p1}, Lcom/wdullaer/materialdatetimepicker/Utils;->trimToMidnight(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mScrollOrientation:Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$ScrollOrientation;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->setTimeZone(Ljava/util/TimeZone;)V

    sget-object p1, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$Version;->VERSION_2:Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$Version;

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mVersion:Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$Version;

    return-void
.end method

.method public isHighlighted(III)Z
    .locals 2

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x2

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x5

    invoke-virtual {v0, p1, p3}, Ljava/util/Calendar;->set(II)V

    invoke-static {v0}, Lcom/wdullaer/materialdatetimepicker/Utils;->trimToMidnight(Ljava/util/Calendar;)Ljava/util/Calendar;

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->highlightedDays:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isOutOfRange(III)Z
    .locals 0

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDateRangeLimiter:Lcom/wdullaer/materialdatetimepicker/date/DateRangeLimiter;

    invoke-interface {p0, p1, p2, p3}, Lcom/wdullaer/materialdatetimepicker/date/DateRangeLimiter;->isOutOfRange(III)Z

    move-result p0

    return p0
.end method

.method public isThemeDark()Z
    .locals 0

    iget-boolean p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mThemeDark:Z

    return p0
.end method

.method public notifyOnDateListener()V
    .locals 5

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCallBack:Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$OnDateSetListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$OnDateSetListener;->onDateSet(Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;III)V

    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->tryVibrate()V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/wdullaer/materialdatetimepicker/R$id;->mdtp_date_picker_year:I

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->setCurrentView(I)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/wdullaer/materialdatetimepicker/R$id;->mdtp_date_picker_month_and_day:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->setCurrentView(I)V

    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCurrentView:I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const-string v2, "year"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const-string v1, "month"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const-string v1, "day"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const-string v0, "default_view"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDefaultView:I

    :cond_0
    new-instance p1, Ljava/text/SimpleDateFormat;

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mLocale:Ljava/util/Locale;

    const-string v1, "EEEMMMdd"

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mLocale:Ljava/util/Locale;

    invoke-direct {p1, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object p1, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->VERSION_2_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDefaultView:I

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mScrollOrientation:Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$ScrollOrientation;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mVersion:Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$Version;

    sget-object v2, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$Version;->VERSION_1:Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$Version;

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$ScrollOrientation;->VERTICAL:Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$ScrollOrientation;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$ScrollOrientation;->HORIZONTAL:Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$ScrollOrientation;

    :goto_0
    iput-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mScrollOrientation:Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$ScrollOrientation;

    :cond_1
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_6

    const-string v0, "week_start"

    invoke-virtual {p3, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mWeekStart:I

    const-string v0, "current_view"

    invoke-virtual {p3, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v3, "list_position"

    invoke-virtual {p3, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "list_position_offset"

    invoke-virtual {p3, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "highlighted_days"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Ljava/util/HashSet;

    iput-object v5, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->highlightedDays:Ljava/util/HashSet;

    const-string v5, "theme_dark"

    invoke-virtual {p3, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mThemeDark:Z

    const-string v5, "theme_dark_changed"

    invoke-virtual {p3, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mThemeDarkChanged:Z

    const-string v5, "accent"

    invoke-virtual {p3, v5}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p3, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mAccentColor:Ljava/lang/Integer;

    :cond_2
    const-string v5, "vibrate"

    invoke-virtual {p3, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mVibrate:Z

    const-string v5, "dismiss"

    invoke-virtual {p3, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDismissOnPause:Z

    const-string v5, "auto_dismiss"

    invoke-virtual {p3, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mAutoDismiss:Z

    const-string v5, "title"

    invoke-virtual {p3, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mTitle:Ljava/lang/String;

    const-string v5, "ok_resid"

    invoke-virtual {p3, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mOkResid:I

    const-string v5, "ok_string"

    invoke-virtual {p3, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mOkString:Ljava/lang/String;

    const-string v5, "ok_color"

    invoke-virtual {p3, v5}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p3, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mOkColor:Ljava/lang/Integer;

    :cond_3
    const-string v5, "cancel_resid"

    invoke-virtual {p3, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCancelResid:I

    const-string v5, "cancel_string"

    invoke-virtual {p3, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCancelString:Ljava/lang/String;

    const-string v5, "cancel_color"

    invoke-virtual {p3, v5}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p3, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCancelColor:Ljava/lang/Integer;

    :cond_4
    const-string v5, "version"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$Version;

    iput-object v5, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mVersion:Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$Version;

    const-string v5, "scrollorientation"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$ScrollOrientation;

    iput-object v5, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mScrollOrientation:Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$ScrollOrientation;

    const-string v5, "timezone"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Ljava/util/TimeZone;

    iput-object v5, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mTimezone:Ljava/util/TimeZone;

    const-string v5, "daterangelimiter"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/wdullaer/materialdatetimepicker/date/DateRangeLimiter;

    iput-object v5, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDateRangeLimiter:Lcom/wdullaer/materialdatetimepicker/date/DateRangeLimiter;

    const-string v5, "locale"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p3

    check-cast p3, Ljava/util/Locale;

    invoke-virtual {p0, p3}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->setLocale(Ljava/util/Locale;)V

    iget-object p3, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDateRangeLimiter:Lcom/wdullaer/materialdatetimepicker/date/DateRangeLimiter;

    instance-of v5, p3, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;

    if-eqz v5, :cond_5

    check-cast p3, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;

    iput-object p3, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDefaultLimiter:Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;

    goto :goto_1

    :cond_5
    new-instance p3, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;

    invoke-direct {p3}, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;-><init>()V

    iput-object p3, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDefaultLimiter:Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;

    goto :goto_1

    :cond_6
    move v3, v1

    move v4, v2

    :goto_1
    iget-object p3, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDefaultLimiter:Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;

    invoke-virtual {p3, p0}, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->setController(Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;)V

    iget-object p3, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mVersion:Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$Version;

    sget-object v5, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$Version;->VERSION_1:Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$Version;

    if-ne p3, v5, :cond_7

    sget p3, Lcom/wdullaer/materialdatetimepicker/R$layout;->mdtp_date_picker_dialog:I

    goto :goto_2

    :cond_7
    sget p3, Lcom/wdullaer/materialdatetimepicker/R$layout;->mdtp_date_picker_dialog_v2:I

    :goto_2
    invoke-virtual {p1, p3, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDateRangeLimiter:Lcom/wdullaer/materialdatetimepicker/date/DateRangeLimiter;

    iget-object p3, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-interface {p2, p3}, Lcom/wdullaer/materialdatetimepicker/date/DateRangeLimiter;->setToNearestDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p2

    iput-object p2, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    sget p2, Lcom/wdullaer/materialdatetimepicker/R$id;->mdtp_date_picker_header:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDatePickerHeaderView:Landroid/widget/TextView;

    sget p2, Lcom/wdullaer/materialdatetimepicker/R$id;->mdtp_date_picker_month_and_day:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mMonthAndDayView:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p2, Lcom/wdullaer/materialdatetimepicker/R$id;->mdtp_date_picker_month:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mSelectedMonthTextView:Landroid/widget/TextView;

    sget p2, Lcom/wdullaer/materialdatetimepicker/R$id;->mdtp_date_picker_day:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mSelectedDayTextView:Landroid/widget/TextView;

    sget p2, Lcom/wdullaer/materialdatetimepicker/R$id;->mdtp_date_picker_year:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mYearView:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    new-instance p3, Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;

    invoke-direct {p3, p2, p0}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;-><init>(Landroid/content/Context;Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;)V

    iput-object p3, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDayPickerView:Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;

    new-instance p3, Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;

    invoke-direct {p3, p2, p0}, Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;-><init>(Landroid/content/Context;Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;)V

    iput-object p3, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mYearPickerView:Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;

    iget-boolean p3, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mThemeDarkChanged:Z

    if-nez p3, :cond_8

    iget-boolean p3, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mThemeDark:Z

    invoke-static {p2, p3}, Lcom/wdullaer/materialdatetimepicker/Utils;->isDarkTheme(Landroid/content/Context;Z)Z

    move-result p3

    iput-boolean p3, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mThemeDark:Z

    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v5, Lcom/wdullaer/materialdatetimepicker/R$string;->mdtp_day_picker_description:I

    invoke-virtual {p3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDayPickerDescription:Ljava/lang/String;

    sget v5, Lcom/wdullaer/materialdatetimepicker/R$string;->mdtp_select_day:I

    invoke-virtual {p3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mSelectDay:Ljava/lang/String;

    sget v5, Lcom/wdullaer/materialdatetimepicker/R$string;->mdtp_year_picker_description:I

    invoke-virtual {p3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mYearPickerDescription:Ljava/lang/String;

    sget v5, Lcom/wdullaer/materialdatetimepicker/R$string;->mdtp_select_year:I

    invoke-virtual {p3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mSelectYear:Ljava/lang/String;

    iget-boolean p3, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mThemeDark:Z

    if-eqz p3, :cond_9

    sget p3, Lcom/wdullaer/materialdatetimepicker/R$color;->mdtp_date_picker_view_animator_dark_theme:I

    goto :goto_3

    :cond_9
    sget p3, Lcom/wdullaer/materialdatetimepicker/R$color;->mdtp_date_picker_view_animator:I

    :goto_3
    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundColor(I)V

    sget p3, Lcom/wdullaer/materialdatetimepicker/R$id;->mdtp_animator:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;

    iput-object p3, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mAnimator:Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;

    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDayPickerView:Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;

    invoke-virtual {p3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p3, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mAnimator:Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;

    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mYearPickerView:Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;

    invoke-virtual {p3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p3, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mAnimator:Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;

    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {p3, v5, v6}, Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;->setDateMillis(J)V

    new-instance p3, Landroid/view/animation/AlphaAnimation;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {p3, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v7, 0x12c

    invoke-virtual {p3, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v9, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mAnimator:Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;

    invoke-virtual {v9, p3}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    new-instance p3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p3, v6, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {p3, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mAnimator:Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;

    invoke-virtual {v5, p3}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    sget p3, Lcom/wdullaer/materialdatetimepicker/R$id;->mdtp_ok:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    new-instance v5, Lv92;

    invoke-direct {v5, p0, v2}, Lv92;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v5, Lcom/wdullaer/materialdatetimepicker/R$font;->robotomedium:I

    invoke-static {p2, v5}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mOkString:Ljava/lang/String;

    if-eqz v5, :cond_a

    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_a
    iget v5, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mOkResid:I

    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setText(I)V

    :goto_4
    sget v5, Lcom/wdullaer/materialdatetimepicker/R$id;->mdtp_cancel:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    new-instance v6, Lw92;

    invoke-direct {v6, p0, v2}, Lw92;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v6, Lcom/wdullaer/materialdatetimepicker/R$font;->robotomedium:I

    invoke-static {p2, v6}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCancelString:Ljava/lang/String;

    if-eqz v6, :cond_b

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_b
    iget v6, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCancelResid:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    :goto_5
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->isCancelable()Z

    move-result v6

    const/16 v7, 0x8

    if-eqz v6, :cond_c

    move v6, v2

    goto :goto_6

    :cond_c
    move v6, v7

    :goto_6
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mAccentColor:Ljava/lang/Integer;

    if-nez v6, :cond_d

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/wdullaer/materialdatetimepicker/Utils;->getAccentColorFromThemeIfAvailable(Landroid/content/Context;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mAccentColor:Ljava/lang/Integer;

    :cond_d
    iget-object v8, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDatePickerHeaderView:Landroid/widget/TextView;

    if-eqz v8, :cond_e

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Lcom/wdullaer/materialdatetimepicker/Utils;->darkenColor(I)I

    move-result v6

    invoke-virtual {v8, v6}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_e
    sget v6, Lcom/wdullaer/materialdatetimepicker/R$id;->mdtp_day_picker_selected_date_layout:I

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v8, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mAccentColor:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mOkColor:Ljava/lang/Integer;

    if-nez v6, :cond_f

    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mAccentColor:Ljava/lang/Integer;

    iput-object v6, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mOkColor:Ljava/lang/Integer;

    :cond_f
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p3, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCancelColor:Ljava/lang/Integer;

    if-nez p3, :cond_10

    iget-object p3, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mAccentColor:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCancelColor:Ljava/lang/Integer;

    :cond_10
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {v5, p3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p3

    if-nez p3, :cond_11

    sget p3, Lcom/wdullaer/materialdatetimepicker/R$id;->mdtp_done_background:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    invoke-direct {p0, v2}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->updateDisplay(Z)V

    invoke-direct {p0, v0}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->setCurrentView(I)V

    if-eq v3, v1, :cond_13

    if-nez v0, :cond_12

    iget-object p3, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDayPickerView:Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;

    invoke-virtual {p3, v3}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;->postSetSelection(I)V

    goto :goto_7

    :cond_12
    const/4 p3, 0x1

    if-ne v0, p3, :cond_13

    iget-object p3, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mYearPickerView:Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;

    invoke-virtual {p3, v3, v4}, Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;->postSetSelectionFromTop(II)V

    :cond_13
    :goto_7
    new-instance p3, Lcom/wdullaer/materialdatetimepicker/HapticFeedbackController;

    invoke-direct {p3, p2}, Lcom/wdullaer/materialdatetimepicker/HapticFeedbackController;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mHapticFeedbackController:Lcom/wdullaer/materialdatetimepicker/HapticFeedbackController;

    return-object p1
.end method

.method public onDayOfMonthSelected(III)V
    .locals 2

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->updatePickers()V

    invoke-direct {p0, v1}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->updateDisplay(Z)V

    iget-boolean p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mAutoDismiss:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->notifyOnDateListener()V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mHapticFeedbackController:Lcom/wdullaer/materialdatetimepicker/HapticFeedbackController;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/HapticFeedbackController;->stop()V

    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDismissOnPause:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mHapticFeedbackController:Lcom/wdullaer/materialdatetimepicker/HapticFeedbackController;

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/HapticFeedbackController;->start()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const-string v2, "year"

    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const-string v2, "month"

    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const-string v2, "day"

    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "week_start"

    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mWeekStart:I

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "current_view"

    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCurrentView:I

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCurrentView:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDayPickerView:Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;->getMostVisiblePosition()I

    move-result v0

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mYearPickerView:Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mYearPickerView:Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;

    invoke-virtual {v1}, Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;->getFirstPositionOffset()I

    move-result v1

    const-string v2, "list_position_offset"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    const-string v1, "list_position"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "highlighted_days"

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->highlightedDays:Ljava/util/HashSet;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "theme_dark"

    iget-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mThemeDark:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "theme_dark_changed"

    iget-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mThemeDarkChanged:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mAccentColor:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    const-string v1, "accent"

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    const-string v0, "vibrate"

    iget-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mVibrate:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "dismiss"

    iget-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDismissOnPause:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "auto_dismiss"

    iget-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mAutoDismiss:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "default_view"

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDefaultView:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "title"

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ok_resid"

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mOkResid:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "ok_string"

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mOkString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mOkColor:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    const-string v1, "ok_color"

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_3
    const-string v0, "cancel_resid"

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCancelResid:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "cancel_string"

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCancelString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCancelColor:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    const-string v1, "cancel_color"

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_4
    const-string v0, "version"

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mVersion:Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$Version;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "scrollorientation"

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mScrollOrientation:Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$ScrollOrientation;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "timezone"

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mTimezone:Ljava/util/TimeZone;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "daterangelimiter"

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDateRangeLimiter:Lcom/wdullaer/materialdatetimepicker/date/DateRangeLimiter;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "locale"

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public onYearSelected(I)V
    .locals 2

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->adjustDayInMonthIfNeeded(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->updatePickers()V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->setCurrentView(I)V

    invoke-direct {p0, v1}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->updateDisplay(Z)V

    return-void
.end method

.method public registerOnDateChangedListener(Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$OnDateChangedListener;)V
    .locals 0

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mListeners:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setAccentColor(I)V
    .locals 3

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    const/16 v2, 0xff

    invoke-static {v2, v0, v1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mAccentColor:Ljava/lang/Integer;

    return-void
.end method

.method public setAccentColor(Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mAccentColor:Ljava/lang/Integer;

    return-void
.end method

.method public setCancelColor(I)V
    .locals 3

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    const/16 v2, 0xff

    invoke-static {v2, v0, v1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCancelColor:Ljava/lang/Integer;

    return-void
.end method

.method public setCancelColor(Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCancelColor:Ljava/lang/Integer;

    return-void
.end method

.method public setCancelText(I)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCancelString:Ljava/lang/String;

    iput p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCancelResid:I

    return-void
.end method

.method public setCancelText(Ljava/lang/String;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCancelString:Ljava/lang/String;

    return-void
.end method

.method public setDateRangeLimiter(Lcom/wdullaer/materialdatetimepicker/date/DateRangeLimiter;)V
    .locals 0

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDateRangeLimiter:Lcom/wdullaer/materialdatetimepicker/date/DateRangeLimiter;

    return-void
.end method

.method public setDisabledDays([Ljava/util/Calendar;)V
    .locals 1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDefaultLimiter:Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;

    invoke-virtual {v0, p1}, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->setDisabledDays([Ljava/util/Calendar;)V

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDayPickerView:Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;->onChange()V

    :cond_0
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    const/4 v0, 0x7

    if-gt p1, v0, :cond_1

    iput p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mWeekStart:I

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDayPickerView:Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;->onChange()V

    :cond_0
    return-void

    :cond_1
    const-string p0, "Value must be between Calendar.SUNDAY and Calendar.SATURDAY"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void
.end method

.method public setHighlightedDays([Ljava/util/Calendar;)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->highlightedDays:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Calendar;

    invoke-static {v2}, Lcom/wdullaer/materialdatetimepicker/Utils;->trimToMidnight(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDayPickerView:Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;->onChange()V

    :cond_1
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mLocale:Ljava/util/Locale;

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mTimezone:Ljava/util/TimeZone;

    invoke-static {v0, p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mWeekStart:I

    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy"

    invoke-direct {p0, v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->YEAR_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, "MMM"

    invoke-direct {p0, v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->MONTH_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, "dd"

    invoke-direct {p0, v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->DAY_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public setMaxDate(Ljava/util/Calendar;)V
    .locals 1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDefaultLimiter:Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;

    invoke-virtual {v0, p1}, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->setMaxDate(Ljava/util/Calendar;)V

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDayPickerView:Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;->onChange()V

    :cond_0
    return-void
.end method

.method public setMinDate(Ljava/util/Calendar;)V
    .locals 1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDefaultLimiter:Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;

    invoke-virtual {v0, p1}, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->setMinDate(Ljava/util/Calendar;)V

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDayPickerView:Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;->onChange()V

    :cond_0
    return-void
.end method

.method public setOkColor(I)V
    .locals 3

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    const/16 v2, 0xff

    invoke-static {v2, v0, v1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mOkColor:Ljava/lang/Integer;

    return-void
.end method

.method public setOkColor(Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mOkColor:Ljava/lang/Integer;

    return-void
.end method

.method public setOkText(I)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mOkString:Ljava/lang/String;

    iput p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mOkResid:I

    return-void
.end method

.method public setOkText(Ljava/lang/String;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mOkString:Ljava/lang/String;

    return-void
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method public setOnDateSetListener(Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$OnDateSetListener;)V
    .locals 0

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCallBack:Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$OnDateSetListener;

    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method public setScrollOrientation(Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$ScrollOrientation;)V
    .locals 0

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mScrollOrientation:Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$ScrollOrientation;

    return-void
.end method

.method public setSelectableDays([Ljava/util/Calendar;)V
    .locals 1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDefaultLimiter:Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;

    invoke-virtual {v0, p1}, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->setSelectableDays([Ljava/util/Calendar;)V

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDayPickerView:Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;->onChange()V

    :cond_0
    return-void
.end method

.method public setThemeDark(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mThemeDark:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mThemeDarkChanged:Z

    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mTimezone:Ljava/util/TimeZone;

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    sget-object p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->YEAR_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    sget-object p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->MONTH_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    sget-object p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->DAY_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$Version;)V
    .locals 0

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mVersion:Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$Version;

    return-void
.end method

.method public setYearRange(II)V
    .locals 1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDefaultLimiter:Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;

    invoke-virtual {v0, p1, p2}, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->setYearRange(II)V

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDayPickerView:Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerGroup;->onChange()V

    :cond_0
    return-void
.end method

.method public showYearPickerFirst(Z)V
    .locals 0

    iput p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDefaultView:I

    return-void
.end method

.method public tryVibrate()V
    .locals 1

    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mVibrate:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mHapticFeedbackController:Lcom/wdullaer/materialdatetimepicker/HapticFeedbackController;

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/HapticFeedbackController;->tryVibrate()V

    :cond_0
    return-void
.end method

.method public unregisterOnDateChangedListener(Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$OnDateChangedListener;)V
    .locals 0

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mListeners:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public vibrate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mVibrate:Z

    return-void
.end method
