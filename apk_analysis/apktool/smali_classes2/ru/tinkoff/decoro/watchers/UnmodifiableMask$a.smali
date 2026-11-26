.class public final Lru/tinkoff/decoro/watchers/UnmodifiableMask$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/tinkoff/decoro/watchers/UnmodifiableMask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lru/tinkoff/decoro/watchers/UnmodifiableMask;",
        ">;"
    }
.end annotation


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Lru/tinkoff/decoro/watchers/UnmodifiableMask;

    invoke-direct {p0, p1}, Lru/tinkoff/decoro/watchers/UnmodifiableMask;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p0, p1, [Lru/tinkoff/decoro/watchers/UnmodifiableMask;

    return-object p0
.end method
