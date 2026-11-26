.class public final Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$MultiTaskDetails$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$MultiTaskDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$MultiTaskDetails;",
        ">;"
    }
.end annotation


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$MultiTaskDetails;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$MultiTaskDetails;-><init>(I)V

    return-object p0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p0, p1, [Lcom/warefly/checkscan/tasks/presentation/flows/TasksReason$MultiTaskDetails;

    return-object p0
.end method
