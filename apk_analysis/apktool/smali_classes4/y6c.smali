.class public final synthetic Ly6c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lb7c;


# direct methods
.method public synthetic constructor <init>(Lb7c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly6c;->b:Lb7c;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    iget-object p0, p0, Ly6c;->b:Lb7c;

    iget-object p0, p0, Lb7c;->c:Lcom/google/android/gms/measurement/internal/zznf;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zznf;->d:Lcom/google/android/gms/measurement/internal/zznl;

    iget-object v0, p0, Ljvb;->a:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzic;->zzaX()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v0

    new-instance v1, Lz6c;

    invoke-direct {v1, p0}, Lz6c;-><init>(Lcom/google/android/gms/measurement/internal/zznl;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhz;->zzj(Ljava/lang/Runnable;)V

    return-void
.end method
