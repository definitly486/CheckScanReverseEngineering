.class public final Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskResult$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskResult;",
        ">;"
    }
.end annotation


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskResult;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    const/4 v4, 0x0

    if-nez p0, :cond_0

    move-object p0, v4

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskResult$Button;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    check-cast p0, Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskResult$Button;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    sget-object v4, Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskResult$Button;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    :goto_1
    move-object v5, v4

    check-cast v5, Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskResult$Button;

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskResult$Button;Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskResult$Button;)V

    return-object v0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p0, p1, [Lcom/warefly/checkscan/tasks/presentation/dailyTask/model/DailyTaskResult;

    return-object p0
.end method
