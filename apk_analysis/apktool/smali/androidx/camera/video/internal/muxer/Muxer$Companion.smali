.class public final Landroidx/camera/video/internal/muxer/Muxer$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/video/internal/muxer/Muxer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Landroidx/camera/video/internal/muxer/Muxer$Companion;

.field public static final MUXER_FORMAT_3GPP:I = 0x2

.field public static final MUXER_FORMAT_MPEG_4:I = 0x0

.field public static final MUXER_FORMAT_WEBM:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/video/internal/muxer/Muxer$Companion;

    invoke-direct {v0}, Landroidx/camera/video/internal/muxer/Muxer$Companion;-><init>()V

    sput-object v0, Landroidx/camera/video/internal/muxer/Muxer$Companion;->$$INSTANCE:Landroidx/camera/video/internal/muxer/Muxer$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
