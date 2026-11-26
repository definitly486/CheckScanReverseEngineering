.class public final Landroidx/compose/foundation/contextmenu/ContextMenuSpec;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I

.field private static final ContainerWidthMax:F

.field private static final ContainerWidthMin:F

.field private static final CornerRadius:F

.field private static final DividerHeight:F

.field private static final DividerVerticalPadding:F

.field private static final FontSize:J

.field private static final FontWeight:Landroidx/compose/ui/text/font/FontWeight;

.field private static final HorizontalPadding:F

.field public static final INSTANCE:Landroidx/compose/foundation/contextmenu/ContextMenuSpec;

.field private static final IconSize:F

.field private static final LabelHorizontalTextAlignment:I

.field private static final LabelVerticalTextAlignment:Landroidx/compose/ui/Alignment$Vertical;

.field private static final LetterSpacing:J

.field private static final LineHeight:J

.field private static final ListItemHeight:F

.field private static final MenuContainerElevation:F

.field private static final VerticalPadding:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;

    invoke-direct {v0}, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;-><init>()V

    sput-object v0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->INSTANCE:Landroidx/compose/foundation/contextmenu/ContextMenuSpec;

    const/high16 v0, 0x42e00000    # 112.0f

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->ContainerWidthMin:F

    const/high16 v0, 0x438c0000    # 280.0f

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->ContainerWidthMax:F

    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->ListItemHeight:F

    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->MenuContainerElevation:F

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->CornerRadius:F

    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v0

    sput-object v0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->LabelVerticalTextAlignment:Landroidx/compose/ui/Alignment$Vertical;

    sget-object v0, Landroidx/compose/ui/text/style/TextAlign;->Companion:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextAlign$Companion;->getStart-e0LSkKk()I

    move-result v0

    sput v0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->LabelHorizontalTextAlignment:I

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->HorizontalPadding:F

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    sput v1, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->VerticalPadding:F

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    sput v1, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->IconSize:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    sput v1, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->DividerHeight:F

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->DividerVerticalPadding:F

    const/16 v0, 0xe

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->FontSize:J

    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getMedium()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v0

    sput-object v0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->FontWeight:Landroidx/compose/ui/text/font/FontWeight;

    const/16 v0, 0x14

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->LineHeight:J

    const v0, 0x3dcccccd    # 0.1f

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(F)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->LetterSpacing:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getContainerWidthMax-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->ContainerWidthMax:F

    return p0
.end method

.method public final getContainerWidthMin-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->ContainerWidthMin:F

    return p0
.end method

.method public final getCornerRadius-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->CornerRadius:F

    return p0
.end method

.method public final getDividerHeight-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->DividerHeight:F

    return p0
.end method

.method public final getDividerVerticalPadding-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->DividerVerticalPadding:F

    return p0
.end method

.method public final getFontSize-XSAIIZE()J
    .locals 2

    sget-wide v0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->FontSize:J

    return-wide v0
.end method

.method public final getFontWeight()Landroidx/compose/ui/text/font/FontWeight;
    .locals 0

    sget-object p0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->FontWeight:Landroidx/compose/ui/text/font/FontWeight;

    return-object p0
.end method

.method public final getHorizontalPadding-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->HorizontalPadding:F

    return p0
.end method

.method public final getIconSize-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->IconSize:F

    return p0
.end method

.method public final getLabelHorizontalTextAlignment-e0LSkKk()I
    .locals 0

    sget p0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->LabelHorizontalTextAlignment:I

    return p0
.end method

.method public final getLabelVerticalTextAlignment()Landroidx/compose/ui/Alignment$Vertical;
    .locals 0

    sget-object p0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->LabelVerticalTextAlignment:Landroidx/compose/ui/Alignment$Vertical;

    return-object p0
.end method

.method public final getLetterSpacing-XSAIIZE()J
    .locals 2

    sget-wide v0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->LetterSpacing:J

    return-wide v0
.end method

.method public final getLineHeight-XSAIIZE()J
    .locals 2

    sget-wide v0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->LineHeight:J

    return-wide v0
.end method

.method public final getListItemHeight-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->ListItemHeight:F

    return p0
.end method

.method public final getMenuContainerElevation-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->MenuContainerElevation:F

    return p0
.end method

.method public final getVerticalPadding-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->VerticalPadding:F

    return p0
.end method

.method public final textStyle-8_81llA(J)Landroidx/compose/ui/text/TextStyle;
    .locals 32

    sget v20, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->LabelHorizontalTextAlignment:I

    sget-wide v3, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->FontSize:J

    sget-object v5, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->FontWeight:Landroidx/compose/ui/text/font/FontWeight;

    sget-wide v22, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->LineHeight:J

    sget-wide v10, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->LetterSpacing:J

    new-instance v0, Landroidx/compose/ui/text/TextStyle;

    const v30, 0xfd7f78

    const/16 v31, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-wide/from16 v1, p1

    invoke-direct/range {v0 .. v31}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/graphics/drawscope/DrawStyle;IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;ILjh2;)V

    return-object v0
.end method
