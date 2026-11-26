.class public Lru/tinkoff/decoro/MaskDescriptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/tinkoff/decoro/MaskDescriptor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:[Lru/tinkoff/decoro/slots/Slot;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Z

.field public g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/tinkoff/decoro/MaskDescriptor$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lru/tinkoff/decoro/MaskDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lru/tinkoff/decoro/MaskDescriptor;->e:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lru/tinkoff/decoro/MaskDescriptor;->f:Z

    iput-boolean v0, p0, Lru/tinkoff/decoro/MaskDescriptor;->g:Z

    return-void
.end method


# virtual methods
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

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lru/tinkoff/decoro/MaskDescriptor;

    iget-boolean v2, p0, Lru/tinkoff/decoro/MaskDescriptor;->e:Z

    iget-boolean v3, p1, Lru/tinkoff/decoro/MaskDescriptor;->e:Z

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-boolean v2, p0, Lru/tinkoff/decoro/MaskDescriptor;->f:Z

    iget-boolean v3, p1, Lru/tinkoff/decoro/MaskDescriptor;->f:Z

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-boolean v2, p0, Lru/tinkoff/decoro/MaskDescriptor;->g:Z

    iget-boolean v3, p1, Lru/tinkoff/decoro/MaskDescriptor;->g:Z

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lru/tinkoff/decoro/MaskDescriptor;->b:[Lru/tinkoff/decoro/slots/Slot;

    iget-object v3, p1, Lru/tinkoff/decoro/MaskDescriptor;->b:[Lru/tinkoff/decoro/slots/Slot;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lru/tinkoff/decoro/MaskDescriptor;->c:Ljava/lang/String;

    iget-object v3, p1, Lru/tinkoff/decoro/MaskDescriptor;->c:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_6
    if-eqz v3, :cond_7

    :goto_0
    return v1

    :cond_7
    iget-object p0, p0, Lru/tinkoff/decoro/MaskDescriptor;->d:Ljava/lang/String;

    iget-object p1, p1, Lru/tinkoff/decoro/MaskDescriptor;->d:Ljava/lang/String;

    if-eqz p0, :cond_8

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_8
    if-nez p1, :cond_9

    return v0

    :cond_9
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lru/tinkoff/decoro/MaskDescriptor;->b:[Lru/tinkoff/decoro/slots/Slot;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lru/tinkoff/decoro/MaskDescriptor;->c:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lru/tinkoff/decoro/MaskDescriptor;->d:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lru/tinkoff/decoro/MaskDescriptor;->e:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lru/tinkoff/decoro/MaskDescriptor;->f:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lru/tinkoff/decoro/MaskDescriptor;->g:Z

    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lru/tinkoff/decoro/MaskDescriptor;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    iget-object p0, p0, Lru/tinkoff/decoro/MaskDescriptor;->b:[Lru/tinkoff/decoro/slots/Slot;

    if-eqz p0, :cond_4

    array-length v0, p0

    if-lez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    iget-object v3, v3, Lru/tinkoff/decoro/slots/Slot;->c:Ljava/lang/Character;

    if-nez v3, :cond_2

    const/16 v3, 0x5f

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const-string p0, "(empty)"

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lru/tinkoff/decoro/MaskDescriptor;->b:[Lru/tinkoff/decoro/slots/Slot;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lru/tinkoff/decoro/MaskDescriptor;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lru/tinkoff/decoro/MaskDescriptor;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lru/tinkoff/decoro/MaskDescriptor;->e:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lru/tinkoff/decoro/MaskDescriptor;->f:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p0, p0, Lru/tinkoff/decoro/MaskDescriptor;->g:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
