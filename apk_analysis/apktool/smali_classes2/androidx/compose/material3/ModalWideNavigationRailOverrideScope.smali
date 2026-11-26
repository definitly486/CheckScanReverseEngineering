.class public final Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final arrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

.field private final collapsedShape:Landroidx/compose/ui/graphics/Shape;

.field private final colors:Landroidx/compose/material3/WideNavigationRailColors;

.field private final content:Lbm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbm3<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private final expandedHeaderTopPadding:F

.field private final expandedProperties:Landroidx/compose/material3/ModalWideNavigationRailProperties;

.field private final expandedShape:Landroidx/compose/ui/graphics/Shape;

.field private final header:Lbm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbm3<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private final modifier:Landroidx/compose/ui/Modifier;

.field private final shouldHideOnCollapse:Z

.field private final state:Landroidx/compose/material3/WideNavigationRailState;

.field private final windowInsets:Landroidx/compose/foundation/layout/WindowInsets;


# direct methods
.method private constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/WideNavigationRailState;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/WideNavigationRailColors;Lbm3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/material3/ModalWideNavigationRailProperties;Lbm3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/material3/WideNavigationRailState;",
            "Z",
            "Landroidx/compose/ui/graphics/Shape;",
            "Landroidx/compose/ui/graphics/Shape;",
            "Landroidx/compose/material3/WideNavigationRailColors;",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;F",
            "Landroidx/compose/foundation/layout/WindowInsets;",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/material3/ModalWideNavigationRailProperties;",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;->modifier:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;->state:Landroidx/compose/material3/WideNavigationRailState;

    iput-boolean p3, p0, Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;->shouldHideOnCollapse:Z

    iput-object p4, p0, Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;->collapsedShape:Landroidx/compose/ui/graphics/Shape;

    iput-object p5, p0, Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;->expandedShape:Landroidx/compose/ui/graphics/Shape;

    iput-object p6, p0, Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;->colors:Landroidx/compose/material3/WideNavigationRailColors;

    iput-object p7, p0, Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;->header:Lbm3;

    iput p8, p0, Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;->expandedHeaderTopPadding:F

    iput-object p9, p0, Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;->windowInsets:Landroidx/compose/foundation/layout/WindowInsets;

    iput-object p10, p0, Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;->arrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    iput-object p11, p0, Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;->expandedProperties:Landroidx/compose/material3/ModalWideNavigationRailProperties;

    iput-object p12, p0, Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;->content:Lbm3;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/WideNavigationRailState;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/WideNavigationRailColors;Lbm3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/material3/ModalWideNavigationRailProperties;Lbm3;Ljh2;)V
    .locals 0

    .line 28
    invoke-direct/range {p0 .. p12}, Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/WideNavigationRailState;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/WideNavigationRailColors;Lbm3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/material3/ModalWideNavigationRailProperties;Lbm3;)V

    return-void
.end method


# virtual methods
.method public final getArrangement()Landroidx/compose/foundation/layout/Arrangement$Vertical;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;->arrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    return-object p0
.end method

.method public final getCollapsedShape()Landroidx/compose/ui/graphics/Shape;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;->collapsedShape:Landroidx/compose/ui/graphics/Shape;

    return-object p0
.end method

.method public final getColors()Landroidx/compose/material3/WideNavigationRailColors;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;->colors:Landroidx/compose/material3/WideNavigationRailColors;

    return-object p0
.end method

.method public final getContent()Lbm3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbm3<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;->content:Lbm3;

    return-object p0
.end method

.method public final getExpandedHeaderTopPadding-D9Ej5fM()F
    .locals 0

    iget p0, p0, Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;->expandedHeaderTopPadding:F

    return p0
.end method

.method public final getExpandedProperties()Landroidx/compose/material3/ModalWideNavigationRailProperties;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;->expandedProperties:Landroidx/compose/material3/ModalWideNavigationRailProperties;

    return-object p0
.end method

.method public final getExpandedShape()Landroidx/compose/ui/graphics/Shape;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;->expandedShape:Landroidx/compose/ui/graphics/Shape;

    return-object p0
.end method

.method public final getHeader()Lbm3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbm3<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;->header:Lbm3;

    return-object p0
.end method

.method public final getModifier()Landroidx/compose/ui/Modifier;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;->modifier:Landroidx/compose/ui/Modifier;

    return-object p0
.end method

.method public final getShouldHideOnCollapse()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;->shouldHideOnCollapse:Z

    return p0
.end method

.method public final getState()Landroidx/compose/material3/WideNavigationRailState;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;->state:Landroidx/compose/material3/WideNavigationRailState;

    return-object p0
.end method

.method public final getWindowInsets()Landroidx/compose/foundation/layout/WindowInsets;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/ModalWideNavigationRailOverrideScope;->windowInsets:Landroidx/compose/foundation/layout/WindowInsets;

    return-object p0
.end method
