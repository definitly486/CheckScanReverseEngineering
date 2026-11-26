.class public Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;
.super Landroidx/appcompat/app/AppCompatDialogFragment;
.source "SourceFile"

# interfaces
.implements Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;
.implements Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$KeyboardListener;,
        Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;,
        Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;,
        Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Version;
    }
.end annotation


# static fields
.field public static final AM:I = 0x0

.field public static final HOUR_INDEX:I = 0x0

.field private static final KEY_ACCENT:Ljava/lang/String; = "accent"

.field private static final KEY_CANCEL_COLOR:Ljava/lang/String; = "cancel_color"

.field private static final KEY_CANCEL_RESID:Ljava/lang/String; = "cancel_resid"

.field private static final KEY_CANCEL_STRING:Ljava/lang/String; = "cancel_string"

.field private static final KEY_CURRENT_ITEM_SHOWING:Ljava/lang/String; = "current_item_showing"

.field private static final KEY_DISMISS:Ljava/lang/String; = "dismiss"

.field private static final KEY_ENABLE_MINUTES:Ljava/lang/String; = "enable_minutes"

.field private static final KEY_ENABLE_SECONDS:Ljava/lang/String; = "enable_seconds"

.field private static final KEY_INITIAL_TIME:Ljava/lang/String; = "initial_time"

.field private static final KEY_IN_KB_MODE:Ljava/lang/String; = "in_kb_mode"

.field private static final KEY_IS_24_HOUR_VIEW:Ljava/lang/String; = "is_24_hour_view"

.field private static final KEY_LOCALE:Ljava/lang/String; = "locale"

.field private static final KEY_OK_COLOR:Ljava/lang/String; = "ok_color"

.field private static final KEY_OK_RESID:Ljava/lang/String; = "ok_resid"

.field private static final KEY_OK_STRING:Ljava/lang/String; = "ok_string"

.field private static final KEY_THEME_DARK:Ljava/lang/String; = "theme_dark"

.field private static final KEY_THEME_DARK_CHANGED:Ljava/lang/String; = "theme_dark_changed"

.field private static final KEY_TIMEPOINTLIMITER:Ljava/lang/String; = "timepoint_limiter"

.field private static final KEY_TITLE:Ljava/lang/String; = "dialog_title"

.field private static final KEY_TYPED_TIMES:Ljava/lang/String; = "typed_times"

.field private static final KEY_VERSION:Ljava/lang/String; = "version"

.field private static final KEY_VIBRATE:Ljava/lang/String; = "vibrate"

.field public static final MINUTE_INDEX:I = 0x1

.field public static final PM:I = 0x1

.field private static final PULSE_ANIMATOR_DELAY:I = 0x12c

.field public static final SECOND_INDEX:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TimePickerDialog"


# instance fields
.field private mAccentColor:Ljava/lang/Integer;

.field private mAllowAutoAdvance:Z

.field private mAmKeyCode:I

.field private mAmPmLayout:Landroid/view/View;

.field private mAmText:Ljava/lang/String;

.field private mAmTextView:Landroid/widget/TextView;

.field private mCallback:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;

.field private mCancelButton:Landroid/widget/Button;

.field private mCancelColor:Ljava/lang/Integer;

.field private mCancelResid:I

.field private mCancelString:Ljava/lang/String;

.field private mDefaultLimiter:Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;

.field private mDeletedKeyFormat:Ljava/lang/String;

.field private mDismissOnPause:Z

.field private mDoublePlaceholderText:Ljava/lang/String;

.field private mEnableMinutes:Z

.field private mEnableSeconds:Z

.field private mHapticFeedbackController:Lcom/wdullaer/materialdatetimepicker/HapticFeedbackController;

.field private mHourPickerDescription:Ljava/lang/String;

.field private mHourSpaceView:Landroid/widget/TextView;

.field private mHourView:Landroid/widget/TextView;

.field private mInKbMode:Z

.field private mInitialTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

.field private mIs24HourMode:Z

.field private mLegalTimesTree:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

.field private mLimiter:Lcom/wdullaer/materialdatetimepicker/time/TimepointLimiter;

.field private mLocale:Ljava/util/Locale;

.field private mMinutePickerDescription:Ljava/lang/String;

.field private mMinuteSpaceView:Landroid/widget/TextView;

.field private mMinuteView:Landroid/widget/TextView;

.field private mOkButton:Landroid/widget/Button;

.field private mOkColor:Ljava/lang/Integer;

.field private mOkResid:I

.field private mOkString:Ljava/lang/String;

.field private mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mPlaceholderText:C

.field private mPmKeyCode:I

.field private mPmText:Ljava/lang/String;

.field private mPmTextView:Landroid/widget/TextView;

.field private mSecondPickerDescription:Ljava/lang/String;

.field private mSecondSpaceView:Landroid/widget/TextView;

.field private mSecondView:Landroid/widget/TextView;

.field private mSelectHours:Ljava/lang/String;

.field private mSelectMinutes:Ljava/lang/String;

.field private mSelectSeconds:Ljava/lang/String;

.field private mSelectedColor:I

.field private mThemeDark:Z

.field private mThemeDarkChanged:Z

.field private mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

.field private mTitle:Ljava/lang/String;

.field private mTypedTimes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUnselectedColor:I

.field private mVersion:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Version;

.field private mVibrate:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAccentColor:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOkColor:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mCancelColor:Ljava/lang/Integer;

    new-instance v0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;

    invoke-direct {v0}, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;-><init>()V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mDefaultLimiter:Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mLimiter:Lcom/wdullaer/materialdatetimepicker/time/TimepointLimiter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mLocale:Ljava/util/Locale;

    return-void
.end method

