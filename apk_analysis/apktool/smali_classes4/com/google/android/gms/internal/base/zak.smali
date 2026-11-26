.class public final Lcom/google/android/gms/internal/base/zak;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:Lcom/google/android/gms/internal/base/zam;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/base/zal;

    invoke-direct {v0}, Lcom/google/android/gms/internal/base/zal;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/base/zam;

    invoke-direct {v0}, Lcom/google/android/gms/internal/base/zam;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/base/zak;->a:Lcom/google/android/gms/internal/base/zam;

    return-void
.end method

.method public static zaa()Lcom/google/android/gms/internal/base/zam;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/base/zak;->a:Lcom/google/android/gms/internal/base/zam;

    return-object v0
.end method
