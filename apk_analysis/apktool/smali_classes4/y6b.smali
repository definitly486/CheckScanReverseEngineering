.class public final Ly6b;
.super Lcom/google/android/gms/internal/measurement/zzcu;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ld7b;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p2, p0, Ly6b;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzcu;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze()V
    .locals 0

    iget-object p0, p0, Ly6b;->a:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
