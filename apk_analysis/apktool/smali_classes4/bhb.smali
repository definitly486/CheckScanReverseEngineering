.class public final Lbhb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luvb;


# instance fields
.field public final a:Lcom/google/android/gms/internal/play_billing/zzfx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/play_billing/zzfx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbhb;->a:Lcom/google/android/gms/internal/play_billing/zzfx;

    iput-object p0, p1, Lcom/google/android/gms/internal/play_billing/zzfx;->a:Lbhb;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;Lkqb;)V
    .locals 2

    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzfa;

    const/4 v0, 0x3

    iget-object v1, p0, Lbhb;->a:Lcom/google/android/gms/internal/play_billing/zzfx;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzs(II)V

    invoke-interface {p3, p2, p0}, Lkqb;->h(Ljava/lang/Object;Lbhb;)V

    const/4 p0, 0x4

    invoke-virtual {v1, p1, p0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzs(II)V

    return-void
.end method

.method public final b(ILjava/lang/Object;Lkqb;)V
    .locals 2

    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzfa;

    const/4 v0, 0x2

    iget-object v1, p0, Lbhb;->a:Lcom/google/android/gms/internal/play_billing/zzfx;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzs(II)V

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/play_billing/zzfa;->a(Lkqb;)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzu(I)V

    invoke-interface {p3, p2, p0}, Lkqb;->h(Ljava/lang/Object;Lbhb;)V

    return-void
.end method

.method public final c(ILjava/lang/Object;)V
    .locals 1

    instance-of v0, p2, Lcom/google/android/gms/internal/play_billing/zzfp;

    iget-object p0, p0, Lbhb;->a:Lcom/google/android/gms/internal/play_billing/zzfx;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzfp;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzp(ILcom/google/android/gms/internal/play_billing/zzfp;)V

    return-void

    :cond_0
    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzhr;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzo(ILcom/google/android/gms/internal/play_billing/zzhr;)V

    return-void
.end method
