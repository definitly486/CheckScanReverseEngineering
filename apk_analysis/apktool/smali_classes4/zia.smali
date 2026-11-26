.class public final Lzia;
.super Lpja;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/google/android/gms/common/ConnectionResult;

.field public final synthetic c:Lbja;


# direct methods
.method public constructor <init>(Lbja;Lcom/google/android/gms/common/api/internal/zaba;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    iput-object p3, p0, Lzia;->b:Lcom/google/android/gms/common/ConnectionResult;

    iput-object p1, p0, Lzia;->c:Lbja;

    invoke-direct {p0, p2}, Lpja;-><init>(Lcom/google/android/gms/common/api/internal/zaba;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lzia;->c:Lbja;

    iget-object v0, v0, Lbja;->e:Lcom/google/android/gms/common/api/internal/zaar;

    iget-object p0, p0, Lzia;->b:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/zaar;->e(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
