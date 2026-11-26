.class public final Landroidx/camera/camera2/impl/UseCaseCameraKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final defaultOptionPriority:Landroidx/camera/core/impl/Config$OptionPriority;

.field private static final useCaseCameraIds:Llt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lkt;->b(I)Llt;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/impl/UseCaseCameraKt;->useCaseCameraIds:Llt;

    sget-object v0, Landroidx/camera/core/impl/Config$OptionPriority;->OPTIONAL:Landroidx/camera/core/impl/Config$OptionPriority;

    sput-object v0, Landroidx/camera/camera2/impl/UseCaseCameraKt;->defaultOptionPriority:Landroidx/camera/core/impl/Config$OptionPriority;

    return-void
.end method

.method public static final getDefaultOptionPriority()Landroidx/camera/core/impl/Config$OptionPriority;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/impl/UseCaseCameraKt;->defaultOptionPriority:Landroidx/camera/core/impl/Config$OptionPriority;

    return-object v0
.end method

.method public static final getUseCaseCameraIds()Llt;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/impl/UseCaseCameraKt;->useCaseCameraIds:Llt;

    return-object v0
.end method
