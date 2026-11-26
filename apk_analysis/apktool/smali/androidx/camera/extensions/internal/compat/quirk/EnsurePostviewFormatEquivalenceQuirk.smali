.class public final Landroidx/camera/extensions/internal/compat/quirk/EnsurePostviewFormatEquivalenceQuirk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/Quirk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/extensions/internal/compat/quirk/EnsurePostviewFormatEquivalenceQuirk$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/extensions/internal/compat/quirk/EnsurePostviewFormatEquivalenceQuirk$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/extensions/internal/compat/quirk/EnsurePostviewFormatEquivalenceQuirk$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/extensions/internal/compat/quirk/EnsurePostviewFormatEquivalenceQuirk$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/extensions/internal/compat/quirk/EnsurePostviewFormatEquivalenceQuirk;->Companion:Landroidx/camera/extensions/internal/compat/quirk/EnsurePostviewFormatEquivalenceQuirk$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final load()Z
    .locals 1

    sget-object v0, Landroidx/camera/extensions/internal/compat/quirk/EnsurePostviewFormatEquivalenceQuirk;->Companion:Landroidx/camera/extensions/internal/compat/quirk/EnsurePostviewFormatEquivalenceQuirk$Companion;

    invoke-virtual {v0}, Landroidx/camera/extensions/internal/compat/quirk/EnsurePostviewFormatEquivalenceQuirk$Companion;->load()Z

    move-result v0

    return v0
.end method
