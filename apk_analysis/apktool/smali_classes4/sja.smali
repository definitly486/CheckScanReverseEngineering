.class public final Lsja;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/google/android/gms/common/api/internal/zabk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zabk;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lsja;->b:I

    iput-object p1, p0, Lsja;->c:Lcom/google/android/gms/common/api/internal/zabk;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lsja;->c:Lcom/google/android/gms/common/api/internal/zabk;

    iget p0, p0, Lsja;->b:I

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/zabk;->b(I)V

    return-void
.end method
