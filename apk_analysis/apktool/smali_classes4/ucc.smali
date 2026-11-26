.class public final synthetic Lucc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llm3;


# static fields
.field public static final synthetic b:Lucc;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lucc;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lucc;->b:Lucc;

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzmk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzmk;->zza()I

    move-result p0

    const/16 v0, 0x734a

    if-ne p0, v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzno;->zzd()Lcom/google/android/gms/internal/measurement/zznn;

    move-result-object p0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzni;->zzo()Lcom/google/android/gms/internal/measurement/zznh;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zznh;->zza(J)Lcom/google/android/gms/internal/measurement/zznh;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zznn;->zza(Lcom/google/android/gms/internal/measurement/zznh;)Lcom/google/android/gms/internal/measurement/zznn;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzadp;->zzbd()Lcom/google/android/gms/internal/measurement/zzadu;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzno;

    return-object p0

    :cond_0
    throw p1
.end method
