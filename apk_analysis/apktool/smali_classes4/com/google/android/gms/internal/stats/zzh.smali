.class public final Lcom/google/android/gms/internal/stats/zzh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:Lg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/stats/zzh;->a:Lg;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/stats/zze;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/stats/zzh;->a:Lg;

    return-object v0
.end method
