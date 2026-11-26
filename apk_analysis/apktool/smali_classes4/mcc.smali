.class public final synthetic Lmcc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/internal/measurement/zzqi;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzqi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmcc;->b:Lcom/google/android/gms/internal/measurement/zzqi;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 1

    iget-object p0, p0, Lmcc;->b:Lcom/google/android/gms/internal/measurement/zzqi;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzqi;->c:Lncc;

    invoke-virtual {p0}, Lncc;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "PhenotypeProcessReaper"

    const-string v0, "Killing process to refresh experiment configuration"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    :cond_0
    return-void
.end method
