.class public final Lcom/google/android/gms/internal/measurement/zzpe;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzpe;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzpe;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/internal/measurement/zzlk;Lcac;Ljava/lang/String;)Leac;
    .locals 3

    new-instance p3, Lobc;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p3, Lobc;->a:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzpe;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzlk;->zzc()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p2, Lcac;->d:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, p2, Lcac;->a:Llm3;

    invoke-interface {v2, v1}, Llm3;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    iput-object v2, p2, Lcac;->d:Ljava/lang/String;

    :cond_0
    new-instance v1, Llbc;

    invoke-direct {v1, p1, p2, p3}, Llbc;-><init>(Lcom/google/android/gms/internal/measurement/zzlk;Lcac;Lobc;)V

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Leac;

    iget-boolean p3, p3, Lobc;->a:Z

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzlk;->zzc()Landroid/content/Context;

    move-result-object p1

    new-instance p3, Labc;

    invoke-direct {p3, p0}, Labc;-><init>(Lcom/google/android/gms/internal/measurement/zzpe;)V

    new-instance p0, Lhn1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p3, p0}, Lcom/google/android/gms/internal/measurement/zzql;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzqk;Lcom/google/android/gms/internal/measurement/zzqj;)V

    :cond_1
    return-object p2
.end method
