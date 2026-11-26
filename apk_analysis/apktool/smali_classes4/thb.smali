.class public final Lthb;
.super Ln1c;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/google/android/gms/internal/auth/zzaq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/auth/zzaq;)V
    .locals 0

    iput-object p1, p0, Lthb;->b:Lcom/google/android/gms/internal/auth/zzaq;

    const/16 p1, 0x648

    invoke-direct {p0, p1}, Ln1c;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/auth/zzau;)V
    .locals 1

    new-instance v0, Lhdb;

    invoke-direct {v0, p0, p0}, Lhdb;-><init>(Lthb;Lthb;)V

    iget-object p0, p0, Lthb;->b:Lcom/google/android/gms/internal/auth/zzaq;

    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/internal/auth/zzau;->zzd(Lcom/google/android/gms/internal/auth/zzat;Lcom/google/android/gms/internal/auth/zzaq;)V

    return-void
.end method
