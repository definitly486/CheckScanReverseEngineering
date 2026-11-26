.class public final Landroidx/compose/material3/internal/AnchoredDraggableState$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/material3/internal/AnchoredDraggableState;
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

    invoke-direct {p0}, Landroidx/compose/material3/internal/AnchoredDraggableState$Companion;-><init>()V

    return-void
.end method

.method private static final Saver$lambda$0(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/material3/internal/AnchoredDraggableState;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Landroidx/compose/material3/internal/AnchoredDraggableState;->getCurrentValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final Saver$lambda$1(Lnl3;Lll3;Lll3;Lnl3;Ljava/lang/Object;)Landroidx/compose/material3/internal/AnchoredDraggableState;
    .locals 6

    new-instance v0, Landroidx/compose/material3/internal/AnchoredDraggableState;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v1, p4

    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/internal/AnchoredDraggableState;-><init>(Ljava/lang/Object;Lnl3;Lll3;Lll3;Lnl3;)V

    return-object v0
.end method

.method public static synthetic a(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/material3/internal/AnchoredDraggableState;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/material3/internal/AnchoredDraggableState$Companion;->Saver$lambda$0(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/material3/internal/AnchoredDraggableState;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lnl3;Lll3;Lll3;Lnl3;Ljava/lang/Object;)Landroidx/compose/material3/internal/AnchoredDraggableState;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/material3/internal/AnchoredDraggableState$Companion;->Saver$lambda$1(Lnl3;Lll3;Lll3;Lnl3;Ljava/lang/Object;)Landroidx/compose/material3/internal/AnchoredDraggableState;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final Saver(Lll3;Lnl3;Lnl3;Lll3;)Landroidx/compose/runtime/saveable/Saver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lll3<",
            "+",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;>;",
            "Lnl3<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lnl3<",
            "-",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;",
            "Lll3<",
            "Ljava/lang/Float;",
            ">;)",
            "Landroidx/compose/runtime/saveable/Saver<",
            "Landroidx/compose/material3/internal/AnchoredDraggableState<",
            "TT;>;TT;>;"
        }
    .end annotation

    new-instance p0, Llf;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Llf;-><init>(I)V

    new-instance v0, Lnf;

    invoke-direct {v0, p4, p3, p2, p1}, Lnf;-><init>(Lll3;Lnl3;Lnl3;Lll3;)V

    invoke-static {p0, v0}, Landroidx/compose/runtime/saveable/SaverKt;->Saver(Lbm3;Lnl3;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object p0

    return-object p0
.end method
