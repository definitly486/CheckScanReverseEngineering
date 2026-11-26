.class public final Lcom/google/android/gms/internal/measurement/zzaaj;
.super Lcom/google/android/gms/internal/measurement/zzaad;
.source "SourceFile"


# static fields
.field public static final b:Z

.field public static final c:Z

.field public static final d:Lcom/google/android/gms/internal/measurement/zzaaj$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "dalvik.system.VMStack"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getStackClass2"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzaaj;->d()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/internal/measurement/a;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move v1, v0

    :goto_0
    sput-boolean v1, Lcom/google/android/gms/internal/measurement/zzaaj;->b:Z

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string v3, "robolectric"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v0, v2

    :cond_1
    sput-boolean v0, Lcom/google/android/gms/internal/measurement/zzaaj;->c:Z

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzaaj$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzaac;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzaaj;->d:Lcom/google/android/gms/internal/measurement/zzaaj$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzaad;-><init>()V

    return-void
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {}, Ldalvik/system/VMStack;->getStackClass2()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static e()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    invoke-static {}, Ldalvik/system/VMStack;->getStackClass2()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/measurement/zzaaj$a;
    .locals 0

    sget-object p0, Lcom/google/android/gms/internal/measurement/zzaaj;->d:Lcom/google/android/gms/internal/measurement/zzaaj$a;

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzzf;
    .locals 5

    sget-object p0, Lapa;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzaai;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/measurement/zzaai;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzzf;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lapa;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    const/16 v4, 0x24

    if-ne v2, v4, :cond_1

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    if-eq v2, v3, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/measurement/zzaag;-><init>(Ljava/lang/String;)V

    sget-boolean p1, Lapa;->c:Z

    if-nez p1, :cond_5

    sget-boolean p1, Lapa;->d:Z

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    sget-boolean p1, Lapa;->e:Z

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzaas;->zze()Lcom/google/android/gms/internal/measurement/zzaaq;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzaaq;->zzb(Z)Lcom/google/android/gms/internal/measurement/zzaaq;

    move-result-object p1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzaag;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzaaq;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzzf;

    move-result-object p1

    :goto_2
    iput-object p1, v0, Lapa;->b:Lcom/google/android/gms/internal/measurement/zzzf;

    goto :goto_4

    :cond_4
    const/4 p1, 0x0

    goto :goto_2

    :cond_5
    :goto_3
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzaah;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzaah;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzaag;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzaah;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzzf;

    move-result-object p1

    iput-object p1, v0, Lapa;->b:Lcom/google/android/gms/internal/measurement/zzzf;

    :goto_4
    sget-object p1, Lyoa;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    :goto_5
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lapa;

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzaai;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzaag;->zza()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/measurement/zzaai;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzzf;

    move-result-object v2

    iput-object v2, v1, Lapa;->b:Lcom/google/android/gms/internal/measurement/zzzf;

    goto :goto_5

    :cond_6
    invoke-static {}, Lapa;->a()V

    :cond_7
    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/measurement/zzaat;
    .locals 0

    sget-object p0, Lbpa;->b:Lbpa;

    return-object p0
.end method
