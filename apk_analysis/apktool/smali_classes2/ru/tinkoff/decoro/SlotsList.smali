.class Lru/tinkoff/decoro/SlotsList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/tinkoff/decoro/SlotsList$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lru/tinkoff/decoro/slots/Slot;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/tinkoff/decoro/SlotsList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:I

.field public c:Lru/tinkoff/decoro/slots/Slot;

.field public d:Lru/tinkoff/decoro/slots/Slot;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/tinkoff/decoro/SlotsList$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lru/tinkoff/decoro/SlotsList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lru/tinkoff/decoro/SlotsList;->b:I

    return-void
.end method

.method public static c([Lru/tinkoff/decoro/slots/Slot;Lru/tinkoff/decoro/SlotsList;)V
    .locals 5

    new-instance v0, Lru/tinkoff/decoro/slots/Slot;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-direct {v0, v1}, Lru/tinkoff/decoro/slots/Slot;-><init>(Lru/tinkoff/decoro/slots/Slot;)V

    iput-object v0, p1, Lru/tinkoff/decoro/SlotsList;->c:Lru/tinkoff/decoro/slots/Slot;

    iget v1, p1, Lru/tinkoff/decoro/SlotsList;->b:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iput-object v0, p1, Lru/tinkoff/decoro/SlotsList;->d:Lru/tinkoff/decoro/slots/Slot;

    :cond_0
    move v1, v2

    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_2

    new-instance v3, Lru/tinkoff/decoro/slots/Slot;

    aget-object v4, p0, v1

    invoke-direct {v3, v4}, Lru/tinkoff/decoro/slots/Slot;-><init>(Lru/tinkoff/decoro/slots/Slot;)V

    iput-object v3, v0, Lru/tinkoff/decoro/slots/Slot;->g:Lru/tinkoff/decoro/slots/Slot;

    iput-object v0, v3, Lru/tinkoff/decoro/slots/Slot;->h:Lru/tinkoff/decoro/slots/Slot;

    array-length v0, p0

    sub-int/2addr v0, v2

    if-ne v1, v0, :cond_1

    iput-object v3, p1, Lru/tinkoff/decoro/SlotsList;->d:Lru/tinkoff/decoro/slots/Slot;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    move-object v0, v3

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 0

    if-ltz p1, :cond_0

    iget p0, p0, Lru/tinkoff/decoro/SlotsList;->b:I

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final b(I)Lru/tinkoff/decoro/slots/Slot;
    .locals 3

    invoke-virtual {p0, p1}, Lru/tinkoff/decoro/SlotsList;->a(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget v0, p0, Lru/tinkoff/decoro/SlotsList;->b:I

    shr-int/lit8 v2, v0, 0x1

    if-ge p1, v2, :cond_1

    iget-object p0, p0, Lru/tinkoff/decoro/SlotsList;->c:Lru/tinkoff/decoro/slots/Slot;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    iget-object p0, p0, Lru/tinkoff/decoro/slots/Slot;->g:Lru/tinkoff/decoro/slots/Slot;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lru/tinkoff/decoro/SlotsList;->d:Lru/tinkoff/decoro/slots/Slot;

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-le v0, p1, :cond_2

    iget-object p0, p0, Lru/tinkoff/decoro/slots/Slot;->h:Lru/tinkoff/decoro/slots/Slot;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    if-eqz p0, :cond_3

    return-object p0

    :cond_3
    const-string p0, "Slot inside the mask should not be null. But it is."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v1
.end method

.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lru/tinkoff/decoro/SlotsList;

    iget v2, p1, Lru/tinkoff/decoro/SlotsList;->b:I

    iget v3, p0, Lru/tinkoff/decoro/SlotsList;->b:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lru/tinkoff/decoro/SlotsList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-virtual {p1}, Lru/tinkoff/decoro/SlotsList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    move-object v2, p1

    check-cast v2, Lru/tinkoff/decoro/SlotsList$b;

    invoke-virtual {v2}, Lru/tinkoff/decoro/SlotsList$b;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lru/tinkoff/decoro/SlotsList$b;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/tinkoff/decoro/slots/Slot;

    move-object v3, p0

    check-cast v3, Lru/tinkoff/decoro/SlotsList$b;

    invoke-virtual {v3}, Lru/tinkoff/decoro/SlotsList$b;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lru/tinkoff/decoro/slots/Slot;

    invoke-virtual {v3, v2}, Lru/tinkoff/decoro/slots/Slot;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lru/tinkoff/decoro/slots/Slot;",
            ">;"
        }
    .end annotation

    new-instance v0, Lru/tinkoff/decoro/SlotsList$b;

    iget-object p0, p0, Lru/tinkoff/decoro/SlotsList;->c:Lru/tinkoff/decoro/slots/Slot;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    if-eqz p0, :cond_0

    iput-object p0, v0, Lru/tinkoff/decoro/SlotsList$b;->b:Lru/tinkoff/decoro/slots/Slot;

    return-object v0

    :cond_0
    const-string p0, "Initial slot for iterator cannot be null"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    iget v0, p0, Lru/tinkoff/decoro/SlotsList;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lru/tinkoff/decoro/SlotsList;->b:I

    if-lez v0, :cond_2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p0, v1, [Lru/tinkoff/decoro/slots/Slot;

    goto :goto_1

    :cond_0
    new-array v0, v0, [Lru/tinkoff/decoro/slots/Slot;

    invoke-virtual {p0}, Lru/tinkoff/decoro/SlotsList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    move-object v2, p0

    check-cast v2, Lru/tinkoff/decoro/SlotsList$b;

    invoke-virtual {v2}, Lru/tinkoff/decoro/SlotsList$b;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lru/tinkoff/decoro/SlotsList$b;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lru/tinkoff/decoro/slots/Slot;

    add-int/lit8 v3, v1, 0x1

    aput-object v2, v0, v1

    move v1, v3

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_1
    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    :cond_2
    return-void
.end method
