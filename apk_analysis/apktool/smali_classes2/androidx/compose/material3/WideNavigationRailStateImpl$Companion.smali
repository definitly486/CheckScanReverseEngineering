.class public final Landroidx/compose/material3/WideNavigationRailStateImpl$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/material3/WideNavigationRailStateImpl;
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

    invoke-direct {p0}, Landroidx/compose/material3/WideNavigationRailStateImpl$Companion;-><init>()V

    return-void
.end method

.method private static final Saver$lambda$0(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/material3/WideNavigationRailState;)Landroidx/compose/material3/WideNavigationRailValue;
    .locals 0

    invoke-interface {p1}, Landroidx/compose/material3/WideNavigationRailState;->getTargetValue()Landroidx/compose/material3/WideNavigationRailValue;

    move-result-object p0

    return-object p0
.end method

.method private static final Saver$lambda$1(Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/material3/WideNavigationRailValue;)Landroidx/compose/material3/WideNavigationRailState;
    .locals 1

    new-instance v0, Landroidx/compose/material3/WideNavigationRailStateImpl;

    invoke-direct {v0, p1, p0}, Landroidx/compose/material3/WideNavigationRailStateImpl;-><init>(Landroidx/compose/material3/WideNavigationRailValue;Landroidx/compose/animation/core/AnimationSpec;)V

    return-object v0
.end method

.method public static synthetic a(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/material3/WideNavigationRailState;)Landroidx/compose/material3/WideNavigationRailValue;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/material3/WideNavigationRailStateImpl$Companion;->Saver$lambda$0(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/material3/WideNavigationRailState;)Landroidx/compose/material3/WideNavigationRailValue;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/material3/WideNavigationRailValue;)Landroidx/compose/material3/WideNavigationRailState;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/material3/WideNavigationRailStateImpl$Companion;->Saver$lambda$1(Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/material3/WideNavigationRailValue;)Landroidx/compose/material3/WideNavigationRailState;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final Saver(Landroidx/compose/animation/core/AnimationSpec;)Landroidx/compose/runtime/saveable/Saver;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;)",
            "Landroidx/compose/runtime/saveable/Saver<",
            "Landroidx/compose/material3/WideNavigationRailState;",
            "Landroidx/compose/material3/WideNavigationRailValue;",
            ">;"
        }
    .end annotation

    new-instance p0, Lqf;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lqf;-><init>(I)V

    new-instance v0, Lrf;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lrf;-><init>(Ljava/lang/Object;I)V

    invoke-static {p0, v0}, Landroidx/compose/runtime/saveable/SaverKt;->Saver(Lbm3;Lnl3;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object p0

    return-object p0
.end method
