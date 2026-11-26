.class public final Lska;
.super Lbla;
.source "SourceFile"


# virtual methods
.method public final bridge synthetic c(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/common/internal/service/zai;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/internal/service/zan;

    new-instance v0, Lvka;

    invoke-direct {v0, p0}, Lvka;-><init>(Lska;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/internal/service/zan;->zae(Lcom/google/android/gms/common/internal/service/zam;)V

    return-void
.end method
