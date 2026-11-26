.class public Lcom/google/android/gms/internal/common/zzi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Class;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/common/zzi;->a:Ljava/lang/Class;

    iput-object p2, p0, Lcom/google/android/gms/internal/common/zzi;->b:Ljava/lang/Object;

    return-void
.end method

.method public static zzb(Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/android/gms/internal/common/zzi;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/common/zzi;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/common/zzi;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final zzc()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/common/zzi;->a:Ljava/lang/Class;

    return-object p0
.end method

.method public final zzd()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/common/zzi;->b:Ljava/lang/Object;

    return-object p0
.end method
