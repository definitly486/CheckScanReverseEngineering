.class public final Lgka;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgla;


# instance fields
.field public final synthetic a:Landroid/os/Bundle;

.field public final synthetic b:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lgka;->a:Landroid/os/Bundle;

    iput-object p1, p0, Lgka;->b:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;

    return-void
.end method


# virtual methods
.method public final zaa()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final zab()V
    .locals 1

    iget-object v0, p0, Lgka;->b:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;

    iget-object v0, v0, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->a:Lcom/google/android/gms/dynamic/LifecycleDelegate;

    iget-object p0, p0, Lgka;->a:Landroid/os/Bundle;

    invoke-interface {v0, p0}, Lcom/google/android/gms/dynamic/LifecycleDelegate;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
