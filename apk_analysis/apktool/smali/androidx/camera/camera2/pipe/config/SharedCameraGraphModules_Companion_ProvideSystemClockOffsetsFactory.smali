.class public final Landroidx/camera/camera2/pipe/config/SharedCameraGraphModules_Companion_ProvideSystemClockOffsetsFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxs6;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/config/SharedCameraGraphModules_Companion_ProvideSystemClockOffsetsFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxs6;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Landroidx/camera/camera2/pipe/config/SharedCameraGraphModules_Companion_ProvideSystemClockOffsetsFactory;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/config/SharedCameraGraphModules_Companion_ProvideSystemClockOffsetsFactory$InstanceHolder;->INSTANCE:Landroidx/camera/camera2/pipe/config/SharedCameraGraphModules_Companion_ProvideSystemClockOffsetsFactory;

    return-object v0
.end method

.method public static provideSystemClockOffsets()Landroidx/camera/camera2/pipe/core/SystemClockOffsets;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/config/SharedCameraGraphModules;->Companion:Landroidx/camera/camera2/pipe/config/SharedCameraGraphModules$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/config/SharedCameraGraphModules$Companion;->provideSystemClockOffsets()Landroidx/camera/camera2/pipe/core/SystemClockOffsets;

    move-result-object v0

    invoke-static {v0}, Lte6;->b(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public get()Landroidx/camera/camera2/pipe/core/SystemClockOffsets;
    .locals 0

    .line 5
    invoke-static {}, Landroidx/camera/camera2/pipe/config/SharedCameraGraphModules_Companion_ProvideSystemClockOffsetsFactory;->provideSystemClockOffsets()Landroidx/camera/camera2/pipe/core/SystemClockOffsets;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/config/SharedCameraGraphModules_Companion_ProvideSystemClockOffsetsFactory;->get()Landroidx/camera/camera2/pipe/core/SystemClockOffsets;

    move-result-object p0

    return-object p0
.end method
