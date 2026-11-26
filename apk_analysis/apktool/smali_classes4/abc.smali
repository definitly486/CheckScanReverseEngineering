.class public final synthetic Labc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzqk;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/measurement/zzpe;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzpe;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labc;->a:Lcom/google/android/gms/internal/measurement/zzpe;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Labc;->a:Lcom/google/android/gms/internal/measurement/zzpe;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzpe;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Leac;

    if-eqz p0, :cond_0

    iget-object p0, p0, Leac;->a:Lcom/google/android/gms/internal/measurement/zzpg;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzpg;->b()V

    :cond_0
    return-void
.end method
