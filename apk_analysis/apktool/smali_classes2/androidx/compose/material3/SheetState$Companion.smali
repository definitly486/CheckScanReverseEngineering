.class public final Landroidx/compose/material3/SheetState$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/material3/SheetState;
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

    invoke-direct {p0}, Landroidx/compose/material3/SheetState$Companion;-><init>()V

    return-void
.end method

.method private static final Saver$lambda$0(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/material3/SheetState;)Landroidx/compose/material3/SheetValue;
    .locals 0

    invoke-virtual {p1}, Landroidx/compose/material3/SheetState;->getCurrentValue()Landroidx/compose/material3/SheetValue;

    move-result-object p0

    return-object p0
.end method

.method private static final Saver$lambda$1(ZLll3;Lll3;Lnl3;ZLandroidx/compose/material3/SheetValue;)Landroidx/compose/material3/SheetState;
    .locals 7

    new-instance v0, Landroidx/compose/material3/SheetState;

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move v6, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Landroidx/compose/material3/SheetState;-><init>(ZLll3;Lll3;Landroidx/compose/material3/SheetValue;Lnl3;Z)V

    return-object v0
.end method

.method private static final Saver$lambda$3(Landroidx/compose/ui/unit/Density;)F
    .locals 1

    sget-object v0, Landroidx/compose/material3/BottomSheetDefaults;->INSTANCE:Landroidx/compose/material3/BottomSheetDefaults;

    invoke-virtual {v0}, Landroidx/compose/material3/BottomSheetDefaults;->getPositionalThreshold-D9Ej5fM$material3()F

    move-result v0

    invoke-interface {p0, v0}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result p0

    return p0
.end method

.method private static final Saver$lambda$5(Landroidx/compose/ui/unit/Density;)F
    .locals 1

    sget-object v0, Landroidx/compose/material3/BottomSheetDefaults;->INSTANCE:Landroidx/compose/material3/BottomSheetDefaults;

    invoke-virtual {v0}, Landroidx/compose/material3/BottomSheetDefaults;->getVelocityThreshold-D9Ej5fM$material3()F

    move-result v0

    invoke-interface {p0, v0}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result p0

    return p0
.end method

.method public static synthetic a(ZLll3;Lll3;Lnl3;ZLandroidx/compose/material3/SheetValue;)Landroidx/compose/material3/SheetState;
    .locals 0

    invoke-static/range {p0 .. p5}, Landroidx/compose/material3/SheetState$Companion;->Saver$lambda$1(ZLll3;Lll3;Lnl3;ZLandroidx/compose/material3/SheetValue;)Landroidx/compose/material3/SheetState;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroidx/compose/ui/unit/Density;)F
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/SheetState$Companion;->Saver$lambda$3(Landroidx/compose/ui/unit/Density;)F

    move-result p0

    return p0
.end method

.method public static synthetic c(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/material3/SheetState;)Landroidx/compose/material3/SheetValue;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/material3/SheetState$Companion;->Saver$lambda$0(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/material3/SheetState;)Landroidx/compose/material3/SheetValue;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Landroidx/compose/ui/unit/Density;)F
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/SheetState$Companion;->Saver$lambda$5(Landroidx/compose/ui/unit/Density;)F

    move-result p0

    return p0
.end method


# virtual methods
.method public final Saver(ZLll3;Lll3;Lnl3;Z)Landroidx/compose/runtime/saveable/Saver;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lll3<",
            "Ljava/lang/Float;",
            ">;",
            "Lll3<",
            "Ljava/lang/Float;",
            ">;",
            "Lnl3<",
            "-",
            "Landroidx/compose/material3/SheetValue;",
            "Ljava/lang/Boolean;",
            ">;Z)",
            "Landroidx/compose/runtime/saveable/Saver<",
            "Landroidx/compose/material3/SheetState;",
            "Landroidx/compose/material3/SheetValue;",
            ">;"
        }
    .end annotation

    new-instance p0, Lao3;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lao3;-><init>(I)V

    new-instance v1, Lju7;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lju7;-><init>(ZLll3;Lll3;Lnl3;Z)V

    invoke-static {p0, v1}, Landroidx/compose/runtime/saveable/SaverKt;->Saver(Lbm3;Lnl3;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic Saver(ZLnl3;Landroidx/compose/ui/unit/Density;Z)Landroidx/compose/runtime/saveable/Saver;
    .locals 6
    .annotation runtime Lul2;
    .end annotation

    .line 21
    new-instance v2, Ljj5;

    const/4 v0, 0x3

    invoke-direct {v2, p3, v0}, Ljj5;-><init>(Ljava/lang/Object;I)V

    new-instance v3, Lzg0;

    const/4 v0, 0x5

    invoke-direct {v3, p3, v0}, Lzg0;-><init>(Ljava/lang/Object;I)V

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/material3/SheetState$Companion;->Saver(ZLll3;Lll3;Lnl3;Z)Landroidx/compose/runtime/saveable/Saver;

    move-result-object p0

    return-object p0
.end method
