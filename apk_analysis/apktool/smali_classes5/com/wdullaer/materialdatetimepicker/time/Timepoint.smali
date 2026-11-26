.class public Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Lcom/wdullaer/materialdatetimepicker/time/Timepoint;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/wdullaer/materialdatetimepicker/time/Timepoint;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private hour:I

.field private minute:I

.field private second:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint$1;

    invoke-direct {v0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint$1;-><init>()V

    sput-object v0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, p2, v0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    rem-int/lit8 p1, p1, 0x18

    iput p1, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->hour:I

    .line 24
    rem-int/lit8 p2, p2, 0x3c

    iput p2, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->minute:I

    .line 25
    rem-int/lit8 p3, p3, 0x3c

    iput p3, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->second:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->hour:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->minute:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->second:I

    return-void
.end method

.method public constructor <init>(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)V
    .locals 2

    .line 28
    iget v0, p1, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->hour:I

    iget v1, p1, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->minute:I

    iget p1, p1, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->second:I

    invoke-direct {p0, v0, v1, p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;-><init>(III)V

    return-void
.end method


# virtual methods
.method public add(Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;I)V
    .locals 1

    sget-object v0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;->MINUTE:Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;

    if-ne p1, v0, :cond_0

    mul-int/lit8 p2, p2, 0x3c

    :cond_0
    sget-object v0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;->HOUR:Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;

    if-ne p1, v0, :cond_1

    mul-int/lit16 p2, p2, 0xe10

    :cond_1
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->toSeconds()I

    move-result v0

    add-int/2addr v0, p2

    sget-object p2, Lcom/wdullaer/materialdatetimepicker/time/Timepoint$2;->$SwitchMap$com$wdullaer$materialdatetimepicker$time$Timepoint$TYPE:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_4

    return-void

    :cond_2
    rem-int/lit16 p1, v0, 0xe10

    rem-int/lit8 p1, p1, 0x3c

    iput p1, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->second:I

    :cond_3
    rem-int/lit16 p1, v0, 0xe10

    div-int/lit8 p1, p1, 0x3c

    iput p1, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->minute:I

    :cond_4
    div-int/lit16 v0, v0, 0xe10

    rem-int/lit8 v0, v0, 0x18

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->hour:I

    return-void
.end method

.method public compareTo(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)I
    .locals 0

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->hashCode()I

    move-result p0

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->hashCode()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 10
    check-cast p1, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {p0, p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->compareTo(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)I

    move-result p0

    return p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    sget-object v1, Lcom/wdullaer/materialdatetimepicker/time/Timepoint$2;->$SwitchMap$com$wdullaer$materialdatetimepicker$time$Timepoint$TYPE:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v1, p2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 v2, 0x2

    if-eq p2, v2, :cond_2

    const/4 v2, 0x3

    if-eq p2, v2, :cond_3

    return v1

    :cond_1
    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getSecond()I

    move-result p2

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getSecond()I

    move-result v2

    if-ne p2, v2, :cond_4

    :cond_2
    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result p2

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v2

    if-ne p2, v2, :cond_4

    :cond_3
    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result p1

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result p0

    if-ne p1, p0, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 55
    :cond_1
    check-cast p1, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    .line 56
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->hashCode()I

    move-result p0

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->hashCode()I

    move-result p1

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public get(Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;)I
    .locals 1

    sget-object v0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint$2;->$SwitchMap$com$wdullaer$materialdatetimepicker$time$Timepoint$TYPE:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getSecond()I

    move-result p0

    return p0
.end method

.method public getHour()I
    .locals 0

    iget p0, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->hour:I

    return p0
.end method

.method public getMinute()I
    .locals 0

    iget p0, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->minute:I

    return p0
.end method

.method public getSecond()I
    .locals 0

    iget p0, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->second:I

    return p0
.end method

.method public hashCode()I
    .locals 0

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->toSeconds()I

    move-result p0

    return p0
.end method

.method public isAM()Z
    .locals 1

    iget p0, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->hour:I

    const/16 v0, 0xc

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isPM()Z
    .locals 0

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->isAM()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public setAM()V
    .locals 2

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->hour:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->hour:I

    :cond_0
    return-void
.end method

.method public setPM()V
    .locals 2

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->hour:I

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x18

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->hour:I

    :cond_0
    return-void
.end method

.method public toSeconds()I
    .locals 2

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->hour:I

    mul-int/lit16 v0, v0, 0xe10

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->minute:I

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v1, v0

    iget p0, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->second:I

    add-int/2addr v1, p0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->hour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "h "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->minute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "m "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->second:I

    const-string v1, "s"

    invoke-static {v0, v1, p0}, Ll2;->e(Ljava/lang/StringBuilder;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->hour:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->minute:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->second:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
