.class public final Lc7b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;


# instance fields
.field public final synthetic a:Li7b;


# direct methods
.method public constructor <init>(Li7b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc7b;->a:Li7b;

    return-void
.end method


# virtual methods
.method public final synthetic notifyListener(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/location/LocationCallback;

    iget-object p0, p0, Lc7b;->a:Li7b;

    iget-object p0, p0, Li7b;->a:Lcom/google/android/gms/internal/location/zzdq;

    invoke-interface {p0}, Lcom/google/android/gms/internal/location/zzdq;->zzc()V

    return-void
.end method

.method public final onNotifyListenerFailed()V
    .locals 0

    return-void
.end method
