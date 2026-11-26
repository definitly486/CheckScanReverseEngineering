.class final Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;
    .locals 0

    new-instance p0, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;

    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter$1;->createFromParcel(Landroid/os/Parcel;)Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;
    .locals 0

    .line 5
    new-array p0, p1, [Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter$1;->newArray(I)[Lcom/wdullaer/materialdatetimepicker/date/DefaultDateRangeLimiter;

    move-result-object p0

    return-object p0
.end method
