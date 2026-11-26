.class public Lcom/google/android/gms/common/zzy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Lcom/google/android/gms/common/zzy;


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/Throwable;

.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/zzy;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v2, v2, v3, v1}, Lcom/google/android/gms/common/zzy;-><init>(Ljava/lang/String;Ljava/lang/Exception;ZI)V

    sput-object v0, Lcom/google/android/gms/common/zzy;->e:Lcom/google/android/gms/common/zzy;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/google/android/gms/common/zzy;->a:Z

    iput p4, p0, Lcom/google/android/gms/common/zzy;->d:I

    iput-object p1, p0, Lcom/google/android/gms/common/zzy;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/common/zzy;->c:Ljava/lang/Throwable;

    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/google/android/gms/common/zzy;
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/zzy;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3, v1}, Lcom/google/android/gms/common/zzy;-><init>(Ljava/lang/String;Ljava/lang/Exception;ZI)V

    return-object v0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/Exception;)Lcom/google/android/gms/common/zzy;
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/zzy;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/google/android/gms/common/zzy;-><init>(Ljava/lang/String;Ljava/lang/Exception;ZI)V

    return-object v0
.end method

.method public static zzf(IJ)Lcom/google/android/gms/common/zzy;
    .locals 1

    new-instance p1, Lcom/google/android/gms/common/zzy;

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, p2, p0}, Lcom/google/android/gms/common/zzy;-><init>(Ljava/lang/String;Ljava/lang/Exception;ZI)V

    return-object p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/zzy;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final d()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/common/zzy;->a:Z

    if-nez v0, :cond_1

    const/4 v0, 0x3

    const-string v1, "GoogleCertificatesRslt"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/zzy;->c:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/zzy;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/zzy;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
