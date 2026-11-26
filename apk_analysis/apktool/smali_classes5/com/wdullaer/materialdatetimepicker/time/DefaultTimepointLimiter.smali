.class Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/wdullaer/materialdatetimepicker/time/TimepointLimiter;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private exclusiveSelectableTimes:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lcom/wdullaer/materialdatetimepicker/time/Timepoint;",
            ">;"
        }
    .end annotation
.end field

.field private mDisabledTimes:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lcom/wdullaer/materialdatetimepicker/time/Timepoint;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

.field private mMinTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

.field private mSelectableTimes:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lcom/wdullaer/materialdatetimepicker/time/Timepoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter$1;

    invoke-direct {v0}, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter$1;-><init>()V

    sput-object v0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->mSelectableTimes:Ljava/util/TreeSet;

    .line 91
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->mDisabledTimes:Ljava/util/TreeSet;

    .line 92
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->exclusiveSelectableTimes:Ljava/util/TreeSet;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->mSelectableTimes:Ljava/util/TreeSet;

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->mDisabledTimes:Ljava/util/TreeSet;

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->exclusiveSelectableTimes:Ljava/util/TreeSet;

    const-class v0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    iput-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->mMinTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->mMaxTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->mSelectableTimes:Ljava/util/TreeSet;

    sget-object v1, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->mDisabledTimes:Ljava/util/TreeSet;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->mSelectableTimes:Ljava/util/TreeSet;

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->mDisabledTimes:Ljava/util/TreeSet;

    invoke-direct {p0, p1, v0}, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->getExclusiveSelectableTimes(Ljava/util/TreeSet;Ljava/util/TreeSet;)Ljava/util/TreeSet;

    move-result-object p1

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->exclusiveSelectableTimes:Ljava/util/TreeSet;

    return-void
.end method

