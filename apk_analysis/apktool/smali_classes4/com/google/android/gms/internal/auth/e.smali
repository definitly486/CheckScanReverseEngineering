.class public final Lcom/google/android/gms/internal/auth/e;
.super Ltlb;
.source "SourceFile"


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/zzha;
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/auth/zzev;

    iget-object p0, p1, Lcom/google/android/gms/internal/auth/zzev;->zzc:Lcom/google/android/gms/internal/auth/zzha;

    invoke-static {}, Lcom/google/android/gms/internal/auth/zzha;->zza()Lcom/google/android/gms/internal/auth/zzha;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/auth/zzha;->a()Lcom/google/android/gms/internal/auth/zzha;

    move-result-object p0

    iput-object p0, p1, Lcom/google/android/gms/internal/auth/zzev;->zzc:Lcom/google/android/gms/internal/auth/zzha;

    :cond_0
    return-object p0
.end method

.method public final synthetic b(Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/zzha;
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/auth/zzev;

    iget-object p0, p1, Lcom/google/android/gms/internal/auth/zzev;->zzc:Lcom/google/android/gms/internal/auth/zzha;

    return-object p0
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lcom/google/android/gms/internal/auth/zzha;->zza()Lcom/google/android/gms/internal/auth/zzha;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/auth/zzha;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {}, Lcom/google/android/gms/internal/auth/zzha;->zza()Lcom/google/android/gms/internal/auth/zzha;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/auth/zzha;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    check-cast p2, Lcom/google/android/gms/internal/auth/zzha;

    check-cast p1, Lcom/google/android/gms/internal/auth/zzha;

    iget p0, p1, Lcom/google/android/gms/internal/auth/zzha;->a:I

    iget v1, p2, Lcom/google/android/gms/internal/auth/zzha;->a:I

    add-int/2addr p0, v1

    iget-object v1, p1, Lcom/google/android/gms/internal/auth/zzha;->b:[I

    invoke-static {v1, p0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iget-object v2, p2, Lcom/google/android/gms/internal/auth/zzha;->b:[I

    iget v3, p1, Lcom/google/android/gms/internal/auth/zzha;->a:I

    iget v4, p2, Lcom/google/android/gms/internal/auth/zzha;->a:I

    invoke-static {v2, v0, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p1, Lcom/google/android/gms/internal/auth/zzha;->c:[Ljava/lang/Object;

    invoke-static {v2, p0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p2, Lcom/google/android/gms/internal/auth/zzha;->c:[Ljava/lang/Object;

    iget p1, p1, Lcom/google/android/gms/internal/auth/zzha;->a:I

    iget p2, p2, Lcom/google/android/gms/internal/auth/zzha;->a:I

    invoke-static {v3, v0, v2, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Lcom/google/android/gms/internal/auth/zzha;

    const/4 p2, 0x1

    invoke-direct {p1, p0, v1, v2, p2}, Lcom/google/android/gms/internal/auth/zzha;-><init>(I[I[Ljava/lang/Object;Z)V

    return-object p1

    :cond_0
    check-cast p2, Lcom/google/android/gms/internal/auth/zzha;

    move-object p0, p1

    check-cast p0, Lcom/google/android/gms/internal/auth/zzha;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/google/android/gms/internal/auth/zzha;->e:Lcom/google/android/gms/internal/auth/zzha;

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/auth/zzha;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/auth/zzha;->d:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/auth/zzha;->a:I

    iget v2, p2, Lcom/google/android/gms/internal/auth/zzha;->a:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/auth/zzha;->c(I)V

    iget-object v2, p2, Lcom/google/android/gms/internal/auth/zzha;->b:[I

    iget-object v3, p0, Lcom/google/android/gms/internal/auth/zzha;->b:[I

    iget v4, p0, Lcom/google/android/gms/internal/auth/zzha;->a:I

    iget v5, p2, Lcom/google/android/gms/internal/auth/zzha;->a:I

    invoke-static {v2, v0, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p2, Lcom/google/android/gms/internal/auth/zzha;->c:[Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/auth/zzha;->c:[Ljava/lang/Object;

    iget v4, p0, Lcom/google/android/gms/internal/auth/zzha;->a:I

    iget p2, p2, Lcom/google/android/gms/internal/auth/zzha;->a:I

    invoke-static {v2, v0, v3, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v1, p0, Lcom/google/android/gms/internal/auth/zzha;->a:I

    return-object p1

    :cond_2
    invoke-static {}, Lud;->d()V

    const/4 p0, 0x0

    return-object p0

    :cond_3
    :goto_0
    return-object p1
.end method

.method public final bridge synthetic d(IJLjava/lang/Object;)V
    .locals 0

    shl-int/lit8 p0, p1, 0x3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    check-cast p4, Lcom/google/android/gms/internal/auth/zzha;

    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/auth/zzha;->b(ILjava/lang/Object;)V

    return-void
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/auth/zzev;

    iget-object p0, p1, Lcom/google/android/gms/internal/auth/zzev;->zzc:Lcom/google/android/gms/internal/auth/zzha;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzha;->zzf()V

    return-void
.end method

.method public final synthetic f(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/auth/zzev;

    check-cast p2, Lcom/google/android/gms/internal/auth/zzha;

    iput-object p2, p1, Lcom/google/android/gms/internal/auth/zzev;->zzc:Lcom/google/android/gms/internal/auth/zzha;

    return-void
.end method
