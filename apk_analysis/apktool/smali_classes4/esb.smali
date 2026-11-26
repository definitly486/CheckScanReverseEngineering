.class public final Lesb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/google/android/gms/measurement/internal/zzjd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzjd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lesb;->b:Ljava/lang/String;

    iput-object p3, p0, Lesb;->c:Ljava/lang/String;

    iput-object p4, p0, Lesb;->d:Ljava/lang/String;

    iput-object p1, p0, Lesb;->e:Lcom/google/android/gms/measurement/internal/zzjd;

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lesb;->e:Lcom/google/android/gms/measurement/internal/zzjd;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzjd;->a:Lcom/google/android/gms/measurement/internal/zzpg;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->Q()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->zzj()Lkva;

    move-result-object v0

    iget-object v1, p0, Lesb;->c:Ljava/lang/String;

    iget-object v2, p0, Lesb;->d:Ljava/lang/String;

    iget-object p0, p0, Lesb;->b:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Lkva;->X(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
