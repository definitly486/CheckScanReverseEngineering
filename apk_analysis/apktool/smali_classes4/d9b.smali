.class public final Ld9b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;


# instance fields
.field public final synthetic a:Le9b;


# direct methods
.method public constructor <init>(Le9b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld9b;->a:Le9b;

    return-void
.end method


# virtual methods
.method public final synthetic notifyListener(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/location/LocationListener;

    iget-object p0, p0, Ld9b;->a:Le9b;

    iget-object p0, p0, Le9b;->a:Lcom/google/android/gms/internal/location/zzdq;

    invoke-interface {p0}, Lcom/google/android/gms/internal/location/zzdq;->zzc()V

    return-void
.end method

.method public final onNotifyListenerFailed()V
    .locals 0

    return-void
.end method
