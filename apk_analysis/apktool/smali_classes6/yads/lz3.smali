.class public final Lyads/lz3;
.super Lyads/uy3;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/IllegalStateException;Lyads/vy3;Landroid/view/Surface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lyads/uy3;-><init>(Ljava/lang/IllegalStateException;Lyads/vy3;)V

    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/Surface;->isValid()Z

    :cond_0
    return-void
.end method
