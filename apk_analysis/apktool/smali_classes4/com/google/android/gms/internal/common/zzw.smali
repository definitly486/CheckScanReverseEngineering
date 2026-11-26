.class public final Lcom/google/android/gms/internal/common/zzw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/common/zzp;

.field public final b:Z

.field public final c:Lqec;


# direct methods
.method public constructor <init>(Lqec;ZLcom/google/android/gms/internal/common/zzp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/common/zzw;->c:Lqec;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/common/zzw;->b:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/common/zzw;->a:Lcom/google/android/gms/internal/common/zzp;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/common/zzp;)Lcom/google/android/gms/internal/common/zzw;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/common/zzw;

    new-instance v1, Lqec;

    invoke-direct {v1, p0}, Lqec;-><init>(Lcom/google/android/gms/internal/common/zzp;)V

    const/4 p0, 0x0

    sget-object v2, Lx8c;->b:Lx8c;

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/gms/internal/common/zzw;-><init>(Lqec;ZLcom/google/android/gms/internal/common/zzp;)V

    return-object v0
.end method


# virtual methods
.method public final zzb()Lcom/google/android/gms/internal/common/zzw;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/common/zzw;

    iget-object v1, p0, Lcom/google/android/gms/internal/common/zzw;->c:Lqec;

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/google/android/gms/internal/common/zzw;->a:Lcom/google/android/gms/internal/common/zzp;

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/gms/internal/common/zzw;-><init>(Lqec;ZLcom/google/android/gms/internal/common/zzp;)V

    return-object v0
.end method

.method public final zzc(Ljava/lang/CharSequence;)Ljava/lang/Iterable;
    .locals 1

    new-instance v0, Lydc;

    invoke-direct {v0, p0, p1}, Lydc;-><init>(Lcom/google/android/gms/internal/common/zzw;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public final zzd(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lndc;

    iget-object v1, p0, Lcom/google/android/gms/internal/common/zzw;->c:Lqec;

    iget-object v1, v1, Lqec;->a:Lcom/google/android/gms/internal/common/zzp;

    invoke-direct {v0, p0, p1, v1}, Lndc;-><init>(Lcom/google/android/gms/internal/common/zzw;Ljava/lang/CharSequence;Lcom/google/android/gms/internal/common/zzp;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v0}, Lndc;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lndc;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
