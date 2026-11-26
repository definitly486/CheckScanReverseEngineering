.class public final Lcom/google/android/gms/internal/measurement/i;
.super Lcom/google/android/gms/internal/measurement/zzwl;
.source "SourceFile"


# static fields
.field public static final e:Lcom/google/android/gms/internal/measurement/zzwl;

.field public static final f:Lcom/google/android/gms/internal/measurement/zzwl;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/measurement/i;

    new-instance v1, Landroidx/collection/SimpleArrayMap;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroidx/collection/SimpleArrayMap;-><init>(I)V

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/measurement/zzwl;-><init>(Lcom/google/android/gms/internal/measurement/zzwl;Landroidx/collection/SimpleArrayMap;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzwl;->b()Lcom/google/android/gms/internal/measurement/zzwl;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/i;->e:Lcom/google/android/gms/internal/measurement/zzwl;

    new-instance v1, Lcom/google/android/gms/internal/measurement/i;

    new-instance v2, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v2}, Landroidx/collection/SimpleArrayMap;-><init>()V

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/measurement/zzwl;-><init>(Lcom/google/android/gms/internal/measurement/zzwl;Landroidx/collection/SimpleArrayMap;)V

    iget-boolean v0, v1, Lcom/google/android/gms/internal/measurement/zzwl;->c:Z

    xor-int/lit8 v0, v0, 0x1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "Can\'t mutate after handing to trace"

    invoke-static {v0, v3}, Lo8;->s(ZLjava/lang/Object;)V

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzwl;->d:Lcom/google/android/gms/internal/measurement/zzwj;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzwl;->c(Lcom/google/android/gms/internal/measurement/zzwj;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    const-string v4, "Key already present"

    invoke-static {v3, v4}, Lo8;->s(ZLjava/lang/Object;)V

    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/zzwl;->b:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v3, v0, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzwl;->b()Lcom/google/android/gms/internal/measurement/zzwl;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/i;->f:Lcom/google/android/gms/internal/measurement/zzwl;

    return-void
.end method
