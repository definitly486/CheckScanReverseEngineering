.class public final Lc4b;
.super Lcom/google/android/gms/internal/location/zzz;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lf2b;


# direct methods
.method public constructor <init>(Lf2b;)V
    .locals 0

    iput-object p1, p0, Lc4b;->a:Lf2b;

    invoke-direct {p0}, Lcom/google/android/gms/internal/location/zzz;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/location/LocationSettingsResult;Lcom/google/android/gms/common/api/ApiMetadata;)V
    .locals 0

    iget-object p0, p0, Lc4b;->a:Lf2b;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
