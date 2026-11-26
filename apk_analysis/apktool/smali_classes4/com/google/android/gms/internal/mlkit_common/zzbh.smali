.class public final Lcom/google/android/gms/internal/mlkit_common/zzbh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Ljava/util/HashMap;

.field public final c:Lcom/google/firebase/encoders/ObjectEncoder;


# direct methods
.method public constructor <init>(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/google/firebase/encoders/ObjectEncoder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzbh;->a:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzbh;->b:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_common/zzbh;->c:Lcom/google/firebase/encoders/ObjectEncoder;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)[B
    .locals 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    new-instance v1, Luwa;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzbh;->a:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_common/zzbh;->b:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzbh;->c:Lcom/google/firebase/encoders/ObjectEncoder;

    invoke-direct {v1, v0, v2, v3, p0}, Luwa;-><init>(Ljava/io/ByteArrayOutputStream;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/google/firebase/encoders/ObjectEncoder;)V

    invoke-virtual {v1, p1}, Luwa;->f(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method
