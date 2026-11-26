.class public final Lcom/google/android/gms/internal/auth/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcjb;


# instance fields
.field public final a:Lcom/google/android/gms/internal/auth/zzfx;

.field public final b:Ltlb;

.field public final c:Lyab;


# direct methods
.method public constructor <init>(Ltlb;Lyab;Lcom/google/android/gms/internal/auth/zzfx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/d;->b:Ltlb;

    iput-object p2, p0, Lcom/google/android/gms/internal/auth/d;->c:Lyab;

    iput-object p3, p0, Lcom/google/android/gms/internal/auth/d;->a:Lcom/google/android/gms/internal/auth/zzfx;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/auth/zzev;)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/d;->b:Ltlb;

    invoke-virtual {p0, p1}, Ltlb;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/zzha;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzha;->hashCode()I

    move-result p0

    return p0
.end method

.method public final b(Lcom/google/android/gms/internal/auth/zzev;Lcom/google/android/gms/internal/auth/zzev;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/d;->b:Ltlb;

    invoke-virtual {p0, p1}, Ltlb;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/zzha;

    move-result-object p1

    invoke-virtual {p0, p2}, Ltlb;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/zzha;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/auth/zzha;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lljb;->a:Ljava/lang/Class;

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/d;->b:Ltlb;

    invoke-virtual {p0, p1}, Ltlb;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/zzha;

    move-result-object v0

    invoke-virtual {p0, p2}, Ltlb;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/zzha;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Ltlb;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ltlb;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final d(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/d;->c:Lyab;

    invoke-virtual {p0, p1}, Lyab;->a(Ljava/lang/Object;)Lobb;

    const/4 p0, 0x0

    throw p0
.end method

.method public final e(Ljava/lang/Object;[BIILh7b;)V
    .locals 0

    move-object p0, p1

    check-cast p0, Lcom/google/android/gms/internal/auth/zzev;

    iget-object p2, p0, Lcom/google/android/gms/internal/auth/zzev;->zzc:Lcom/google/android/gms/internal/auth/zzha;

    invoke-static {}, Lcom/google/android/gms/internal/auth/zzha;->zza()Lcom/google/android/gms/internal/auth/zzha;

    move-result-object p3

    if-eq p2, p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzha;->a()Lcom/google/android/gms/internal/auth/zzha;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/auth/zzev;->zzc:Lcom/google/android/gms/internal/auth/zzha;

    :goto_0
    check-cast p1, Lcom/google/android/gms/internal/auth/zzeu;

    const/4 p0, 0x0

    throw p0
.end method

.method public final zzd()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/d;->a:Lcom/google/android/gms/internal/auth/zzfx;

    instance-of v0, p0, Lcom/google/android/gms/internal/auth/zzev;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/gms/internal/auth/zzev;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzev;->b()Lcom/google/android/gms/internal/auth/zzev;

    move-result-object p0

    return-object p0

    :cond_0
    check-cast p0, Lcom/google/android/gms/internal/auth/zzev;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/auth/zzev;->h(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/auth/zzet;

    invoke-interface {p0}, Lcom/google/android/gms/internal/auth/zzfw;->zzd()Lcom/google/android/gms/internal/auth/zzfx;

    move-result-object p0

    return-object p0
.end method

.method public final zze(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/d;->b:Ltlb;

    invoke-virtual {v0, p1}, Ltlb;->e(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/d;->c:Lyab;

    invoke-virtual {p0, p1}, Lyab;->b(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method
