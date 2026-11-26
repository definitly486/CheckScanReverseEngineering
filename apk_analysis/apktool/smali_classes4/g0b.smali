.class public final Lg0b;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/auth/zzcg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/auth/zzcg;)V
    .locals 0

    iput-object p1, p0, Lg0b;->a:Lcom/google/android/gms/internal/auth/zzcg;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    iget-object p0, p0, Lg0b;->a:Lcom/google/android/gms/internal/auth/zzcg;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/zzcg;->zze()V

    return-void
.end method
