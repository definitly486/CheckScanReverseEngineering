.class public final Lcom/google/android/gms/internal/stats/zzb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final b:Lcom/google/android/gms/internal/stats/zzb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/stats/zzb;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/stats/zzb;->b:Lcom/google/android/gms/internal/stats/zzb;

    return-void
.end method

.method public static zza(ZLcom/google/android/gms/internal/stats/zzc;)Lcom/google/android/gms/internal/stats/zzb;
    .locals 0

    sget-object p0, Lcom/google/android/gms/internal/stats/zzb;->b:Lcom/google/android/gms/internal/stats/zzb;

    return-object p0
.end method


# virtual methods
.method public final close()V
    .locals 0

    return-void
.end method
