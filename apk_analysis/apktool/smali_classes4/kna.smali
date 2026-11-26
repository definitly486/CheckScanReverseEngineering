.class public final Lkna;
.super Lcom/google/android/gms/auth/api/signin/internal/zba;
.source "SourceFile"


# instance fields
.field public final synthetic a:Llna;


# direct methods
.method public constructor <init>(Llna;)V
    .locals 0

    iput-object p1, p0, Lkna;->a:Llna;

    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/internal/zba;-><init>()V

    return-void
.end method


# virtual methods
.method public final zbd(Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    iget-object p0, p0, Lkna;->a:Llna;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
