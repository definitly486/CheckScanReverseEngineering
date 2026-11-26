.class Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/wdullaer/materialdatetimepicker/date/DateRangeLimiter;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_START_YEAR:I = 0x76c


# instance fields
.field private disabledDays:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation
.end field

.field private transient mController:Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;

.field private mMaxDate:Ljava/util/Calendar;

.field private mMaxYear:I

.field private mMinDate:Ljava/util/Calendar;

.field private mMinYear:I

.field private selectableDays:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter$1;

    invoke-direct {v0}, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter$1;-><init>()V

    sput-object v0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x76c

    .line 71
    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->mMinYear:I

    const/16 v0, 0x834

    .line 72
    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->mMaxYear:I

    .line 73
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->selectableDays:Ljava/util/TreeSet;

    .line 74
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->disabledDays:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x76c

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->mMinYear:I

    const/16 v0, 0x834

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->mMaxYear:I

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->selectableDays:Ljava/util/TreeSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->disabledDays:Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->mMinYear:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->mMaxYear:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->selectableDays:Ljava/util/TreeSet;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->disabledDays:Ljava/util/HashSet;

    return-void
.end method

.method private isAfterMax(Ljava/util/Calendar;)Z
    .locals 2

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->mMaxDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->mMaxYear:I

    if-le p1, p0, :cond_2

    :cond_1
    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private isBeforeMin(Ljava/util/Calendar;)Z
    .locals 2

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->mMinDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->mMinYear:I

    if-ge p1, p0, :cond_2

    :cond_1
    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private isDisabled(Ljava/util/Calendar;)Z
    .locals 2

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->disabledDays:Ljava/util/HashSet;

    invoke-static {p1}, Lcom/wdullaer/materialdatetimepicker/Utils;->trimToMidnight(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->isBeforeMin(Ljava/util/Calendar;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->isAfterMax(Ljava/util/Calendar;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private isOutOfRange(Ljava/util/Calendar;)Z
    .locals 1

    .line 34
    invoke-static {p1}, Lcom/wdullaer/materialdatetimepicker/Utils;->trimToMidnight(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 35
    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->isDisabled(Ljava/util/Calendar;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->isSelectable(Ljava/util/Calendar;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private isSelectable(Ljava/util/Calendar;)Z
    .locals 1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->selectableDays:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->selectableDays:Ljava/util/TreeSet;

    invoke-static {p1}, Lcom/wdullaer/materialdatetimepicker/Utils;->trimToMidnight(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getDisabledDays()[Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->disabledDays:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->disabledDays:Ljava/util/HashSet;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/Calendar;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/util/Calendar;

    return-object p0
.end method

.method public getEndDate()Ljava/util/Calendar;
    .locals 2

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->selectableDays:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->selectableDays:Ljava/util/TreeSet;

    invoke-virtual {p0}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Calendar;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->mMaxDate:Ljava/util/Calendar;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Calendar;

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->mController:Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;

    if-nez v0, :cond_2

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    iget p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->mMaxYear:I

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x5

    const/16 v1, 0x1f

    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x2

    const/16 v1, 0xb

    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    return-object v0
.end method

.method public getMaxDate()Ljava/util/Calendar;
    .locals 0

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->mMaxDate:Ljava/util/Calendar;

    return-object p0
.end method

.method public getMaxYear()I
    .locals 3

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->selectableDays:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->selectableDays:Ljava/util/TreeSet;

    invoke-virtual {p0}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Calendar;

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->mMaxDate:Ljava/util/Calendar;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->mMaxYear:I

    if-ge v0, v2, :cond_1

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0

    :cond_1
    iget p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->mMaxYear:I

    return p0
.end method

.method public getMinDate()Ljava/util/Calendar;
    .locals 0

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->mMinDate:Ljava/util/Calendar;

    return-object p0
.end method

.method public getMinYear()I
    .locals 3

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->selectableDays:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->selectableDays:Ljava/util/TreeSet;

    invoke-virtual {p0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Calendar;

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->mMinDate:Ljava/util/Calendar;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->mMinYear:I

    if-le v0, v2, :cond_1

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0

    :cond_1
    iget p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->mMinYear:I

    return p0
.end method

.method public getSelectableDays()[Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->selectableDays:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->selectableDays:Ljava/util/TreeSet;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/Calendar;

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/util/Calendar;

    return-object p0
.end method

.method public getStartDate()Ljava/util/Calendar;
    .locals 2

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->selectableDays:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->selectableDays:Ljava/util/TreeSet;

    invoke-virtual {p0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Calendar;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->mMinDate:Ljava/util/Calendar;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Calendar;

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->mController:Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;

    if-nez v0, :cond_2

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iget p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->mMinYear:I

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x5

    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x2

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    return-object v0
.end method

.method public isOutOfRange(III)Z
    .locals 2

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->mController:Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x2

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x5

    invoke-virtual {v0, p1, p3}, Ljava/util/Calendar;->set(II)V

    invoke-direct {p0, v0}, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->isOutOfRange(Ljava/util/Calendar;)Z

    move-result p0

    return p0
.end method

.method public setController(Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;)V
    .locals 0

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->mController:Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;

    return-void
.end method

.method public setDisabledDays([Ljava/util/Calendar;)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->disabledDays:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Calendar;

    invoke-static {v2}, Lcom/wdullaer/materialdatetimepicker/Utils;->trimToMidnight(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setMaxDate(Ljava/util/Calendar;)V
    .locals 0

    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    invoke-static {p1}, Lcom/wdullaer/materialdatetimepicker/Utils;->trimToMidnight(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->mMaxDate:Ljava/util/Calendar;

    return-void
.end method

.method public setMinDate(Ljava/util/Calendar;)V
    .locals 0

    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    invoke-static {p1}, Lcom/wdullaer/materialdatetimepicker/Utils;->trimToMidnight(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->mMinDate:Ljava/util/Calendar;

    return-void
.end method

.method public setSelectableDays([Ljava/util/Calendar;)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->selectableDays:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Calendar;

    invoke-static {v2}, Lcom/wdullaer/materialdatetimepicker/Utils;->trimToMidnight(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setToNearestDate(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 6

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->selectableDays:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->selectableDays:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->selectableDays:Ljava/util/TreeSet;

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->lower(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    move-object v2, v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_4

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long/2addr p0, v4

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-gez p0, :cond_3

    invoke-virtual {v1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Calendar;

    return-object p0

    :cond_3
    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Calendar;

    return-object p0

    :cond_4
    :goto_1
    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    move-object p1, v2

    :goto_2
    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->mController:Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;

    if-nez p0, :cond_6

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p0

    goto :goto_3

    :cond_6
    invoke-interface {p0}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p0

    :goto_3
    invoke-virtual {p1, p0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Calendar;

    return-object p0

    :cond_7
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->disabledDays:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x5

    if-nez v0, :cond_c

    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->isBeforeMin(Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->getStartDate()Ljava/util/Calendar;

    move-result-object v0

    goto :goto_4

    :cond_8
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    :goto_4
    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->isAfterMax(Ljava/util/Calendar;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->getEndDate()Ljava/util/Calendar;

    move-result-object v3

    goto :goto_5

    :cond_9
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Calendar;

    :goto_5
    invoke-direct {p0, v0}, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->isDisabled(Ljava/util/Calendar;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-direct {p0, v3}, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->isDisabled(Ljava/util/Calendar;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    const/4 v4, -0x1

    invoke-virtual {v3, v2, v4}, Ljava/util/Calendar;->add(II)V

    goto :goto_5

    :cond_a
    invoke-direct {p0, v3}, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->isDisabled(Ljava/util/Calendar;)Z

    move-result v4

    if-nez v4, :cond_b

    return-object v3

    :cond_b
    invoke-direct {p0, v0}, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->isDisabled(Ljava/util/Calendar;)Z

    move-result v3

    if-nez v3, :cond_c

    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->mController:Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;

    if-nez v0, :cond_d

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    goto :goto_6

    :cond_d
    invoke-interface {v0}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    :goto_6
    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->isBeforeMin(Ljava/util/Calendar;)Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_f

    iget-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->mMinDate:Ljava/util/Calendar;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Calendar;

    return-object p0

    :cond_e
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    iget p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->mMinYear:I

    invoke-virtual {p1, v1, p0}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x0

    invoke-virtual {p1, v4, p0}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p1, v2, v1}, Ljava/util/Calendar;->set(II)V

    invoke-static {p1}, Lcom/wdullaer/materialdatetimepicker/Utils;->trimToMidnight(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p0

    return-object p0

    :cond_f
    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->isAfterMax(Ljava/util/Calendar;)Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->mMaxDate:Ljava/util/Calendar;

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Calendar;

    return-object p0

    :cond_10
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    iget p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->mMaxYear:I

    invoke-virtual {p1, v1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xb

    invoke-virtual {p1, v4, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0x1f

    invoke-virtual {p1, v2, p0}, Ljava/util/Calendar;->set(II)V

    invoke-static {p1}, Lcom/wdullaer/materialdatetimepicker/Utils;->trimToMidnight(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p0

    return-object p0

    :cond_11
    return-object p1
.end method

.method public setYearRange(II)V
    .locals 0

    if-lt p2, p1, :cond_0

    iput p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->mMinYear:I

    iput p2, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->mMaxYear:I

    return-void

    :cond_0
    const-string p0, "Year end must be larger than or equal to year start"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->mMinYear:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->mMaxYear:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object p2, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object p2, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->selectableDays:Ljava/util/TreeSet;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;->disabledDays:Ljava/util/HashSet;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
