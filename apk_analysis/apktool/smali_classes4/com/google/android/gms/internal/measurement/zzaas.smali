.class public final Lcom/google/android/gms/internal/measurement/zzaas;
.super Lcom/google/android/gms/internal/measurement/zzaag;
.source "SourceFile"


# static fields
.field public static final f:Ljava/util/Set;

.field public static final g:Lcom/google/android/gms/internal/measurement/zzzq;

.field public static final h:Lcom/google/android/gms/internal/measurement/zzaaq;

.field public static final synthetic zza:I


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/logging/Level;

.field public final d:Ljava/util/Set;

.field public final e:Lcom/google/android/gms/internal/measurement/zzzq;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzxx;->zza:Lcom/google/android/gms/internal/measurement/zzyl;

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzyw;->zza:Lcom/google/android/gms/internal/measurement/zzyl;

    sget-object v3, Lcom/google/android/gms/internal/measurement/zzyx;->zza:Lcom/google/android/gms/internal/measurement/zzyl;

    filled-new-array {v1, v2, v3}, [Lcom/google/android/gms/internal/measurement/zzyl;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzaas;->f:Ljava/util/Set;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzzt;->zza(Ljava/util/Set;)Lcom/google/android/gms/internal/measurement/zzzm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzzm;->zzc()Lcom/google/android/gms/internal/measurement/zzzq;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzaas;->g:Lcom/google/android/gms/internal/measurement/zzzq;

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzaaq;

    sget-object v3, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-direct {v2, v3, v0, v1}, Lcom/google/android/gms/internal/measurement/zzaaq;-><init>(Ljava/util/logging/Level;Ljava/util/Set;Lcom/google/android/gms/internal/measurement/zzzq;)V

    sput-object v2, Lcom/google/android/gms/internal/measurement/zzaas;->h:Lcom/google/android/gms/internal/measurement/zzaaq;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/logging/Level;Ljava/util/Set;Lcom/google/android/gms/internal/measurement/zzzq;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzaag;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzaal;->zza(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzaas;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzaas;->c:Ljava/util/logging/Level;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzaas;->d:Ljava/util/Set;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/zzaas;->e:Lcom/google/android/gms/internal/measurement/zzzq;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/measurement/zzzd;Ljava/lang/String;Ljava/util/logging/Level;Ljava/util/Set;Lcom/google/android/gms/internal/measurement/zzzq;)V
    .locals 4

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzzd;->zzl()Lcom/google/android/gms/internal/measurement/zzzj;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzyx;->zza:Lcom/google/android/gms/internal/measurement/zzyl;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzzj;->zzd(Lcom/google/android/gms/internal/measurement/zzyl;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzaad;->zzj()Lcom/google/android/gms/internal/measurement/zzzj;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzzd;->zzl()Lcom/google/android/gms/internal/measurement/zzzj;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzaaa;->zzh(Lcom/google/android/gms/internal/measurement/zzzj;Lcom/google/android/gms/internal/measurement/zzzj;)Lcom/google/android/gms/internal/measurement/zzaaa;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzzd;->zze()Ljava/util/logging/Level;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/logging/Level;->intValue()I

    move-result v1

    invoke-virtual {p2}, Ljava/util/logging/Level;->intValue()I

    move-result p2

    if-ge v1, p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    const/4 v1, 0x2

    if-nez p2, :cond_3

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzaae;->a:Ljava/util/Set;

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzzd;->zzh()Lcom/google/android/gms/internal/measurement/zzaaf;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzaaa;->zzb()I

    move-result v2

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v3

    if-gt v2, v3, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzaaa;->zzc()Ljava/util/Set;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzzd;->zzj()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzzh;->zza(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_3
    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzzd;->zzg()Lcom/google/android/gms/internal/measurement/zzyc;

    move-result-object v2

    invoke-static {v1, v2, p3}, Lcom/google/android/gms/internal/measurement/zzze;->zza(ILcom/google/android/gms/internal/measurement/zzyc;Ljava/lang/StringBuilder;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, " "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    if-eqz p2, :cond_5

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzzd;->zzh()Lcom/google/android/gms/internal/measurement/zzaaf;

    move-result-object p2

    if-eqz p2, :cond_5

    const-string p2, "(REDACTED) "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzzd;->zzh()Lcom/google/android/gms/internal/measurement/zzaaf;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzaaf;->zzb()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    invoke-static {p0, p3}, Lcom/google/android/gms/internal/measurement/zzyy;->zza(Lcom/google/android/gms/internal/measurement/zzzd;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzaae;->a:Ljava/util/Set;

    new-instance p2, Lcom/google/android/gms/internal/measurement/zzzc;

    const-string v2, "[CONTEXT "

    const-string v3, " ]"

    invoke-direct {p2, v2, v3, p3}, Lcom/google/android/gms/internal/measurement/zzzc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0, p4, p2}, Lcom/google/android/gms/internal/measurement/zzaaa;->zza(Lcom/google/android/gms/internal/measurement/zzzq;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzzc;->zzb()V

    :goto_2
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_3
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzzd;->zzl()Lcom/google/android/gms/internal/measurement/zzzj;

    move-result-object p3

    sget-object p4, Lcom/google/android/gms/internal/measurement/zzxx;->zza:Lcom/google/android/gms/internal/measurement/zzyl;

    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/measurement/zzzj;->zzd(Lcom/google/android/gms/internal/measurement/zzyl;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Throwable;

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzzd;->zze()Ljava/util/logging/Level;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzaal;->zzb(Ljava/util/logging/Level;)I

    move-result p0

    if-eq p0, v1, :cond_9

    const/4 p4, 0x3

    if-eq p0, p4, :cond_8

    const/4 p4, 0x4

    if-eq p0, p4, :cond_7

    const/4 p4, 0x5

    if-eq p0, p4, :cond_6

    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_6
    invoke-static {p1, p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_7
    invoke-static {p1, p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_8
    invoke-static {p1, p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_9
    invoke-static {p1, p2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static zze()Lcom/google/android/gms/internal/measurement/zzaaq;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzaas;->h:Lcom/google/android/gms/internal/measurement/zzaaq;

    return-object v0
.end method


# virtual methods
.method public final zzb(Ljava/util/logging/Level;)Z
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzaal;->zzb(Ljava/util/logging/Level;)I

    move-result p1

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzaas;->b:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "all"

    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/measurement/zzzd;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzaas;->e:Lcom/google/android/gms/internal/measurement/zzzq;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzaas;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzaas;->c:Ljava/util/logging/Level;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzaas;->d:Ljava/util/Set;

    invoke-static {p1, v1, v2, p0, v0}, Lcom/google/android/gms/internal/measurement/zzaas;->a(Lcom/google/android/gms/internal/measurement/zzzd;Ljava/lang/String;Ljava/util/logging/Level;Ljava/util/Set;Lcom/google/android/gms/internal/measurement/zzzq;)V

    return-void
.end method
