.class public final Lcom/google/android/gms/internal/measurement/zzwd;
.super Lzfc;
.source "SourceFile"

# interfaces
.implements Lcgc;


# static fields
.field public static final h:Lcom/google/android/gms/internal/measurement/zzvr;

.field public static final synthetic zzb:I


# instance fields
.field public final g:Ljava/lang/Exception;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzvr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzvr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzwd;->h:Lcom/google/android/gms/internal/measurement/zzvr;

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzvr;Lcom/google/android/gms/internal/measurement/zzwq;)V
    .locals 1

    const-string v0, "<missing root>"

    invoke-direct {p0, v0, p1, p2, p4}, Lzfc;-><init>(Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzwq;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzwd;->g:Ljava/lang/Exception;

    return-void
.end method

.method public static zzi(Lcom/google/android/gms/internal/measurement/zzwq;)Lcom/google/android/gms/internal/measurement/zzwd;
    .locals 4

    sget-object v0, Lhgc;->c:Lhgc;

    invoke-virtual {v0}, Lhgc;->b()Ljava/util/UUID;

    move-result-object v0

    invoke-static {v0}, Lzfc;->zzcL(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzvy;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/n;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Lqgc;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-interface {v2, v3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzwd;

    sget-object v3, Lcom/google/android/gms/internal/measurement/zzwd;->h:Lcom/google/android/gms/internal/measurement/zzvr;

    invoke-direct {v2, v0, v1, v3, p0}, Lcom/google/android/gms/internal/measurement/zzwd;-><init>(Ljava/util/UUID;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzvr;Lcom/google/android/gms/internal/measurement/zzwq;)V

    return-object v2
.end method


# virtual methods
.method public final zzf()Ljava/lang/Exception;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzwd;->g:Ljava/lang/Exception;

    return-object p0
.end method

.method public final zzg(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzwl;ZLcom/google/android/gms/internal/measurement/zzwq;)Lcom/google/android/gms/internal/measurement/zzws;
    .locals 7

    if-eqz p3, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzvy;->a:Ljava/util/concurrent/atomic/AtomicReference;

    :cond_0
    new-instance v1, Ltgc;

    move-object v3, p0

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Ltgc;-><init>(Ljava/lang/String;Lcgc;Lcom/google/android/gms/internal/measurement/zzwl;ZLcom/google/android/gms/internal/measurement/zzwq;)V

    return-object v1
.end method

.method public final zzh()Lcom/google/android/gms/internal/measurement/zzwl;
    .locals 0

    sget-object p0, Lcom/google/android/gms/internal/measurement/i;->e:Lcom/google/android/gms/internal/measurement/zzwl;

    return-object p0
.end method

.method public final zzj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzwl;Lcom/google/android/gms/internal/measurement/zzwq;)Lcom/google/android/gms/internal/measurement/zzws;
    .locals 0

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzvy;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p5, p2, p6}, Lcom/google/android/gms/internal/measurement/zzwd;->zzg(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzwl;ZLcom/google/android/gms/internal/measurement/zzwq;)Lcom/google/android/gms/internal/measurement/zzws;

    move-result-object p0

    return-object p0
.end method

.method public final zzk()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final zzl()Lcom/google/android/gms/internal/measurement/zzwl;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method
