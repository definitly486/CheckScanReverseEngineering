.class public interface abstract Landroidx/camera/camera2/compat/quirk/CaptureIntentPreviewQuirk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/Quirk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/compat/quirk/CaptureIntentPreviewQuirk$Companion;,
        Landroidx/camera/camera2/compat/quirk/CaptureIntentPreviewQuirk$DefaultImpls;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/compat/quirk/CaptureIntentPreviewQuirk$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/camera/camera2/compat/quirk/CaptureIntentPreviewQuirk$Companion;->$$INSTANCE:Landroidx/camera/camera2/compat/quirk/CaptureIntentPreviewQuirk$Companion;

    sput-object v0, Landroidx/camera/camera2/compat/quirk/CaptureIntentPreviewQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/CaptureIntentPreviewQuirk$Companion;

    return-void
.end method

.method public static synthetic access$workaroundByCaptureIntentPreview$jd(Landroidx/camera/camera2/compat/quirk/CaptureIntentPreviewQuirk;)Z
    .locals 0

    invoke-super {p0}, Landroidx/camera/camera2/compat/quirk/CaptureIntentPreviewQuirk;->workaroundByCaptureIntentPreview()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public workaroundByCaptureIntentPreview()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