.method private getExclusiveSelectableTimes(Ljava/util/TreeSet;Ljava/util/TreeSet;)Ljava/util/TreeSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeSet<",
            "Lcom/wdullaer/materialdatetimepicker/time/Timepoint;",
            ">;",
            "Ljava/util/TreeSet<",
            "Lcom/wdullaer/materialdatetimepicker/time/Timepoint;",
            ">;)",
            "Ljava/util/TreeSet<",
            "Lcom/wdullaer/materialdatetimepicker/time/Timepoint;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/TreeSet;

    invoke-direct {p0, p1}, Ljava/util/TreeSet;-><init>(Ljava/util/SortedSet;)V

    invoke-virtual {p0, p2}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method private searchValidTimePoint(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    .locals 7

    new-instance v0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-direct {v0, p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;-><init>(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)V

    new-instance v1, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-direct {v1, p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;-><init>(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)V

    sget-object v2, Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;->MINUTE:Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;

    const/4 v3, 0x1

    if-ne p3, v2, :cond_0

    const/16 v2, 0x3c

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    sget-object v4, Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;->SECOND:Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;

    const/4 v5, 0x0

    if-ne p3, v4, :cond_1

    const/16 v2, 0xe10

    :cond_1
    mul-int/lit8 v4, v2, 0x18

    if-ge v5, v4, :cond_6

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, p3, v3}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->add(Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;I)V

    const/4 v4, -0x1

    invoke-virtual {v1, p3, v4}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->add(Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;I)V

    if-eqz p2, :cond_2

    invoke-virtual {v0, p2}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->get(Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;)I

    move-result v4

    invoke-virtual {p1, p2}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->get(Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;)I

    move-result v6

    if-ne v4, v6, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->mDisabledTimes:Ljava/util/TreeSet;

    invoke-virtual {v4, v0}, Ljava/util/TreeSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->mDisabledTimes:Ljava/util/TreeSet;

    invoke-virtual {v6, v0}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v0, v4, p3}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->equals(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v0, v6, p3}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->equals(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;)Z

    move-result v4

    if-nez v4, :cond_3

    return-object v0

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {v1, p2}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->get(Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;)I

    move-result v4

    invoke-virtual {p1, p2}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->get(Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;)I

    move-result v6

    if-ne v4, v6, :cond_5

    :cond_4
    iget-object v4, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->mDisabledTimes:Ljava/util/TreeSet;

    invoke-virtual {v4, v1}, Ljava/util/TreeSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->mDisabledTimes:Ljava/util/TreeSet;

    invoke-virtual {v6, v1}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v1, v4, p3}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->equals(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v1, v6, p3}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->equals(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;)Z

    move-result v4

    if-nez v4, :cond_5

    return-object v1

    :cond_5
    if-eqz p2, :cond_1

    invoke-virtual {v1, p2}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->get(Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;)I

    move-result v4

    invoke-virtual {p1, p2}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->get(Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;)I

    move-result v6

    if-eq v4, v6, :cond_1

    invoke-virtual {v0, p2}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->get(Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;)I

    move-result v4

    invoke-virtual {p1, p2}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->get(Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;)I

    move-result v6

    if-eq v4, v6, :cond_1

    :cond_6
    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getDisabledTimes()[Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    .locals 1

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->mDisabledTimes:Ljava/util/TreeSet;

    invoke-virtual {p0}, Ljava/util/TreeSet;->size()I

    move-result v0

    new-array v0, v0, [Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    return-object p0
.end method

.method public getMaxTime()Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    .locals 0

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->mMaxTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    return-object p0
.end method

.method public getMinTime()Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    .locals 0

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->mMinTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    return-object p0
.end method

.method public getSelectableTimes()[Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    .locals 1

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->mSelectableTimes:Ljava/util/TreeSet;

    invoke-virtual {p0}, Ljava/util/TreeSet;->size()I

    move-result v0

    new-array v0, v0, [Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    return-object p0
.end method

.method public isAmDisabled()Z
    .locals 4

    new-instance v0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;-><init>(I)V

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->mMinTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->compareTo(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)I

    move-result v1

    if-ltz v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->exclusiveSelectableTimes:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->exclusiveSelectableTimes:Ljava/util/TreeSet;

    invoke-virtual {p0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {p0, v0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->compareTo(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)I

    move-result p0

    if-ltz p0, :cond_1

    return v2

    :cond_1
    return v3
.end method

.method public isOutOfRange(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)Z
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->mMinTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->compareTo(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)I

    move-result v0

    if-lez v0, :cond_0

    return v1

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->mMaxTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->compareTo(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)I

    move-result v0

    if-gez v0, :cond_1

    return v1

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->exclusiveSelectableTimes:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->exclusiveSelectableTimes:Ljava/util/TreeSet;

    invoke-virtual {p0, p1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    .line 274
    :cond_2
    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->mDisabledTimes:Ljava/util/TreeSet;

    invoke-virtual {p0, p1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isOutOfRange(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;ILcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-nez p2, :cond_8

    iget-object p2, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->mMinTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result p2

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v2

    if-le p2, v2, :cond_1

    return v1

    :cond_1
    iget-object p2, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->mMaxTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result p2

    add-int/2addr p2, v1

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v2

    if-gt p2, v2, :cond_2

    return v1

    :cond_2
    iget-object p2, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->exclusiveSelectableTimes:Ljava/util/TreeSet;

    invoke-virtual {p2}, Ljava/util/TreeSet;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->exclusiveSelectableTimes:Ljava/util/TreeSet;

    invoke-virtual {p2, p1}, Ljava/util/TreeSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->exclusiveSelectableTimes:Ljava/util/TreeSet;

    invoke-virtual {p0, p1}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    sget-object p3, Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;->HOUR:Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;

    invoke-virtual {p1, p2, p3}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->equals(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p1, p0, p3}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->equals(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;)Z

    move-result p0

    if-nez p0, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    iget-object p2, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->mDisabledTimes:Ljava/util/TreeSet;

    invoke-virtual {p2}, Ljava/util/TreeSet;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_7

    sget-object p2, Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;->HOUR:Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;

    if-ne p3, p2, :cond_7

    iget-object p3, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->mDisabledTimes:Ljava/util/TreeSet;

    invoke-virtual {p3, p1}, Ljava/util/TreeSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->mDisabledTimes:Ljava/util/TreeSet;

    invoke-virtual {p0, p1}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {p1, p3, p2}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->equals(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;)Z

    move-result p3

    if-nez p3, :cond_6

    invoke-virtual {p1, p0, p2}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->equals(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_0

    :cond_5
    return v0

    :cond_6
    :goto_0
    return v1

    :cond_7
    return v0

    :cond_8
    if-ne p2, v1, :cond_10

    iget-object p2, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->mMinTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    if-eqz p2, :cond_9

    new-instance p2, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->mMinTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v2}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v2

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->mMinTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v3}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v3

    invoke-direct {p2, v2, v3}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;-><init>(II)V

    invoke-virtual {p2, p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->compareTo(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)I

    move-result p2

    if-lez p2, :cond_9

    return v1

    :cond_9
    iget-object p2, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->mMaxTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    if-eqz p2, :cond_a

    new-instance p2, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->mMaxTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v2}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v2

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->mMaxTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v3}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v3

    const/16 v4, 0x3b

    invoke-direct {p2, v2, v3, v4}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;-><init>(III)V

    invoke-virtual {p2, p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->compareTo(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)I

    move-result p2

    if-gez p2, :cond_a

    return v1

    :cond_a
    iget-object p2, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->exclusiveSelectableTimes:Ljava/util/TreeSet;

    invoke-virtual {p2}, Ljava/util/TreeSet;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_c

    iget-object p2, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->exclusiveSelectableTimes:Ljava/util/TreeSet;

    invoke-virtual {p2, p1}, Ljava/util/TreeSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->exclusiveSelectableTimes:Ljava/util/TreeSet;

    invoke-virtual {p0, p1}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    sget-object p3, Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;->MINUTE:Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;

    invoke-virtual {p1, p2, p3}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->equals(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;)Z

    move-result p2

    if-nez p2, :cond_b

    invoke-virtual {p1, p0, p3}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->equals(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;)Z

    move-result p0

    if-nez p0, :cond_b

    return v1

    :cond_b
    return v0

    :cond_c
    iget-object p2, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->mDisabledTimes:Ljava/util/TreeSet;

    invoke-virtual {p2}, Ljava/util/TreeSet;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_f

    sget-object p2, Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;->MINUTE:Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;

    if-ne p3, p2, :cond_f

    iget-object p3, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->mDisabledTimes:Ljava/util/TreeSet;

    invoke-virtual {p3, p1}, Ljava/util/TreeSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->mDisabledTimes:Ljava/util/TreeSet;

    invoke-virtual {p0, p1}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {p1, p3, p2}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->equals(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;)Z

    move-result p3

    invoke-virtual {p1, p0, p2}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->equals(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;)Z

    move-result p0

    if-nez p3, :cond_e

    if-eqz p0, :cond_d

    goto :goto_1

    :cond_d
    return v0

    :cond_e
    :goto_1
    return v1

    :cond_f
    return v0

    :cond_10
    invoke-virtual {p0, p1}, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->isOutOfRange(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)Z

    move-result p0

    return p0
.end method

.method public isPmDisabled()Z
    .locals 4

    new-instance v0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;-><init>(I)V

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->mMaxTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->compareTo(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)I

    move-result v1

    if-gez v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->exclusiveSelectableTimes:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->exclusiveSelectableTimes:Ljava/util/TreeSet;

    invoke-virtual {p0}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {p0, v0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->compareTo(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)I

    move-result p0

    if-gez p0, :cond_1

    return v2

    :cond_1
    return v3
.end method

.method public roundToNearest(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    .locals 3

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->mMinTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->compareTo(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->mMinTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->mMaxTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->compareTo(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)I

    move-result v0

    if-gez v0, :cond_1

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->mMaxTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    return-object p0

    :cond_1
    sget-object v0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;->SECOND:Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;

    if-ne p2, v0, :cond_2

    goto/16 :goto_7

    :cond_2
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->exclusiveSelectableTimes:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    iget-object p3, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->exclusiveSelectableTimes:Ljava/util/TreeSet;

    invoke-virtual {p3, p1}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->exclusiveSelectableTimes:Ljava/util/TreeSet;

    invoke-virtual {p0, p1}, Ljava/util/TreeSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    if-eqz p3, :cond_f

    if-nez p0, :cond_3

    goto/16 :goto_3

    :cond_3
    sget-object v0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;->HOUR:Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;

    if-ne p2, v0, :cond_6

    invoke-virtual {p3}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v0

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v1

    if-eq v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v0

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v1

    if-ne v0, v1, :cond_4

    goto/16 :goto_2

    :cond_4
    invoke-virtual {p3}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v0

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v1

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v0

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v1

    if-eq v0, v1, :cond_5

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p3}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v0

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v1

    if-eq v0, v1, :cond_6

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v0

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v1

    if-eq v0, v1, :cond_6

    return-object p1

    :cond_6
    sget-object v0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;->MINUTE:Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;

    if-ne p2, v0, :cond_d

    invoke-virtual {p3}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result p2

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v0

    if-eq p2, v0, :cond_7

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result p2

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v0

    if-eq p2, v0, :cond_7

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p3}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result p2

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v0

    if-eq p2, v0, :cond_8

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result p2

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v0

    if-ne p2, v0, :cond_8

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result p2

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result p3

    if-ne p2, p3, :cond_c

    goto/16 :goto_2

    :cond_8
    invoke-virtual {p3}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result p2

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v0

    if-ne p2, v0, :cond_9

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result p2

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v0

    if-eq p2, v0, :cond_9

    invoke-virtual {p3}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result p0

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result p2

    if-ne p0, p2, :cond_c

    goto :goto_1

    :cond_9
    invoke-virtual {p3}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result p2

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v0

    if-eq p2, v0, :cond_a

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result p2

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v0

    if-ne p2, v0, :cond_a

    goto :goto_2

    :cond_a
    invoke-virtual {p3}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result p2

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v0

    if-ne p2, v0, :cond_b

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result p2

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v0

    if-eq p2, v0, :cond_b

    goto :goto_1

    :cond_b
    invoke-virtual {p3}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result p2

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v0

    if-eq p2, v0, :cond_d

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result p2

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v0

    if-eq p2, v0, :cond_d

    :cond_c
    :goto_0
    return-object p1

    :cond_d
    invoke-virtual {p1, p3}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->compareTo(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-virtual {p1, p0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->compareTo(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ge p2, p1, :cond_e

    :goto_1
    return-object p3

    :cond_e
    :goto_2
    return-object p0

    :cond_f
    :goto_3
    if-nez p3, :cond_10

    move-object p3, p0

    :cond_10
    if-nez p2, :cond_11

    return-object p3

    :cond_11
    invoke-virtual {p3}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result p0

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v0

    if-eq p0, v0, :cond_12

    goto :goto_4

    :cond_12
    sget-object p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;->MINUTE:Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;

    if-ne p2, p0, :cond_13

    invoke-virtual {p3}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result p0

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result p2

    if-eq p0, p2, :cond_13

    :goto_4
    return-object p1

    :cond_13
    return-object p3

    :cond_14
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->mDisabledTimes:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1d

    if-eqz p2, :cond_15

    if-ne p2, p3, :cond_15

    goto :goto_7

    :cond_15
    if-ne p3, v0, :cond_17

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->mDisabledTimes:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_7

    :cond_16
    invoke-direct {p0, p1, p2, p3}, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->searchValidTimePoint(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    move-result-object p0

    return-object p0

    :cond_17
    sget-object v0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;->MINUTE:Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;

    if-ne p3, v0, :cond_1a

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->mDisabledTimes:Ljava/util/TreeSet;

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->mDisabledTimes:Ljava/util/TreeSet;

    invoke-virtual {v2, p1}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {p1, v1, v0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->equals(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;)Z

    move-result v1

    invoke-virtual {p1, v2, v0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->equals(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;)Z

    move-result v0

    if-nez v1, :cond_19

    if-eqz v0, :cond_18

    goto :goto_5

    :cond_18
    return-object p1

    :cond_19
    :goto_5
    invoke-direct {p0, p1, p2, p3}, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->searchValidTimePoint(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    move-result-object p0

    return-object p0

    :cond_1a
    sget-object v0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;->HOUR:Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;

    if-ne p3, v0, :cond_1d

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->mDisabledTimes:Ljava/util/TreeSet;

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->mDisabledTimes:Ljava/util/TreeSet;

    invoke-virtual {v2, p1}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {p1, v1, v0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->equals(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;)Z

    move-result v1

    invoke-virtual {p1, v2, v0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->equals(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;)Z

    move-result v0

    if-nez v1, :cond_1c

    if-eqz v0, :cond_1b

    goto :goto_6

    :cond_1b
    return-object p1

    :cond_1c
    :goto_6
    invoke-direct {p0, p1, p2, p3}, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->searchValidTimePoint(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    move-result-object p0

    return-object p0

    :cond_1d
    :goto_7
    return-object p1
.end method

.method public setDisabledTimes([Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)V
    .locals 1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->mDisabledTimes:Ljava/util/TreeSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->mSelectableTimes:Ljava/util/TreeSet;

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->mDisabledTimes:Ljava/util/TreeSet;

    invoke-direct {p0, p1, v0}, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->getExclusiveSelectableTimes(Ljava/util/TreeSet;Ljava/util/TreeSet;)Ljava/util/TreeSet;

    move-result-object p1

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->exclusiveSelectableTimes:Ljava/util/TreeSet;

    return-void
.end method

.method public setMaxTime(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)V
    .locals 1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->mMinTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->compareTo(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Maximum time must be greater than the minimum time"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->mMaxTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    return-void
.end method

.method public setMinTime(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)V
    .locals 1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->mMaxTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->compareTo(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Minimum time must be smaller than the maximum time"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->mMinTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    return-void
.end method

.method public setSelectableTimes([Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)V
    .locals 1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->mSelectableTimes:Ljava/util/TreeSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->mSelectableTimes:Ljava/util/TreeSet;

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->mDisabledTimes:Ljava/util/TreeSet;

    invoke-direct {p0, p1, v0}, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->getExclusiveSelectableTimes(Ljava/util/TreeSet;Ljava/util/TreeSet;)Ljava/util/TreeSet;

    move-result-object p1

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->exclusiveSelectableTimes:Ljava/util/TreeSet;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->mMinTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->mMaxTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->mSelectableTimes:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v1

    new-array v1, v1, [Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget-object p0, p0, Lcom/wdullaer/materialdatetimepicker/time/DefaultTimepointLimiter;->mDisabledTimes:Ljava/util/TreeSet;

    invoke-virtual {p0}, Ljava/util/TreeSet;->size()I

    move-result v0

    new-array v0, v0, [Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/os/Parcelable;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return-void
.end method