.method public static synthetic access$100(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->processKeyUp(I)Z

    move-result p0

    return p0
.end method

.method private addKeyIfLegal(I)Z
    .locals 5

    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mEnableMinutes:Z

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mEnableSeconds:Z

    if-nez v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x6

    :goto_0
    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mEnableSeconds:Z

    if-nez v1, :cond_1

    const/4 v2, 0x2

    :cond_1
    iget-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v1, v2, :cond_3

    :cond_2
    iget-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-nez v1, :cond_4

    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    return v3

    :cond_4
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->isTypedTimeLegalSoFar()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->deleteLastTypedKey()I

    return v3

    :cond_5
    invoke-static {p1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->getValFromKeyCode(I)I

    move-result p1

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mLocale:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v4, "%d"

    invoke-static {v3, v4, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/wdullaer/materialdatetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr v2, v1

    if-gt p1, v2, :cond_6

    iget-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_6
    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOkButton:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_7
    return v1
.end method

.method public static synthetic d(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->lambda$onCreateView$0(Landroid/view/View;)V

    return-void
.end method

.method private deleteLastTypedKey()I
    .locals 2

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOkButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return v0
.end method

.method public static synthetic e(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->lambda$onCreateView$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->lambda$onCreateView$2(Landroid/view/View;)V

    return-void
.end method

.method private finishKbMode(Z)V
    .locals 8

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInKbMode:Z

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    filled-new-array {v1, v1, v1}, [Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->getEnteredTime([Ljava/lang/Boolean;)[I

    move-result-object v1

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    new-instance v4, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    aget v5, v1, v0

    aget v6, v1, v2

    const/4 v7, 0x2

    aget v7, v1, v7

    invoke-direct {v4, v5, v6, v7}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;-><init>(III)V

    invoke-virtual {v3, v4}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->setTime(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)V

    iget-boolean v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    const/4 v4, 0x3

    aget v1, v1, v4

    invoke-virtual {v3, v1}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->setAmOrPm(I)V

    :cond_0
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0, v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->updateDisplay(Z)V

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {p0, v2}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->trySettingInputEnabled(Z)Z

    :cond_2
    return-void
.end method

.method public static synthetic g(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->lambda$onCreateView$1(Landroid/view/View;)V

    return-void
.end method

.method private generateLegalTimesTree()V
    .locals 16

    move-object/from16 v0, p0

    new-instance v1, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    const/4 v2, 0x0

    new-array v3, v2, [I

    invoke-direct {v1, v3}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    iput-object v1, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mLegalTimesTree:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    iget-boolean v1, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mEnableMinutes:Z

    const/4 v3, 0x7

    const/16 v4, 0x8

    const/16 v5, 0x9

    const/16 v6, 0xa

    if-nez v1, :cond_0

    iget-boolean v7, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-eqz v7, :cond_0

    new-instance v1, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    filled-new-array {v3, v4}, [I

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    iget-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mLegalTimesTree:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    invoke-virtual {v2, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    new-instance v2, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    new-array v7, v6, [I

    fill-array-data v7, :array_0

    invoke-direct {v2, v7}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    invoke-virtual {v1, v2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    new-instance v1, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    filled-new-array {v5}, [I

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mLegalTimesTree:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    invoke-virtual {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    new-instance v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    filled-new-array {v3, v4, v5, v6}, [I

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    invoke-virtual {v1, v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    return-void

    :cond_0
    const/4 v7, 0x1

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-nez v1, :cond_1

    new-instance v1, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    invoke-direct {v0, v2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v2

    invoke-direct {v0, v7}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v6

    filled-new-array {v2, v6}, [I

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    new-instance v2, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    filled-new-array {v4}, [I

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    iget-object v6, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mLegalTimesTree:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    invoke-virtual {v6, v2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    invoke-virtual {v2, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    new-instance v6, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    filled-new-array {v3, v4, v5}, [I

    move-result-object v3

    invoke-direct {v6, v3}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    invoke-virtual {v2, v6}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    invoke-virtual {v6, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    new-instance v2, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    new-array v3, v4, [I

    fill-array-data v3, :array_1

    invoke-direct {v2, v3}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mLegalTimesTree:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    invoke-virtual {v0, v2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    invoke-virtual {v2, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    return-void

    :cond_1
    iget-boolean v1, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    const/4 v8, 0x6

    const/16 v10, 0xc

    const/16 v11, 0xd

    const/16 v12, 0xe

    const/16 v13, 0xf

    const/16 v14, 0x10

    if-eqz v1, :cond_3

    new-instance v1, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    new-array v2, v8, [I

    fill-array-data v2, :array_2

    invoke-direct {v1, v2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    new-instance v2, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    new-array v7, v6, [I

    fill-array-data v7, :array_3

    invoke-direct {v2, v7}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    invoke-virtual {v1, v2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    iget-boolean v7, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mEnableSeconds:Z

    if-eqz v7, :cond_2

    new-instance v7, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    new-array v15, v8, [I

    fill-array-data v15, :array_4

    invoke-direct {v7, v15}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    new-instance v15, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    new-array v9, v6, [I

    fill-array-data v9, :array_5

    invoke-direct {v15, v9}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    invoke-virtual {v7, v15}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    invoke-virtual {v2, v7}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    :cond_2
    new-instance v7, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    filled-new-array {v3, v4}, [I

    move-result-object v9

    invoke-direct {v7, v9}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    iget-object v9, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mLegalTimesTree:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    invoke-virtual {v9, v7}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    new-instance v9, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    new-array v8, v8, [I

    fill-array-data v8, :array_6

    invoke-direct {v9, v8}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    invoke-virtual {v7, v9}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    invoke-virtual {v9, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    new-instance v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    filled-new-array {v11, v12, v13, v14}, [I

    move-result-object v15

    invoke-direct {v8, v15}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    invoke-virtual {v9, v8}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    new-instance v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    filled-new-array {v11, v12, v13, v14}, [I

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    invoke-virtual {v7, v8}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    invoke-virtual {v8, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    new-instance v7, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    filled-new-array {v5}, [I

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    iget-object v8, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mLegalTimesTree:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    invoke-virtual {v8, v7}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    new-instance v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    filled-new-array {v3, v4, v5, v6}, [I

    move-result-object v4

    invoke-direct {v8, v4}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    invoke-virtual {v7, v8}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    invoke-virtual {v8, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    new-instance v4, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    const/16 v5, 0xb

    filled-new-array {v5, v10}, [I

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    invoke-virtual {v7, v4}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    invoke-virtual {v4, v2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    new-instance v2, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    new-array v3, v3, [I

    fill-array-data v3, :array_7

    invoke-direct {v2, v3}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mLegalTimesTree:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    invoke-virtual {v0, v2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    invoke-virtual {v2, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    return-void

    :cond_3
    new-instance v1, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    invoke-direct {v0, v2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v2

    invoke-direct {v0, v7}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v7

    filled-new-array {v2, v7}, [I

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    new-instance v2, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    new-array v7, v8, [I

    fill-array-data v7, :array_8

    invoke-direct {v2, v7}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    new-instance v7, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    new-array v9, v6, [I

    fill-array-data v9, :array_9

    invoke-direct {v7, v9}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    invoke-virtual {v7, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    invoke-virtual {v2, v7}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    new-instance v7, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    filled-new-array {v4}, [I

    move-result-object v9

    invoke-direct {v7, v9}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    iget-object v9, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mLegalTimesTree:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    invoke-virtual {v9, v7}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    invoke-virtual {v7, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    new-instance v9, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    filled-new-array {v3, v4, v5}, [I

    move-result-object v3

    invoke-direct {v9, v3}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    invoke-virtual {v7, v9}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    invoke-virtual {v9, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    new-instance v3, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    new-array v5, v8, [I

    fill-array-data v5, :array_a

    invoke-direct {v3, v5}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    invoke-virtual {v9, v3}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    invoke-virtual {v3, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    new-instance v5, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    new-array v15, v6, [I

    fill-array-data v15, :array_b

    invoke-direct {v5, v15}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    invoke-virtual {v3, v5}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    invoke-virtual {v5, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    iget-boolean v3, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mEnableSeconds:Z

    if-eqz v3, :cond_4

    invoke-virtual {v5, v2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    :cond_4
    new-instance v3, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    filled-new-array {v11, v12, v13, v14}, [I

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    invoke-virtual {v9, v3}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    invoke-virtual {v3, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    iget-boolean v5, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mEnableSeconds:Z

    if-eqz v5, :cond_5

    invoke-virtual {v3, v2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    :cond_5
    new-instance v3, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    const/16 v5, 0xb

    filled-new-array {v6, v5, v10}, [I

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    invoke-virtual {v7, v3}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    new-instance v5, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    new-array v7, v6, [I

    fill-array-data v7, :array_c

    invoke-direct {v5, v7}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    invoke-virtual {v3, v5}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    invoke-virtual {v5, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    iget-boolean v3, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mEnableSeconds:Z

    if-eqz v3, :cond_6

    invoke-virtual {v5, v2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    :cond_6
    new-instance v3, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    new-array v4, v4, [I

    fill-array-data v4, :array_d

    invoke-direct {v3, v4}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    iget-object v4, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mLegalTimesTree:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    invoke-virtual {v4, v3}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    invoke-virtual {v3, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    new-instance v4, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    new-array v5, v8, [I

    fill-array-data v5, :array_e

    invoke-direct {v4, v5}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    invoke-virtual {v3, v4}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    new-instance v3, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    new-array v5, v6, [I

    fill-array-data v5, :array_f

    invoke-direct {v3, v5}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    invoke-virtual {v4, v3}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    invoke-virtual {v3, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    iget-boolean v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mEnableSeconds:Z

    if-eqz v0, :cond_7

    invoke-virtual {v3, v2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    :cond_7
    return-void

    :array_0
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
    .end array-data

    :array_1
    .array-data 4
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
    .end array-data

    :array_2
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
    .end array-data

    :array_3
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
    .end array-data

    :array_4
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
    .end array-data

    :array_5
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
    .end array-data

    :array_7
    .array-data 4
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
    .end array-data

    :array_8
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
    .end array-data

    :array_9
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
    .end array-data

    :array_a
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
    .end array-data

    :array_b
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
    .end array-data

    :array_c
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
    .end array-data

    :array_d
    .array-data 4
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
    .end array-data

    :array_e
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
    .end array-data

    :array_f
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
    .end array-data
.end method

.method private getAmOrPmKeyCode(I)I
    .locals 8

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmKeyCode:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mPmKeyCode:I

    if-ne v0, v2, :cond_3

    :cond_0
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mPmText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-ge v4, v5, :cond_3

    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmText:Ljava/lang/String;

    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mLocale:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mPmText:Ljava/lang/String;

    iget-object v7, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mLocale:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_2

    const/4 v4, 0x2

    new-array v7, v4, [C

    aput-char v5, v7, v3

    aput-char v6, v7, v1

    invoke-virtual {v0, v7}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v5, v0

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    aget-object v3, v0, v3

    invoke-virtual {v3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    iput v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmKeyCode:I

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mPmKeyCode:I

    goto :goto_1

    :cond_1
    const-string v0, "TimePickerDialog"

    const-string v3, "Unable to find keycodes for AM and PM."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-nez p1, :cond_4

    iget p0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmKeyCode:I

    return p0

    :cond_4
    if-ne p1, v1, :cond_5

    iget p0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mPmKeyCode:I

    return p0

    :cond_5
    return v2
.end method

.method private getEnteredTime([Ljava/lang/Boolean;)[I
    .locals 13

    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-static {v4, v0}, Ldd2;->b(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v5

    if-ne v0, v5, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    invoke-direct {p0, v4}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v5

    if-ne v0, v5, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    move v5, v1

    goto :goto_1

    :cond_2
    move v0, v3

    move v5, v4

    :goto_1
    iget-boolean v6, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mEnableSeconds:Z

    if-eqz v6, :cond_3

    move v6, v1

    goto :goto_2

    :cond_3
    move v6, v2

    :goto_2
    move v9, v2

    move v7, v3

    move v8, v5

    :goto_3
    iget-object v10, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-gt v8, v10, :cond_e

    iget-object v10, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-static {v8, v10}, Ldd2;->b(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->getValFromKeyCode(I)I

    move-result v10

    iget-boolean v11, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mEnableSeconds:Z

    if-eqz v11, :cond_5

    if-ne v8, v5, :cond_4

    move v9, v10

    goto :goto_4

    :cond_4
    add-int/lit8 v11, v5, 0x1

    if-ne v8, v11, :cond_5

    mul-int/lit8 v11, v10, 0xa

    add-int/2addr v9, v11

    if-nez v10, :cond_5

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v11, p1, v1

    :cond_5
    :goto_4
    iget-boolean v11, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mEnableMinutes:Z

    if-eqz v11, :cond_b

    add-int v11, v5, v6

    if-ne v8, v11, :cond_6

    move v7, v10

    goto :goto_7

    :cond_6
    add-int/lit8 v12, v11, 0x1

    if-ne v8, v12, :cond_8

    mul-int/lit8 v11, v10, 0xa

    add-int/2addr v11, v7

    if-nez v10, :cond_7

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v7, p1, v4

    :cond_7
    move v7, v11

    goto :goto_7

    :cond_8
    add-int/lit8 v12, v11, 0x2

    if-ne v8, v12, :cond_9

    goto :goto_6

    :cond_9
    add-int/lit8 v11, v11, 0x3

    if-ne v8, v11, :cond_d

    mul-int/lit8 v11, v10, 0xa

    add-int/2addr v11, v3

    if-nez v10, :cond_a

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, p1, v2

    :cond_a
    :goto_5
    move v3, v11

    goto :goto_7

    :cond_b
    add-int v11, v5, v6

    if-ne v8, v11, :cond_c

    :goto_6
    move v3, v10

    goto :goto_7

    :cond_c
    add-int/lit8 v11, v11, 0x1

    if-ne v8, v11, :cond_d

    mul-int/lit8 v11, v10, 0xa

    add-int/2addr v11, v3

    if-nez v10, :cond_a

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, p1, v2

    goto :goto_5

    :cond_d
    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_e
    filled-new-array {v3, v7, v9, v0}, [I

    move-result-object p0

    return-object p0
.end method

.method private static getValFromKeyCode(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    :pswitch_0
    const/16 p0, 0x9

    return p0

    :pswitch_1
    const/16 p0, 0x8

    return p0

    :pswitch_2
    const/4 p0, 0x7

    return p0

    :pswitch_3
    const/4 p0, 0x6

    return p0

    :pswitch_4
    const/4 p0, 0x5

    return p0

    :pswitch_5
    const/4 p0, 0x4

    return p0

    :pswitch_6
    const/4 p0, 0x3

    return p0

    :pswitch_7
    const/4 p0, 0x2

    return p0

    :pswitch_8
    const/4 p0, 0x1

    return p0

    :pswitch_9
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic h(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->lambda$onCreateView$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->lambda$onCreateView$5(Landroid/view/View;)V

    return-void
.end method

.method private isTypedTimeFullyLegal()Z
    .locals 4

    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    filled-new-array {v0, v0, v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->getEnteredTime([Ljava/lang/Boolean;)[I

    move-result-object p0

    aget v0, p0, v2

    if-ltz v0, :cond_0

    aget v0, p0, v1

    if-ltz v0, :cond_0

    const/16 v3, 0x3c

    if-ge v0, v3, :cond_0

    const/4 v0, 0x2

    aget p0, p0, v0

    if-ltz p0, :cond_0

    if-ge p0, v3, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_0
    return v1
.end method

.method private isTypedTimeLegalSoFar()Z
    .locals 2

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mLegalTimesTree:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->canReach(I)Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$onCreateView$0(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p1, v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->setCurrentItemShowing(IZZZ)V

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->tryVibrate()V

    return-void
.end method

.method private synthetic lambda$onCreateView$1(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p1, v0, p1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->setCurrentItemShowing(IZZZ)V

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->tryVibrate()V

    return-void
.end method

.method private synthetic lambda$onCreateView$2(Landroid/view/View;)V
    .locals 2

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, v1, p1, v0, p1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->setCurrentItemShowing(IZZZ)V

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->tryVibrate()V

    return-void
.end method

.method private synthetic lambda$onCreateView$3(Landroid/view/View;)V
    .locals 0

    iget-boolean p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInKbMode:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->finishKbMode(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->tryVibrate()V

    :goto_0
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->notifyOnDateListener()V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onCreateView$4(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->tryVibrate()V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCreateView$5(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->isAmDisabled()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->isPmDisabled()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->tryVibrate()V

    iget-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getIsCurrentlyAmOrPm()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {p0, p1}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->setAmOrPm(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static newInstance(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;IIIZ)Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;
    .locals 6

    .line 22
    new-instance v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;

    invoke-direct {v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;-><init>()V

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 23
    invoke-virtual/range {v0 .. v5}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->initialize(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;IIIZ)V

    return-object v0
.end method

.method public static newInstance(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;IIZ)Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-static {p0, p1, p2, v0, p3}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->newInstance(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;IIIZ)Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;Z)Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {p0, v1, v0, p1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->newInstance(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;IIZ)Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;

    move-result-object p0

    return-object p0
.end method

.method private processKeyUp(I)Z
    .locals 4

    const/16 v0, 0x3d

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    iget-boolean p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInKbMode:Z

    if-eqz p1, :cond_9

    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, v2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->finishKbMode(Z)V

    :cond_0
    return v2

    :cond_1
    const/16 v0, 0x42

    if-ne p1, v0, :cond_5

    iget-boolean p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInKbMode:Z

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    invoke-direct {p0, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->finishKbMode(Z)V

    :cond_3
    iget-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mCallback:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getHours()I

    move-result v0

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v1}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v1

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v3}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getSeconds()I

    move-result v3

    invoke-interface {p1, p0, v0, v1, v3}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;->onTimeSet(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;III)V

    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return v2

    :cond_5
    const/16 v0, 0x43

    if-ne p1, v0, :cond_8

    iget-boolean p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInKbMode:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->deleteLastTypedKey()I

    move-result p1

    invoke-direct {p0, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v0

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmText:Ljava/lang/String;

    goto :goto_0

    :cond_6
    invoke-direct {p0, v2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v0

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mPmText:Ljava/lang/String;

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mLocale:Ljava/util/Locale;

    invoke-static {p1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->getValFromKeyCode(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v3, "%d"

    invoke-static {v0, v3, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mDeletedKeyFormat:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/wdullaer/materialdatetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    invoke-direct {p0, v2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->updateDisplay(Z)V

    goto :goto_1

    :cond_8
    const/4 v0, 0x7

    if-eq p1, v0, :cond_a

    const/16 v0, 0x8

    if-eq p1, v0, :cond_a

    const/16 v0, 0x9

    if-eq p1, v0, :cond_a

    const/16 v0, 0xa

    if-eq p1, v0, :cond_a

    const/16 v0, 0xb

    if-eq p1, v0, :cond_a

    const/16 v0, 0xc

    if-eq p1, v0, :cond_a

    const/16 v0, 0xd

    if-eq p1, v0, :cond_a

    const/16 v0, 0xe

    if-eq p1, v0, :cond_a

    const/16 v0, 0xf

    if-eq p1, v0, :cond_a

    const/16 v0, 0x10

    if-eq p1, v0, :cond_a

    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-nez v0, :cond_9

    invoke-direct {p0, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v0

    if-eq p1, v0, :cond_a

    invoke-direct {p0, v2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v0

    if-ne p1, v0, :cond_9

    goto :goto_2

    :cond_9
    :goto_1
    return v1

    :cond_a
    :goto_2
    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInKbMode:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    if-nez v0, :cond_b

    const-string p0, "TimePickerDialog"

    const-string p1, "Unable to initiate keyboard mode, TimePicker was null."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_b
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->tryStartingKbMode(I)V

    return v2

    :cond_c
    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->addKeyIfLegal(I)Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-direct {p0, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->updateDisplay(Z)V

    :cond_d
    return v2
.end method

.method private roundToNearest(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->roundToNearest(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    move-result-object p0

    return-object p0
.end method

.method private setCurrentItemShowing(IZZZ)V
    .locals 5

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v0, p1, p2}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->setCurrentItemShowing(IZ)V

    const/4 p2, 0x1

    const-string v0, ": "

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    if-eq p1, p2, :cond_1

    invoke-virtual {v1}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getSeconds()I

    move-result v1

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSecondPickerDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSelectSeconds:Ljava/lang/String;

    invoke-static {p4, v0}, Lcom/wdullaer/materialdatetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p4, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSecondView:Landroid/widget/TextView;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v1

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMinutePickerDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz p4, :cond_2

    iget-object p4, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSelectMinutes:Ljava/lang/String;

    invoke-static {p4, v0}, Lcom/wdullaer/materialdatetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_2
    iget-object p4, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v1}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getHours()I

    move-result v1

    iget-boolean v2, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-nez v2, :cond_4

    rem-int/lit8 v1, v1, 0xc

    :cond_4
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mHourPickerDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz p4, :cond_5

    iget-object p4, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSelectHours:Ljava/lang/String;

    invoke-static {p4, v0}, Lcom/wdullaer/materialdatetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_5
    iget-object p4, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mHourView:Landroid/widget/TextView;

    :goto_0
    if-nez p1, :cond_6

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSelectedColor:I

    goto :goto_1

    :cond_6
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mUnselectedColor:I

    :goto_1
    if-ne p1, p2, :cond_7

    iget p2, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSelectedColor:I

    goto :goto_2

    :cond_7
    iget p2, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mUnselectedColor:I

    :goto_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_8

    iget p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSelectedColor:I

    goto :goto_3

    :cond_8
    iget p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mUnselectedColor:I

    :goto_3
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mHourView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSecondView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const p0, 0x3f59999a    # 0.85f

    const p1, 0x3f8ccccd    # 1.1f

    invoke-static {p4, p0, p1}, Lcom/wdullaer/materialdatetimepicker/Utils;->getPulseAnimator(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object p0

    if-eqz p3, :cond_9

    const-wide/16 p1, 0x12c

    invoke-virtual {p0, p1, p2}, Landroid/animation/Animator;->setStartDelay(J)V

    :cond_9
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private setHour(IZ)V
    .locals 2

    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-eqz v0, :cond_0

    const-string v0, "%02d"

    goto :goto_0

    :cond_0
    rem-int/lit8 p1, p1, 0xc

    const-string v0, "%d"

    if-nez p1, :cond_1

    const/16 p1, 0xc

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mLocale:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mHourView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mHourSpaceView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-static {p0, p1}, Lcom/wdullaer/materialdatetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private setMinute(I)V
    .locals 2

    const/16 v0, 0x3c

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mLocale:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "%02d"

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-static {v0, p1}, Lcom/wdullaer/materialdatetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMinuteSpaceView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setSecond(I)V
    .locals 2

    const/16 v0, 0x3c

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mLocale:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "%02d"

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-static {v0, p1}, Lcom/wdullaer/materialdatetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSecondView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSecondSpaceView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private tryStartingKbMode(I)V
    .locals 2

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->trySettingInputEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->addKeyIfLegal(I)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInKbMode:Z

    iget-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOkButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    invoke-direct {p0, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->updateDisplay(Z)V

    :cond_1
    return-void
.end method

.method private updateAmPmDisplay(I)V
    .locals 2

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mVersion:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Version;

    sget-object v1, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Version;->VERSION_2:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Version;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmTextView:Landroid/widget/TextView;

    if-nez p1, :cond_0

    iget p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSelectedColor:I

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mPmTextView:Landroid/widget/TextView;

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mUnselectedColor:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmText:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/wdullaer/materialdatetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mUnselectedColor:I

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mPmTextView:Landroid/widget/TextView;

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSelectedColor:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mPmText:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/wdullaer/materialdatetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mPmTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmText:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/wdullaer/materialdatetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mPmTextView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmText:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mPmTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    iget-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mPmText:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mPmText:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/wdullaer/materialdatetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mPmTextView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mPmText:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mDoublePlaceholderText:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateDisplay(Z)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getHours()I

    move-result p1

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v2}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v2

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v3}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getSeconds()I

    move-result v3

    invoke-direct {p0, p1, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->setHour(IZ)V

    invoke-direct {p0, v2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->setMinute(I)V

    invoke-direct {p0, v3}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->setSecond(I)V

    iget-boolean v2, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-nez v2, :cond_1

    const/16 v2, 0xc

    if-ge p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->updateAmPmDisplay(I)V

    :cond_1
    iget-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result p1

    invoke-direct {p0, p1, v1, v1, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->setCurrentItemShowing(IZZZ)V

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOkButton:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void

    :cond_2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    filled-new-array {p1, p1, p1}, [Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->getEnteredTime([Ljava/lang/Boolean;)[I

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-string v4, "%2d"

    const-string v5, "%02d"

    if-eqz v3, :cond_3

    move-object v3, v5

    goto :goto_1

    :cond_3
    move-object v3, v4

    :goto_1
    aget-object v6, p1, v1

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v6, v5

    goto :goto_2

    :cond_4
    move-object v6, v4

    :goto_2
    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    move-object v4, v5

    :cond_5
    aget p1, v2, v0

    const/16 v0, 0x20

    const/4 v5, -0x1

    if-ne p1, v5, :cond_6

    iget-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mDoublePlaceholderText:Ljava/lang/String;

    goto :goto_3

    :cond_6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-char v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mPlaceholderText:C

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    :goto_3
    aget v3, v2, v1

    if-ne v3, v5, :cond_7

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mDoublePlaceholderText:Ljava/lang/String;

    goto :goto_4

    :cond_7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-char v6, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mPlaceholderText:C

    invoke-virtual {v3, v0, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    :goto_4
    const/4 v6, 0x2

    aget v6, v2, v6

    if-ne v6, v5, :cond_8

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mDoublePlaceholderText:Ljava/lang/String;

    goto :goto_5

    :cond_8
    aget v1, v2, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-char v4, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mPlaceholderText:C

    invoke-virtual {v1, v0, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    :goto_5
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mHourView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mHourSpaceView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mHourView:Landroid/widget/TextView;

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mUnselectedColor:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMinuteSpaceView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mUnselectedColor:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSecondView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSecondSpaceView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSecondView:Landroid/widget/TextView;

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mUnselectedColor:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-boolean p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-nez p1, :cond_9

    const/4 p1, 0x3

    aget p1, v2, p1

    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->updateAmPmDisplay(I)V

    :cond_9
    return-void
.end method


# virtual methods
.method public advancePicker(I)V
    .locals 4

    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAllowAutoAdvance:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ". "

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_1

    iget-boolean v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mEnableMinutes:Z

    if-eqz v3, :cond_1

    invoke-direct {p0, v2, v2, v2, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->setCurrentItemShowing(IZZZ)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSelectHours:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-static {p0, p1}, Lcom/wdullaer/materialdatetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    if-ne p1, v2, :cond_2

    iget-boolean p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mEnableSeconds:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    invoke-direct {p0, p1, v2, v2, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->setCurrentItemShowing(IZZZ)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSelectMinutes:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getSeconds()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-static {p0, p1}, Lcom/wdullaer/materialdatetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public dismissOnPause(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mDismissOnPause:Z

    return-void
.end method

.method public enableMinutes(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mEnableSeconds:Z

    :cond_0
    iput-boolean p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mEnableMinutes:Z

    return-void
.end method

.method public enablePicker()V
    .locals 1

    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->finishKbMode(Z)V

    return-void
.end method

.method public enableSeconds(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mEnableMinutes:Z

    :cond_0
    iput-boolean p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mEnableSeconds:Z

    return-void
.end method

.method public getAccentColor()I
    .locals 0

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAccentColor:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getOnTimeSetListener()Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;
    .locals 0

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mCallback:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;

    return-object p0
.end method

.method public getPickerResolution()Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;
    .locals 1

    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mEnableSeconds:Z

    if-eqz v0, :cond_0

    sget-object p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;->SECOND:Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;

    return-object p0

    :cond_0
    iget-boolean p0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mEnableMinutes:Z

    if-eqz p0, :cond_1

    sget-object p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;->MINUTE:Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;

    return-object p0

    :cond_1
    sget-object p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;->HOUR:Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;

    return-object p0
.end method

.method public getSelectedTime()Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    .locals 0

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getTime()Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getVersion()Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Version;
    .locals 0

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mVersion:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Version;

    return-object p0
.end method

.method public initialize(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;IIIZ)V
    .locals 0

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mCallback:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;

    new-instance p1, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-direct {p1, p2, p3, p4}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;-><init>(III)V

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInitialTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    iput-boolean p5, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInKbMode:Z

    const-string p2, ""

    iput-object p2, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTitle:Ljava/lang/String;

    iput-boolean p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mThemeDark:Z

    iput-boolean p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mThemeDarkChanged:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mVibrate:Z

    iput-boolean p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mDismissOnPause:Z

    iput-boolean p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mEnableSeconds:Z

    iput-boolean p2, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mEnableMinutes:Z

    sget p1, Lcom/wdullaer/materialdatetimepicker/R$string;->mdtp_ok:I

    iput p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOkResid:I

    sget p1, Lcom/wdullaer/materialdatetimepicker/R$string;->mdtp_cancel:I

    iput p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mCancelResid:I

    sget-object p1, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Version;->VERSION_2:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Version;

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mVersion:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Version;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    return-void
.end method

.method public is24HourMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    return p0
.end method

.method public isAmDisabled()Z
    .locals 0

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mLimiter:Lcom/wdullaer/materialdatetimepicker/time/TimepointLimiter;

    invoke-interface {p0}, Lcom/wdullaer/materialdatetimepicker/time/TimepointLimiter;->isAmDisabled()Z

    move-result p0

    return p0
.end method

.method public isOutOfRange(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)Z
    .locals 1

    const/4 v0, 0x2

    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->isOutOfRange(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;I)Z

    move-result p0

    return p0
.end method

.method public isOutOfRange(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;I)Z
    .locals 1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mLimiter:Lcom/wdullaer/materialdatetimepicker/time/TimepointLimiter;

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->getPickerResolution()Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;

    move-result-object p0

    invoke-interface {v0, p1, p2, p0}, Lcom/wdullaer/materialdatetimepicker/time/TimepointLimiter;->isOutOfRange(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;ILcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;)Z

    move-result p0

    return p0
.end method

.method public isPmDisabled()Z
    .locals 0

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mLimiter:Lcom/wdullaer/materialdatetimepicker/time/TimepointLimiter;

    invoke-interface {p0}, Lcom/wdullaer/materialdatetimepicker/time/TimepointLimiter;->isPmDisabled()Z

    move-result p0

    return p0
.end method

.method public isThemeDark()Z
    .locals 0

    iget-boolean p0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mThemeDark:Z

    return p0
.end method

.method public notifyOnDateListener()V
    .locals 4

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mCallback:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v1}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getHours()I

    move-result v1

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v2}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v2

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v3}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getSeconds()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;->onTimeSet(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;III)V

    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    :cond_0
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

    invoke-virtual {p0, v0, p1, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    if-eqz p1, :cond_5

    const-string v0, "initial_time"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "is_24_hour_view"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInitialTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    const-string v0, "in_kb_mode"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInKbMode:Z

    const-string v0, "dialog_title"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTitle:Ljava/lang/String;

    const-string v0, "theme_dark"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mThemeDark:Z

    const-string v0, "theme_dark_changed"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mThemeDarkChanged:Z

    const-string v0, "accent"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAccentColor:Ljava/lang/Integer;

    :cond_0
    const-string v0, "vibrate"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mVibrate:Z

    const-string v0, "dismiss"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mDismissOnPause:Z

    const-string v0, "enable_seconds"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mEnableSeconds:Z

    const-string v0, "enable_minutes"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mEnableMinutes:Z

    const-string v0, "ok_resid"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOkResid:I

    const-string v0, "ok_string"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOkString:Ljava/lang/String;

    const-string v0, "ok_color"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOkColor:Ljava/lang/Integer;

    :cond_1
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOkColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOkColor:Ljava/lang/Integer;

    :cond_2
    const-string v0, "cancel_resid"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mCancelResid:I

    const-string v0, "cancel_string"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mCancelString:Ljava/lang/String;

    const-string v0, "cancel_color"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mCancelColor:Ljava/lang/Integer;

    :cond_3
    const-string v0, "version"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Version;

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mVersion:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Version;

    const-string v0, "timepoint_limiter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/wdullaer/materialdatetimepicker/time/TimepointLimiter;

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mLimiter:Lcom/wdullaer/materialdatetimepicker/time/TimepointLimiter;

    const-string v0, "locale"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mLocale:Ljava/util/Locale;

    iget-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mLimiter:Lcom/wdullaer/materialdatetimepicker/time/TimepointLimiter;

    instance-of v0, p1, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;

    goto :goto_0

    :cond_4
    new-instance p1, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;

    invoke-direct {p1}, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mDefaultLimiter:Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;

    :cond_5
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mVersion:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Version;

    sget-object v1, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Version;->VERSION_1:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Version;

    if-ne v0, v1, :cond_0

    sget v0, Lcom/wdullaer/materialdatetimepicker/R$layout;->mdtp_time_picker_dialog:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/wdullaer/materialdatetimepicker/R$layout;->mdtp_time_picker_dialog_v2:I

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$KeyboardListener;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$KeyboardListener;-><init>(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$1;)V

    sget v0, Lcom/wdullaer/materialdatetimepicker/R$id;->mdtp_time_picker_dialog:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAccentColor:Ljava/lang/Integer;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wdullaer/materialdatetimepicker/Utils;->getAccentColorFromThemeIfAvailable(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAccentColor:Ljava/lang/Integer;

    :cond_1
    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mThemeDarkChanged:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-boolean v2, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mThemeDark:Z

    invoke-static {v0, v2}, Lcom/wdullaer/materialdatetimepicker/Utils;->isDarkTheme(Landroid/content/Context;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mThemeDark:Z

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/wdullaer/materialdatetimepicker/R$string;->mdtp_hour_picker_description:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mHourPickerDescription:Ljava/lang/String;

    sget v3, Lcom/wdullaer/materialdatetimepicker/R$string;->mdtp_select_hours:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSelectHours:Ljava/lang/String;

    sget v3, Lcom/wdullaer/materialdatetimepicker/R$string;->mdtp_minute_picker_description:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMinutePickerDescription:Ljava/lang/String;

    sget v3, Lcom/wdullaer/materialdatetimepicker/R$string;->mdtp_select_minutes:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSelectMinutes:Ljava/lang/String;

    sget v3, Lcom/wdullaer/materialdatetimepicker/R$string;->mdtp_second_picker_description:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSecondPickerDescription:Ljava/lang/String;

    sget v3, Lcom/wdullaer/materialdatetimepicker/R$string;->mdtp_select_seconds:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSelectSeconds:Ljava/lang/String;

    sget v3, Lcom/wdullaer/materialdatetimepicker/R$color;->mdtp_white:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSelectedColor:I

    sget v3, Lcom/wdullaer/materialdatetimepicker/R$color;->mdtp_accent_color_focused:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mUnselectedColor:I

    sget v3, Lcom/wdullaer/materialdatetimepicker/R$id;->mdtp_hours:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mHourView:Landroid/widget/TextView;

    invoke-virtual {v3, p2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    sget v3, Lcom/wdullaer/materialdatetimepicker/R$id;->mdtp_hour_space:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mHourSpaceView:Landroid/widget/TextView;

    sget v3, Lcom/wdullaer/materialdatetimepicker/R$id;->mdtp_minutes_space:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMinuteSpaceView:Landroid/widget/TextView;

    sget v3, Lcom/wdullaer/materialdatetimepicker/R$id;->mdtp_minutes:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    invoke-virtual {v3, p2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    sget v3, Lcom/wdullaer/materialdatetimepicker/R$id;->mdtp_seconds_space:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSecondSpaceView:Landroid/widget/TextView;

    sget v3, Lcom/wdullaer/materialdatetimepicker/R$id;->mdtp_seconds:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSecondView:Landroid/widget/TextView;

    invoke-virtual {v3, p2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    sget v3, Lcom/wdullaer/materialdatetimepicker/R$id;->mdtp_am_label:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    sget v3, Lcom/wdullaer/materialdatetimepicker/R$id;->mdtp_pm_label:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mPmTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    sget v3, Lcom/wdullaer/materialdatetimepicker/R$id;->mdtp_ampm_layout:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmPmLayout:Landroid/view/View;

    new-instance v3, Ljava/text/DateFormatSymbols;

    iget-object v4, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mLocale:Ljava/util/Locale;

    invoke-direct {v3, v4}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v3}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v3

    aget-object v4, v3, v1

    iput-object v4, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmText:Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mPmText:Ljava/lang/String;

    new-instance v3, Lcom/wdullaer/materialdatetimepicker/HapticFeedbackController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/wdullaer/materialdatetimepicker/HapticFeedbackController;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mHapticFeedbackController:Lcom/wdullaer/materialdatetimepicker/HapticFeedbackController;

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    if-eqz v3, :cond_3

    new-instance v3, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v5}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getHours()I

    move-result v5

    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v6}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v6

    iget-object v7, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v7}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getSeconds()I

    move-result v7

    invoke-direct {v3, v5, v6, v7}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;-><init>(III)V

    iput-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInitialTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    :cond_3
    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInitialTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-direct {p0, v3}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->roundToNearest(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    move-result-object v3

    iput-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInitialTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    sget v3, Lcom/wdullaer/materialdatetimepicker/R$id;->mdtp_time_picker:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    iput-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v3, p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->setOnValueSelectedListener(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;)V

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v3, p2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    iget-object v7, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mLocale:Ljava/util/Locale;

    iget-object v9, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInitialTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    iget-boolean v10, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    move-object v8, p0

    invoke-virtual/range {v5 .. v10}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->initialize(Landroid/content/Context;Ljava/util/Locale;Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;Lcom/wdullaer/materialdatetimepicker/time/Timepoint;Z)V

    if-eqz p3, :cond_4

    const-string p0, "current_item_showing"

    invoke-virtual {p3, p0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p3, p0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_1

    :cond_4
    move p0, v1

    :goto_1
    invoke-direct {v8, p0, v1, v4, v4}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->setCurrentItemShowing(IZZZ)V

    iget-object p0, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object p0, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mHourView:Landroid/widget/TextView;

    new-instance v3, Lku8;

    invoke-direct {v3, v8, v1}, Lku8;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    new-instance v3, Llu8;

    invoke-direct {v3, v8}, Llu8;-><init>(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;)V

    invoke-virtual {p0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSecondView:Landroid/widget/TextView;

    new-instance v3, Lg84;

    invoke-direct {v3, v8, v4}, Lg84;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p0, Lcom/wdullaer/materialdatetimepicker/R$id;->mdtp_ok:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    iput-object p0, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOkButton:Landroid/widget/Button;

    new-instance v3, Lvv5;

    invoke-direct {v3, v8, v4}, Lvv5;-><init>(Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {p0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOkButton:Landroid/widget/Button;

    invoke-virtual {p0, p2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object p0, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOkButton:Landroid/widget/Button;

    sget p2, Lcom/wdullaer/materialdatetimepicker/R$font;->robotomedium:I

    invoke-static {v2, p2}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p0, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOkString:Ljava/lang/String;

    iget-object p2, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOkButton:Landroid/widget/Button;

    if-eqz p0, :cond_5

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    iget p0, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOkResid:I

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(I)V

    :goto_2
    sget p0, Lcom/wdullaer/materialdatetimepicker/R$id;->mdtp_cancel:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    iput-object p0, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mCancelButton:Landroid/widget/Button;

    new-instance p2, Lwv5;

    invoke-direct {p2, v8, v4}, Lwv5;-><init>(Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mCancelButton:Landroid/widget/Button;

    sget p2, Lcom/wdullaer/materialdatetimepicker/R$font;->robotomedium:I

    invoke-static {v2, p2}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p0, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mCancelString:Ljava/lang/String;

    iget-object p2, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mCancelButton:Landroid/widget/Button;

    if-eqz p0, :cond_6

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_6
    iget p0, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mCancelResid:I

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(I)V

    :goto_3
    iget-object p0, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v8}, Landroidx/fragment/app/DialogFragment;->isCancelable()Z

    move-result p2

    const/16 v3, 0x8

    if-eqz p2, :cond_7

    move p2, v1

    goto :goto_4

    :cond_7
    move p2, v3

    :goto_4
    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    iget-boolean p0, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-eqz p0, :cond_8

    iget-object p0, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmPmLayout:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_8
    new-instance p0, Lmu8;

    invoke-direct {p0, v8, v1}, Lmu8;-><init>(Ljava/lang/Object;I)V

    iget-object p2, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmTextView:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mPmTextView:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmPmLayout:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mVersion:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Version;

    sget-object p2, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Version;->VERSION_2:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Version;

    if-ne p0, p2, :cond_9

    iget-object p0, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmTextView:Landroid/widget/TextView;

    iget-object p2, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmText:Ljava/lang/String;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mPmTextView:Landroid/widget/TextView;

    iget-object p2, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mPmText:Ljava/lang/String;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    iget-object p0, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInitialTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->isAM()Z

    move-result p0

    xor-int/2addr p0, v4

    invoke-direct {v8, p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->updateAmPmDisplay(I)V

    :goto_5
    iget-boolean p0, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mEnableSeconds:Z

    if-nez p0, :cond_a

    iget-object p0, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSecondView:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    sget p0, Lcom/wdullaer/materialdatetimepicker/R$id;->mdtp_separator_seconds:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    iget-boolean p0, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mEnableMinutes:Z

    if-nez p0, :cond_b

    iget-object p0, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMinuteSpaceView:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    sget p0, Lcom/wdullaer/materialdatetimepicker/R$id;->mdtp_separator:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 p2, -0x1

    const/16 v5, 0xd

    const/4 v6, 0x2

    const/4 v7, -0x2

    if-ne p0, v6, :cond_10

    iget-boolean p0, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mEnableMinutes:Z

    const/16 v9, 0xe

    if-nez p0, :cond_c

    iget-boolean p0, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mEnableSeconds:Z

    if-nez p0, :cond_c

    new-instance p0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget v5, Lcom/wdullaer/materialdatetimepicker/R$id;->mdtp_center_view:I

    invoke-virtual {p0, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v5, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mHourSpaceView:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean p0, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-eqz p0, :cond_14

    new-instance p0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget v5, Lcom/wdullaer/materialdatetimepicker/R$id;->mdtp_hour_space:I

    invoke-virtual {p0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v5, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmPmLayout:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_6

    :cond_c
    iget-boolean p0, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mEnableSeconds:Z

    if-nez p0, :cond_d

    iget-boolean v10, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-eqz v10, :cond_d

    new-instance p0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget v5, Lcom/wdullaer/materialdatetimepicker/R$id;->mdtp_center_view:I

    invoke-virtual {p0, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget v5, Lcom/wdullaer/materialdatetimepicker/R$id;->mdtp_separator:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_6

    :cond_d
    const/4 v10, 0x3

    if-nez p0, :cond_e

    new-instance p0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget v9, Lcom/wdullaer/materialdatetimepicker/R$id;->mdtp_center_view:I

    invoke-virtual {p0, v6, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget v6, Lcom/wdullaer/materialdatetimepicker/R$id;->mdtp_separator:I

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget v5, Lcom/wdullaer/materialdatetimepicker/R$id;->mdtp_center_view:I

    invoke-virtual {p0, v10, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v5, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmPmLayout:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_6

    :cond_e
    iget-boolean p0, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-eqz p0, :cond_f

    new-instance p0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget v9, Lcom/wdullaer/materialdatetimepicker/R$id;->mdtp_seconds_space:I

    invoke-virtual {p0, v6, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget v6, Lcom/wdullaer/materialdatetimepicker/R$id;->mdtp_separator:I

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v5, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSecondSpaceView:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_6

    :cond_f
    new-instance p0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v5, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSecondSpaceView:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget v5, Lcom/wdullaer/materialdatetimepicker/R$id;->mdtp_seconds_space:I

    invoke-virtual {p0, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget v5, Lcom/wdullaer/materialdatetimepicker/R$id;->mdtp_separator:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget v5, Lcom/wdullaer/materialdatetimepicker/R$id;->mdtp_seconds_space:I

    invoke-virtual {p0, v10, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v5, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmPmLayout:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_6

    :cond_10
    iget-boolean p0, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-eqz p0, :cond_11

    iget-boolean p0, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mEnableSeconds:Z

    if-nez p0, :cond_11

    iget-boolean p0, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mEnableMinutes:Z

    if-eqz p0, :cond_11

    new-instance p0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget v5, Lcom/wdullaer/materialdatetimepicker/R$id;->mdtp_separator:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    :cond_11
    iget-boolean p0, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mEnableMinutes:Z

    if-nez p0, :cond_12

    iget-boolean p0, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mEnableSeconds:Z

    if-nez p0, :cond_12

    new-instance p0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v5, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mHourSpaceView:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean p0, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-nez p0, :cond_14

    new-instance p0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget v5, Lcom/wdullaer/materialdatetimepicker/R$id;->mdtp_hour_space:I

    invoke-virtual {p0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v5, 0x4

    sget v6, Lcom/wdullaer/materialdatetimepicker/R$id;->mdtp_hour_space:I

    invoke-virtual {p0, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v5, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmPmLayout:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    :cond_12
    iget-boolean p0, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mEnableSeconds:Z

    if-eqz p0, :cond_14

    sget p0, Lcom/wdullaer/materialdatetimepicker/R$id;->mdtp_separator:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget v9, Lcom/wdullaer/materialdatetimepicker/R$id;->mdtp_minutes_space:I

    invoke-virtual {v6, v1, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v9, 0xf

    invoke-virtual {v6, v9, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p0, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean p0, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-nez p0, :cond_13

    new-instance p0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v5, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMinuteSpaceView:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    :cond_13
    new-instance p0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget v5, Lcom/wdullaer/materialdatetimepicker/R$id;->mdtp_center_view:I

    invoke-virtual {p0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v5, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMinuteSpaceView:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_14
    :goto_6
    iput-boolean v4, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAllowAutoAdvance:Z

    iget-object p0, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInitialTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result p0

    invoke-direct {v8, p0, v4}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->setHour(IZ)V

    iget-object p0, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInitialTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result p0

    invoke-direct {v8, p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->setMinute(I)V

    iget-object p0, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInitialTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getSecond()I

    move-result p0

    invoke-direct {v8, p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->setSecond(I)V

    sget p0, Lcom/wdullaer/materialdatetimepicker/R$string;->mdtp_time_placeholder:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mDoublePlaceholderText:Ljava/lang/String;

    sget p0, Lcom/wdullaer/materialdatetimepicker/R$string;->mdtp_deleted_key:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mDeletedKeyFormat:Ljava/lang/String;

    iget-object p0, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mDoublePlaceholderText:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    iput-char p0, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mPlaceholderText:C

    iput p2, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mPmKeyCode:I

    iput p2, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmKeyCode:I

    invoke-direct {v8}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->generateLegalTimesTree()V

    iget-boolean p0, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInKbMode:Z

    if-eqz p0, :cond_15

    if-eqz p3, :cond_15

    const-string p0, "typed_times"

    invoke-virtual {p3, p0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    iput-object p0, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-direct {v8, p2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->tryStartingKbMode(I)V

    iget-object p0, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mHourView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_7

    :cond_15
    iget-object p0, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    if-nez p0, :cond_16

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p0, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    :cond_16
    :goto_7
    sget p0, Lcom/wdullaer/materialdatetimepicker/R$id;->mdtp_time_picker_header:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iget-object p2, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_17

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_17
    iget-object p2, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAccentColor:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Lcom/wdullaer/materialdatetimepicker/Utils;->darkenColor(I)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    sget p0, Lcom/wdullaer/materialdatetimepicker/R$id;->mdtp_time_display_background:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    iget-object p2, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAccentColor:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    sget p0, Lcom/wdullaer/materialdatetimepicker/R$id;->mdtp_time_display:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    iget-object p2, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAccentColor:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p0, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOkColor:Ljava/lang/Integer;

    if-nez p0, :cond_18

    iget-object p0, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAccentColor:Ljava/lang/Integer;

    iput-object p0, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOkColor:Ljava/lang/Integer;

    :cond_18
    iget-object p2, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOkButton:Landroid/widget/Button;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p0, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mCancelColor:Ljava/lang/Integer;

    if-nez p0, :cond_19

    iget-object p0, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAccentColor:Ljava/lang/Integer;

    iput-object p0, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mCancelColor:Ljava/lang/Integer;

    :cond_19
    iget-object p2, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v8}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    if-nez p0, :cond_1a

    sget p0, Lcom/wdullaer/materialdatetimepicker/R$id;->mdtp_done_background:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1a
    sget p0, Lcom/wdullaer/materialdatetimepicker/R$color;->mdtp_circle_background:I

    invoke-static {v2, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    sget p2, Lcom/wdullaer/materialdatetimepicker/R$color;->mdtp_background_color:I

    invoke-static {v2, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    sget p3, Lcom/wdullaer/materialdatetimepicker/R$color;->mdtp_light_gray:I

    invoke-static {v2, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    sget v0, Lcom/wdullaer/materialdatetimepicker/R$color;->mdtp_light_gray:I

    invoke-static {v2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iget-object v1, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    iget-boolean v2, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mThemeDark:Z

    if-eqz v2, :cond_1b

    move p0, v0

    :cond_1b
    invoke-virtual {v1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    sget p0, Lcom/wdullaer/materialdatetimepicker/R$id;->mdtp_time_picker_dialog:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    iget-boolean v0, v8, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mThemeDark:Z

    if-eqz v0, :cond_1c

    move p2, p3

    :cond_1c
    invoke-virtual {p0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mHapticFeedbackController:Lcom/wdullaer/materialdatetimepicker/HapticFeedbackController;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/HapticFeedbackController;->stop()V

    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mDismissOnPause:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mHapticFeedbackController:Lcom/wdullaer/materialdatetimepicker/HapticFeedbackController;

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/HapticFeedbackController;->start()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    if-eqz v0, :cond_4

    const-string v1, "initial_time"

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getTime()Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "is_24_hour_view"

    iget-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v0

    const-string v1, "current_item_showing"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "in_kb_mode"

    iget-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInKbMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInKbMode:Z

    if-eqz v0, :cond_0

    const-string v0, "typed_times"

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_0
    const-string v0, "dialog_title"

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "theme_dark"

    iget-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mThemeDark:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "theme_dark_changed"

    iget-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mThemeDarkChanged:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAccentColor:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    const-string v1, "accent"

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    const-string v0, "vibrate"

    iget-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mVibrate:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "dismiss"

    iget-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mDismissOnPause:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "enable_seconds"

    iget-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mEnableSeconds:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "enable_minutes"

    iget-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mEnableMinutes:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "ok_resid"

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOkResid:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "ok_string"

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOkString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOkColor:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    const-string v1, "ok_color"

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    const-string v0, "cancel_resid"

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mCancelResid:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "cancel_string"

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mCancelString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mCancelColor:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    const-string v1, "cancel_color"

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_3
    const-string v0, "version"

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mVersion:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Version;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "timepoint_limiter"

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mLimiter:Lcom/wdullaer/materialdatetimepicker/time/TimepointLimiter;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "locale"

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_4
    return-void
.end method

.method public onValueSelected(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)V
    .locals 4

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->setHour(IZ)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mHourPickerDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->setMinute(I)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMinutePickerDescription:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getSecond()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->setSecond(I)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSecondPickerDescription:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getSecond()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->isAM()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->updateAmPmDisplay(I)V

    :cond_0
    return-void
.end method

.method public roundToNearest(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    .locals 1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mLimiter:Lcom/wdullaer/materialdatetimepicker/time/TimepointLimiter;

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->getPickerResolution()Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;

    move-result-object p0

    invoke-interface {v0, p1, p2, p0}, Lcom/wdullaer/materialdatetimepicker/time/TimepointLimiter;->roundToNearest(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    move-result-object p0

    return-object p0
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

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAccentColor:Ljava/lang/Integer;

    return-void
.end method

.method public setAccentColor(Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAccentColor:Ljava/lang/Integer;

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

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mCancelColor:Ljava/lang/Integer;

    return-void
.end method

.method public setCancelColor(Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mCancelColor:Ljava/lang/Integer;

    return-void
.end method

.method public setCancelText(I)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mCancelString:Ljava/lang/String;

    iput p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mCancelResid:I

    return-void
.end method

.method public setCancelText(Ljava/lang/String;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mCancelString:Ljava/lang/String;

    return-void
.end method

.method public setDisabledTimes([Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)V
    .locals 0

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mDefaultLimiter:Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;

    invoke-virtual {p0, p1}, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->setDisabledTimes([Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)V

    return-void
.end method

.method public setInitialSelection(II)V
    .locals 1

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, p1, p2, v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->setInitialSelection(III)V

    return-void
.end method

.method public setInitialSelection(III)V
    .locals 1

    .line 11
    new-instance v0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-direct {v0, p1, p2, p3}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;-><init>(III)V

    invoke-virtual {p0, v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->setInitialSelection(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)V

    return-void
.end method

.method public setInitialSelection(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->roundToNearest(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    move-result-object p1

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInitialTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInKbMode:Z

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mLocale:Ljava/util/Locale;

    return-void
.end method

.method public setMaxTime(III)V
    .locals 1

    new-instance v0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-direct {v0, p1, p2, p3}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;-><init>(III)V

    invoke-virtual {p0, v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->setMaxTime(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)V

    return-void
.end method

.method public setMaxTime(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)V
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mDefaultLimiter:Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;

    invoke-virtual {p0, p1}, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->setMaxTime(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)V

    return-void
.end method

.method public setMinTime(III)V
    .locals 1

    new-instance v0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-direct {v0, p1, p2, p3}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;-><init>(III)V

    invoke-virtual {p0, v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->setMinTime(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)V

    return-void
.end method

.method public setMinTime(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)V
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mDefaultLimiter:Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;

    invoke-virtual {p0, p1}, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->setMinTime(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)V

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

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOkColor:Ljava/lang/Integer;

    return-void
.end method

.method public setOkColor(Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOkColor:Ljava/lang/Integer;

    return-void
.end method

.method public setOkText(I)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOkString:Ljava/lang/String;

    iput p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOkResid:I

    return-void
.end method

.method public setOkText(Ljava/lang/String;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOkString:Ljava/lang/String;

    return-void
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method public setOnTimeSetListener(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;)V
    .locals 0

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mCallback:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;

    return-void
.end method

.method public setSelectableTimes([Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)V
    .locals 0

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mDefaultLimiter:Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;

    invoke-virtual {p0, p1}, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->setSelectableTimes([Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)V

    return-void
.end method

.method public setStartTime(II)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, p1, p2, v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->setStartTime(III)V

    return-void
.end method

.method public setStartTime(III)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-direct {v0, p1, p2, p3}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;-><init>(III)V

    invoke-direct {p0, v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->roundToNearest(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    move-result-object p1

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInitialTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInKbMode:Z

    return-void
.end method

.method public setThemeDark(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mThemeDark:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mThemeDarkChanged:Z

    return-void
.end method

.method public setTimeInterval(I)V
    .locals 1

    const/16 v0, 0x3c

    .line 50
    invoke-virtual {p0, p1, v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->setTimeInterval(II)V

    return-void
.end method

.method public setTimeInterval(II)V
    .locals 1

    const/16 v0, 0x3c

    .line 49
    invoke-virtual {p0, p1, p2, v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->setTimeInterval(III)V

    return-void
.end method

.method public setTimeInterval(III)V
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x18

    if-ge v2, v3, :cond_2

    move v3, v1

    :goto_1
    const/16 v4, 0x3c

    if-ge v3, v4, :cond_1

    move v5, v1

    :goto_2
    if-ge v5, v4, :cond_0

    new-instance v6, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-direct {v6, v2, v3, v5}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;-><init>(III)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v5, p3

    goto :goto_2

    :cond_0
    add-int/2addr v3, p2

    goto :goto_1

    :cond_1
    add-int/2addr v2, p1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {p0, p1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->setSelectableTimes([Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)V

    return-void
.end method

.method public setTimepointLimiter(Lcom/wdullaer/materialdatetimepicker/time/TimepointLimiter;)V
    .locals 0

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mLimiter:Lcom/wdullaer/materialdatetimepicker/time/TimepointLimiter;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Version;)V
    .locals 0

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mVersion:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Version;

    return-void
.end method

.method public tryVibrate()V
    .locals 1

    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mVibrate:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mHapticFeedbackController:Lcom/wdullaer/materialdatetimepicker/HapticFeedbackController;

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/HapticFeedbackController;->tryVibrate()V

    :cond_0
    return-void
.end method

.method public vibrate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mVibrate:Z

    return-void
.end method
