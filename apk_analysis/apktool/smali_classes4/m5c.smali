.class public final Lm5c;
.super Lu1;
.source "SourceFile"


# virtual methods
.method public final bridge synthetic d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_common/zzme;

    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;

    invoke-static {}, Ljb5;->c()Ljb5;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzmf;

    invoke-static {}, Ljb5;->c()Ljb5;

    move-result-object v2

    invoke-virtual {v2}, Ljb5;->b()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzmf;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_common/zzme;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzme;->zzb()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljb5;->b()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lxt7;

    invoke-virtual {v0, v3}, Ljb5;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxt7;

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;-><init>(Landroid/content/Context;Lxt7;Lcom/google/android/gms/internal/mlkit_vision_common/zzmc;Ljava/lang/String;)V

    return-object p0
.end method
