.class public final Lpic;
.super Lcom/google/android/gms/internal/measurement/zzzj;
.source "SourceFile"


# static fields
.field public static final a:Lpic;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lpic;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzzj;-><init>()V

    sput-object v0, Lpic;->a:Lpic;

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final zzb(I)Lcom/google/android/gms/internal/measurement/zzyl;
    .locals 0

    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "cannot read from empty metadata"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final zzc(I)Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "cannot read from empty metadata"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final zzd(Lcom/google/android/gms/internal/measurement/zzyl;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
