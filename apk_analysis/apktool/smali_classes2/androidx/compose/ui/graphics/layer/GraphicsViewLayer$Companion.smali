.class public final Landroidx/compose/ui/graphics/layer/GraphicsViewLayer$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/graphics/layer/GraphicsViewLayer;
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

    invoke-direct {p0}, Landroidx/compose/ui/graphics/layer/GraphicsViewLayer$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMayRenderInSoftware()Z
    .locals 0

    invoke-static {}, Landroidx/compose/ui/graphics/layer/GraphicsViewLayer;->access$getMayRenderInSoftware$cp()Z

    move-result p0

    return p0
.end method

.method public final getPlaceholderCanvas()Landroid/graphics/Canvas;
    .locals 0

    invoke-static {}, Landroidx/compose/ui/graphics/layer/GraphicsViewLayer;->access$getPlaceholderCanvas$cp()Landroid/graphics/Canvas;

    move-result-object p0

    return-object p0
.end method
