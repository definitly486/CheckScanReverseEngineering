.class public final Lcom/google/android/gms/internal/measurement/zzpj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Llm3;

.field public final b:Lcom/google/common/collect/z;

.field public c:Z


# direct methods
.method public constructor <init>(Llm3;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/google/common/collect/n;->d:I

    sget-object v0, Lcom/google/common/collect/z;->k:Lcom/google/common/collect/z;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzpj;->b:Lcom/google/common/collect/z;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzpj;->c:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzpj;->a:Llm3;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/measurement/zzpj;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzpj;->c:Z

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/measurement/zzph;
    .locals 4

    new-instance v0, Lse9;

    new-instance v1, Lcac;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/measurement/zzpj;->c:Z

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzpj;->a:Llm3;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzpj;->b:Lcom/google/common/collect/z;

    invoke-direct {v1, v3, v2, p0}, Lcac;-><init>(Llm3;ZLcom/google/common/collect/n;)V

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lse9;->b:Ljava/lang/Object;

    return-object v0
.end method
