.class public final Lcom/google/android/gms/common/internal/zzn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Landroid/content/ComponentName;

.field public final d:Z

.field public final e:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;ILandroid/os/UserHandle;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zzn;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zzn;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzn;->c:Landroid/content/ComponentName;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/common/internal/zzn;->d:Z

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zzn;->e:Landroid/os/UserHandle;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 21
    const-string v2, "com.google.android.gms"

    const/16 v3, 0x1081

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/internal/zzn;-><init>(Ljava/lang/String;Ljava/lang/String;IZLandroid/os/UserHandle;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZLandroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzn;->a:Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zzn;->b:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzn;->c:Landroid/content/ComponentName;

    iput-boolean p4, p0, Lcom/google/android/gms/common/internal/zzn;->d:Z

    iput-object p5, p0, Lcom/google/android/gms/common/internal/zzn;->e:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/common/internal/zzn;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/common/internal/zzn;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzn;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/common/internal/zzn;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzn;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/common/internal/zzn;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzn;->c:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/google/android/gms/common/internal/zzn;->c:Landroid/content/ComponentName;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/gms/common/internal/zzn;->d:Z

    iget-boolean v3, p1, Lcom/google/android/gms/common/internal/zzn;->d:Z

    if-ne v1, v3, :cond_2

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzn;->e:Landroid/os/UserHandle;

    iget-object p1, p1, Lcom/google/android/gms/common/internal/zzn;->e:Landroid/os/UserHandle;

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 7

    const/16 v0, 0x1081

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/zzn;->d:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/common/internal/zzn;->e:Landroid/os/UserHandle;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzn;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzn;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/common/internal/zzn;->c:Landroid/content/ComponentName;

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzn;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzn;->c:Landroid/content/ComponentName;

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public final zza()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzn;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final zzb()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzn;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final zzc()Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzn;->c:Landroid/content/ComponentName;

    return-object p0
.end method

.method public final zzd()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/common/internal/zzn;->d:Z

    return p0
.end method

.method public final zze()Landroid/os/UserHandle;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzn;->e:Landroid/os/UserHandle;

    return-object p0
.end method
