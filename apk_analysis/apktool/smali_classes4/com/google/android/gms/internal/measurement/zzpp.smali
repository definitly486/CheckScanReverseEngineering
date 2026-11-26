.class public final Lcom/google/android/gms/internal/measurement/zzpp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ljava/lang/Object;

.field public static volatile c:Lcom/google/common/collect/x;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzpp;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzpr;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzpr;->zzb()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzpr;->zza()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzlg;->zzb(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzpr;->zza()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzpp;->a:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzpr;->zzc()Lcom/google/android/gms/internal/measurement/zzabz;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzpr;->zzf()Z

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzpr;->zzd()Z

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzpr;->zze()Z

    return-void
.end method
