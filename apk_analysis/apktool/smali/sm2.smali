.class public final synthetic Lsm2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/util/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroidx/camera/core/impl/QuirkSettings;

    invoke-static {p1}, Landroidx/camera/extensions/internal/compat/quirk/DeviceQuirks;->a(Landroidx/camera/core/impl/QuirkSettings;)V

    return-void
.end method
