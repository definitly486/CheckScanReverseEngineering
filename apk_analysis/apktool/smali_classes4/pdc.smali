.class public final Lpdc;
.super Lcom/google/android/gms/internal/play_billing/zzo;
.source "SourceFile"


# instance fields
.field public final synthetic i:Lzdc;


# direct methods
.method public constructor <init>(Lzdc;)V
    .locals 0

    iput-object p1, p0, Lpdc;->i:Lzdc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzo;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lpdc;->i:Lzdc;

    iget-object p0, p0, Lzdc;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzp;

    if-nez p0, :cond_0

    const-string p0, "Completer object has been garbage collected, future will fail soon"

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzp;->a:Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "tag=["

    const-string v1, "]"

    invoke-static {v0, p0, v1}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
