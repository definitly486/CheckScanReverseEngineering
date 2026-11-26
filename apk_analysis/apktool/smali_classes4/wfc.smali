.class public final synthetic Lwfc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljs;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/internal/measurement/zzvm;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzvm;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwfc;->b:Lcom/google/android/gms/internal/measurement/zzvm;

    iput p2, p0, Lwfc;->c:I

    return-void
.end method


# virtual methods
.method public final synthetic call()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    iget-object v0, p0, Lwfc;->b:Lcom/google/android/gms/internal/measurement/zzvm;

    iget p0, p0, Lwfc;->c:I

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/zzvm;->a(I)Ll0;

    move-result-object p0

    return-object p0
.end method
