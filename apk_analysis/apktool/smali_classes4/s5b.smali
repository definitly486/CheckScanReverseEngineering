.class public final Ls5b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/auth/zzdj;


# static fields
.field public static final d:Lcom/google/android/gms/internal/auth/zzdl;


# instance fields
.field public volatile b:Lcom/google/android/gms/internal/auth/zzdj;

.field public c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/auth/zzdl;->zza:Lcom/google/android/gms/internal/auth/zzdl;

    sput-object v0, Ls5b;->d:Lcom/google/android/gms/internal/auth/zzdl;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Ls5b;->b:Lcom/google/android/gms/internal/auth/zzdj;

    sget-object v1, Ls5b;->d:Lcom/google/android/gms/internal/auth/zzdl;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Ls5b;->c:Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "<supplier that returned "

    const-string v1, ">"

    invoke-static {v0, p0, v1}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Suppliers.memoize("

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final zza()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ls5b;->b:Lcom/google/android/gms/internal/auth/zzdj;

    sget-object v1, Ls5b;->d:Lcom/google/android/gms/internal/auth/zzdl;

    if-eq v0, v1, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ls5b;->b:Lcom/google/android/gms/internal/auth/zzdj;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Ls5b;->b:Lcom/google/android/gms/internal/auth/zzdj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/auth/zzdj;->zza()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ls5b;->c:Ljava/lang/Object;

    iput-object v1, p0, Ls5b;->b:Lcom/google/android/gms/internal/auth/zzdj;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    goto :goto_1

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_1
    iget-object p0, p0, Ls5b;->c:Ljava/lang/Object;

    return-object p0
.end method
