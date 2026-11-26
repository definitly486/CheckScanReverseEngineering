.class public final Lcom/google/android/gms/internal/play_billing/zzhl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ll62;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/play_billing/zzjg;Lcom/google/android/gms/internal/play_billing/zzjg;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ll62;

    invoke-direct {v0, p1, p2, p3}, Ll62;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzhl;->a:Ll62;

    return-void
.end method

.method public static zzd(Lcom/google/android/gms/internal/play_billing/zzjg;Ljava/lang/Object;Lcom/google/android/gms/internal/play_billing/zzjg;Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzhl;
    .locals 0

    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzhl;

    invoke-direct {p1, p0, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzhl;-><init>(Lcom/google/android/gms/internal/play_billing/zzjg;Lcom/google/android/gms/internal/play_billing/zzjg;Ljava/lang/Object;)V

    return-object p1
.end method


# virtual methods
.method public final zza(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    shl-int/lit8 p1, p1, 0x3

    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzfx;->zzy(I)I

    move-result p1

    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzhl;->a:Ll62;

    iget-object v0, p0, Ll62;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzjg;

    iget-object p0, p0, Ll62;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzjg;

    const/4 v1, 0x1

    invoke-static {v0, v1, p2}, Lxib;->a(Lcom/google/android/gms/internal/play_billing/zzjg;ILjava/lang/Object;)I

    move-result p2

    const/4 v0, 0x2

    invoke-static {p0, v0, p3}, Lxib;->a(Lcom/google/android/gms/internal/play_billing/zzjg;ILjava/lang/Object;)I

    move-result p0

    add-int/2addr p0, p2

    invoke-static {p0, p0, p1}, Lbj;->b(III)I

    move-result p0

    return p0
.end method
