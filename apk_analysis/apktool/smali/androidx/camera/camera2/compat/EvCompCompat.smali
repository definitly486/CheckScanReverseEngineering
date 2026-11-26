.class public interface abstract Landroidx/camera/camera2/compat/EvCompCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/compat/EvCompCompat$Bindings;
    }
.end annotation


# virtual methods
.method public abstract applyAsync(ILandroidx/camera/camera2/impl/UseCaseCameraRequestControl;Z)Lmk2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;",
            "Z)",
            "Lmk2<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRange()Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStep()Landroid/util/Rational;
.end method

.method public abstract getSupported()Z
.end method

.method public abstract stopRunningTask(Ljava/lang/Throwable;)V
.end method
