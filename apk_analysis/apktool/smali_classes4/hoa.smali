.class public final Lhoa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# static fields
.field public static final a:Lhoa;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lhoa;

    new-instance v1, Lcom/google/android/gms/common/api/zzb;

    invoke-direct {v1}, Lcom/google/android/gms/common/api/zzb;-><init>()V

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lhoa;->a:Lhoa;

    return-void
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const v1, -0xc2a5d3a

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/common/api/zzb;->zza(Landroid/os/Parcel;)Lcom/google/android/gms/common/api/ApiMetadata;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 p0, p0, -0x4

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-static {}, Lcom/google/android/gms/common/api/ApiMetadata;->getEmptyInstance()Lcom/google/android/gms/common/api/ApiMetadata;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p0, p1, [Lcom/google/android/gms/common/api/ApiMetadata;

    return-object p0
.end method
