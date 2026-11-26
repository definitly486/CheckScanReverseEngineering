.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_common/zzmh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lxt7;


# direct methods
.method public synthetic constructor <init>(Lxt7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmh;->zza:Lxt7;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmh;->zza:Lxt7;

    invoke-virtual {p0}, Lxt7;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
