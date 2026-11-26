.class public interface abstract Landroidx/camera/camera2/internal/IntrinsicZoomCalculator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/internal/IntrinsicZoomCalculator$Bindings;,
        Landroidx/camera/camera2/internal/IntrinsicZoomCalculator$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/internal/IntrinsicZoomCalculator$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/camera/camera2/internal/IntrinsicZoomCalculator$Companion;->$$INSTANCE:Landroidx/camera/camera2/internal/IntrinsicZoomCalculator$Companion;

    sput-object v0, Landroidx/camera/camera2/internal/IntrinsicZoomCalculator;->Companion:Landroidx/camera/camera2/internal/IntrinsicZoomCalculator$Companion;

    return-void
.end method


# virtual methods
.method public abstract calculateIntrinsicZoomRatio(Landroidx/camera/camera2/pipe/CameraMetadata;)Ljava/lang/Float;
.end method
