.class public final synthetic Lxtb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/measurement/internal/zzjd;

.field public final synthetic c:Lcom/google/android/gms/measurement/internal/zzr;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzjd;Lcom/google/android/gms/measurement/internal/zzr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxtb;->b:Lcom/google/android/gms/measurement/internal/zzjd;

    iput-object p2, p0, Lxtb;->c:Lcom/google/android/gms/measurement/internal/zzr;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 1

    iget-object v0, p0, Lxtb;->b:Lcom/google/android/gms/measurement/internal/zzjd;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzjd;->a:Lcom/google/android/gms/measurement/internal/zzpg;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->Q()V

    iget-object p0, p0, Lxtb;->c:Lcom/google/android/gms/measurement/internal/zzr;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/measurement/internal/zzpg;->b0(Lcom/google/android/gms/measurement/internal/zzr;)V

    return-void
.end method
