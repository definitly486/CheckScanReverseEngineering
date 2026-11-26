.class public final Lyads/cb5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lyads/bb5;


# instance fields
.field public final b:Lyads/k54;

.field public final c:Lyads/ab5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/bb5;

    invoke-direct {v0}, Lyads/bb5;-><init>()V

    sput-object v0, Lyads/cb5;->CREATOR:Lyads/bb5;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lyads/k54;->valueOf(Ljava/lang/String;)Lyads/k54;

    move-result-object v0

    const-class v1, Lyads/ab5;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lyads/ab5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/cb5;->b:Lyads/k54;

    iput-object p1, p0, Lyads/cb5;->c:Lyads/ab5;

    return-void
.end method

.method public constructor <init>(Lyads/k54;Lyads/ab5;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lyads/cb5;->b:Lyads/k54;

    .line 36
    iput-object p2, p0, Lyads/cb5;->c:Lyads/ab5;

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
    instance-of v1, p1, Lyads/cb5;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lyads/cb5;

    iget-object v1, p0, Lyads/cb5;->b:Lyads/k54;

    iget-object v3, p1, Lyads/cb5;->b:Lyads/k54;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lyads/cb5;->c:Lyads/ab5;

    iget-object p1, p1, Lyads/cb5;->c:Lyads/ab5;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lyads/cb5;->b:Lyads/k54;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lyads/cb5;->c:Lyads/ab5;

    invoke-virtual {p0}, Lyads/ab5;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lyads/cb5;->b:Lyads/k54;

    iget-object p0, p0, Lyads/cb5;->c:Lyads/ab5;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RewardedMediationParameters(bridgeAdType="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", configuration="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lyads/cb5;->b:Lyads/k54;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lyads/cb5;->c:Lyads/ab5;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
