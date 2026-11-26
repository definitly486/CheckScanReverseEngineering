.class public final Lru/tinkoff/decoro/SlotsList$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/tinkoff/decoro/SlotsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lru/tinkoff/decoro/SlotsList;",
        ">;"
    }
.end annotation


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    new-instance p0, Lru/tinkoff/decoro/SlotsList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lru/tinkoff/decoro/SlotsList;->b:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lru/tinkoff/decoro/SlotsList;->b:I

    if-lez v0, :cond_0

    new-array v0, v0, [Lru/tinkoff/decoro/slots/Slot;

    sget-object v1, Lru/tinkoff/decoro/slots/Slot;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    invoke-static {v0, p0}, Lru/tinkoff/decoro/SlotsList;->c([Lru/tinkoff/decoro/slots/Slot;Lru/tinkoff/decoro/SlotsList;)V

    :cond_0
    return-object p0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p0, p1, [Lru/tinkoff/decoro/SlotsList;

    return-object p0
.end method
