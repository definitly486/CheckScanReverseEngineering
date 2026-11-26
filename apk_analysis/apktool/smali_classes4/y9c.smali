.class public Ly9c;
.super Ljvb;
.source "SourceFile"


# instance fields
.field public final b:Lcom/google/android/gms/measurement/internal/zzpg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzpg;)V
    .locals 1

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzpg;->l:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-direct {p0, v0}, Ljvb;-><init>(Lcom/google/android/gms/measurement/internal/zzic;)V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Ly9c;->b:Lcom/google/android/gms/measurement/internal/zzpg;

    return-void
.end method
