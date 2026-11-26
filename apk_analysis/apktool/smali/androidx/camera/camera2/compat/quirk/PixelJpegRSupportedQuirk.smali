.class public final Landroidx/camera/camera2/compat/quirk/PixelJpegRSupportedQuirk;
.super Landroidx/camera/core/internal/compat/quirk/BackportedFixQuirk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/compat/quirk/PixelJpegRSupportedQuirk$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/compat/quirk/PixelJpegRSupportedQuirk$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/compat/quirk/PixelJpegRSupportedQuirk$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/compat/quirk/PixelJpegRSupportedQuirk$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/camera2/compat/quirk/PixelJpegRSupportedQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/PixelJpegRSupportedQuirk$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/camera/core/internal/compat/quirk/BackportedFixQuirk;-><init>()V

    return-void
.end method

.method public static final isEnabled()Z
    .locals 1

    sget-object v0, Landroidx/camera/camera2/compat/quirk/PixelJpegRSupportedQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/PixelJpegRSupportedQuirk$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/PixelJpegRSupportedQuirk$Companion;->isEnabled()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getKnownIssue()Landroidx/core/backported/fixes/KnownIssue;
    .locals 0

    sget-object p0, Landroidx/core/backported/fixes/KnownIssues;->KI_398591036:Landroidx/core/backported/fixes/KnownIssue;

    return-object p0
.end method
