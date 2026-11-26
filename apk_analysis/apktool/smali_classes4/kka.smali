.class public final Lkka;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/common/api/internal/zacl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zacl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkka;->b:Lcom/google/android/gms/common/api/internal/zacl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    iget-object p0, p0, Lkka;->b:Lcom/google/android/gms/common/api/internal/zacl;

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zacl;->p:Lcom/google/android/gms/common/api/internal/zack;

    invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/internal/zack;->zaa(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
