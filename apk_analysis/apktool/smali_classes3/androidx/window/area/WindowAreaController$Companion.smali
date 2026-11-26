.class public final Landroidx/window/area/WindowAreaController$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/area/WindowAreaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljh2;)V
    .locals 0

    invoke-direct {p0}, Landroidx/window/area/WindowAreaController$Companion;-><init>()V

    return-void
.end method

.method private final getWindowAreaController()Landroidx/window/area/WindowAreaController;
    .locals 0

    invoke-static {}, Landroidx/window/area/WindowAreaController;->access$getWindowAreaController$delegate$cp()Lcl4;

    move-result-object p0

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/window/area/WindowAreaController;

    return-object p0
.end method


# virtual methods
.method public final getOrCreate()Landroidx/window/area/WindowAreaController;
    .locals 1

    invoke-static {}, Landroidx/window/area/WindowAreaController;->access$getDecorator$cp()Landroidx/window/area/WindowAreaControllerDecorator;

    move-result-object v0

    invoke-direct {p0}, Landroidx/window/area/WindowAreaController$Companion;->getWindowAreaController()Landroidx/window/area/WindowAreaController;

    move-result-object p0

    invoke-interface {v0, p0}, Landroidx/window/area/WindowAreaControllerDecorator;->decorate(Landroidx/window/area/WindowAreaController;)Landroidx/window/area/WindowAreaController;

    move-result-object p0

    return-object p0
.end method

.method public final overrideDecorator(Landroidx/window/area/WindowAreaControllerDecorator;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/window/area/WindowAreaController;->access$setDecorator$cp(Landroidx/window/area/WindowAreaControllerDecorator;)V

    return-void
.end method

.method public final reset()V
    .locals 0

    sget-object p0, Landroidx/window/area/EmptyDecorator;->INSTANCE:Landroidx/window/area/EmptyDecorator;

    invoke-static {p0}, Landroidx/window/area/WindowAreaController;->access$setDecorator$cp(Landroidx/window/area/WindowAreaControllerDecorator;)V

    return-void
.end method
