.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_common/zzmn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inject/Provider;


# instance fields
.field public final synthetic zza:Lt29;


# direct methods
.method public synthetic constructor <init>(Lt29;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmn;->zza:Lt29;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmn;->zza:Lt29;

    new-instance v0, Liy2;

    const-string v1, "proto"

    invoke-direct {v0, v1}, Liy2;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzml;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzml;

    const-string v2, "FIREBASE_ML_SDK"

    invoke-interface {p0, v2, v0, v1}, Lt29;->a(Ljava/lang/String;Liy2;Ld29;)Lw29;

    move-result-object p0

    return-object p0
.end method
