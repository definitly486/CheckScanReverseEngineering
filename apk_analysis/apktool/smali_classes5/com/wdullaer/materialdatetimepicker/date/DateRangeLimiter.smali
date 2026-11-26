.class public interface abstract Lcom/wdullaer/materialdatetimepicker/date/DateRangeLimiter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# virtual methods
.method public abstract getEndDate()Ljava/util/Calendar;
.end method

.method public getMaxYear()I
    .locals 1

    invoke-interface {p0}, Lcom/wdullaer/materialdatetimepicker/date/DateRangeLimiter;->getEndDate()Ljava/util/Calendar;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public getMinYear()I
    .locals 1

    invoke-interface {p0}, Lcom/wdullaer/materialdatetimepicker/date/DateRangeLimiter;->getStartDate()Ljava/util/Calendar;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public abstract getStartDate()Ljava/util/Calendar;
.end method

.method public abstract isOutOfRange(III)Z
.end method

.method public abstract setToNearestDate(Ljava/util/Calendar;)Ljava/util/Calendar;
.end method
