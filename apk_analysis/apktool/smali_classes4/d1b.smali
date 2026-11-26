.class public final Ld1b;
.super Lcom/google/android/gms/internal/play_billing/zzcf;
.source "SourceFile"


# instance fields
.field public final transient d:Lm1b;

.field public final transient e:Lh1b;


# direct methods
.method public constructor <init>(Lm1b;Lh1b;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzcf;-><init>()V

    iput-object p1, p0, Ld1b;->d:Lm1b;

    iput-object p2, p0, Ld1b;->e:Lh1b;

    return-void
.end method


# virtual methods
.method public final a([Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Ld1b;->e:Lh1b;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzca;->a([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Ld1b;->d:Lm1b;

    invoke-virtual {p0, p1}, Lm1b;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    iget-object p0, p0, Ld1b;->e:Lh1b;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzca;->zzn(I)Lcom/google/android/gms/internal/play_billing/zzct;

    move-result-object p0

    return-object p0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Ld1b;->d:Lm1b;

    iget p0, p0, Lm1b;->g:I

    return p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/play_billing/zzca;
    .locals 0

    iget-object p0, p0, Ld1b;->e:Lh1b;

    return-object p0
.end method

.method public final zze()Lcom/google/android/gms/internal/play_billing/zzcs;
    .locals 1

    iget-object p0, p0, Ld1b;->e:Lh1b;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzca;->zzn(I)Lcom/google/android/gms/internal/play_billing/zzct;

    move-result-object p0

    return-object p0
.end method
