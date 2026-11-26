.class public final Landroidx/camera/camera2/internal/IntrinsicZoomCalculator$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/internal/IntrinsicZoomCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Landroidx/camera/camera2/internal/IntrinsicZoomCalculator$Companion;

.field private static final NO_OP_INTRINSIC_ZOOM_CALCULATOR:Landroidx/camera/camera2/internal/IntrinsicZoomCalculator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/internal/IntrinsicZoomCalculator$Companion;

    invoke-direct {v0}, Landroidx/camera/camera2/internal/IntrinsicZoomCalculator$Companion;-><init>()V

    sput-object v0, Landroidx/camera/camera2/internal/IntrinsicZoomCalculator$Companion;->$$INSTANCE:Landroidx/camera/camera2/internal/IntrinsicZoomCalculator$Companion;

    new-instance v0, Landroidx/camera/camera2/internal/IntrinsicZoomCalculator$Companion$NO_OP_INTRINSIC_ZOOM_CALCULATOR$1;

    invoke-direct {v0}, Landroidx/camera/camera2/internal/IntrinsicZoomCalculator$Companion$NO_OP_INTRINSIC_ZOOM_CALCULATOR$1;-><init>()V

    sput-object v0, Landroidx/camera/camera2/internal/IntrinsicZoomCalculator$Companion;->NO_OP_INTRINSIC_ZOOM_CALCULATOR:Landroidx/camera/camera2/internal/IntrinsicZoomCalculator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getNO_OP_INTRINSIC_ZOOM_CALCULATOR()Landroidx/camera/camera2/internal/IntrinsicZoomCalculator;
    .locals 0

    sget-object p0, Landroidx/camera/camera2/internal/IntrinsicZoomCalculator$Companion;->NO_OP_INTRINSIC_ZOOM_CALCULATOR:Landroidx/camera/camera2/internal/IntrinsicZoomCalculator;

    return-object p0
.end method
