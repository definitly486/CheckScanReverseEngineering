.class public final Landroidx/camera/camera2/compat/quirk/PreviewPixelHDRnetQuirk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/Quirk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/compat/quirk/PreviewPixelHDRnetQuirk$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/compat/quirk/PreviewPixelHDRnetQuirk$Companion;

.field private static final SUPPORTED_DEVICES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/camera/camera2/compat/quirk/PreviewPixelHDRnetQuirk$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/compat/quirk/PreviewPixelHDRnetQuirk$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/camera2/compat/quirk/PreviewPixelHDRnetQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/PreviewPixelHDRnetQuirk$Companion;

    const-string v0, "redfin"

    const-string v1, "barbet"

    const-string v2, "sunfish"

    const-string v3, "bramble"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/compat/quirk/PreviewPixelHDRnetQuirk;->SUPPORTED_DEVICES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getSUPPORTED_DEVICES$cp()Ljava/util/List;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/compat/quirk/PreviewPixelHDRnetQuirk;->SUPPORTED_DEVICES:Ljava/util/List;

    return-object v0
.end method
