.class public final Landroidx/compose/material3/SwipeToDismissBoxState$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/material3/SwipeToDismissBoxState;
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

    invoke-direct {p0}, Landroidx/compose/material3/SwipeToDismissBoxState$Companion;-><init>()V

    return-void
.end method

.method private static final Saver$lambda$0(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/material3/SwipeToDismissBoxState;)Landroidx/compose/material3/SwipeToDismissBoxValue;
    .locals 0

    invoke-virtual {p1}, Landroidx/compose/material3/SwipeToDismissBoxState;->getCurrentValue()Landroidx/compose/material3/SwipeToDismissBoxValue;

    move-result-object p0

    return-object p0
.end method

.method private static final Saver$lambda$1(Landroidx/compose/ui/unit/Density;Lnl3;Lnl3;Landroidx/compose/material3/SwipeToDismissBoxValue;)Landroidx/compose/material3/SwipeToDismissBoxState;
    .locals 1

    new-instance v0, Landroidx/compose/material3/SwipeToDismissBoxState;

    invoke-direct {v0, p3, p0, p1, p2}, Landroidx/compose/material3/SwipeToDismissBoxState;-><init>(Landroidx/compose/material3/SwipeToDismissBoxValue;Landroidx/compose/ui/unit/Density;Lnl3;Lnl3;)V

    return-object v0
.end method

.method private static final Saver$lambda$2(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/material3/SwipeToDismissBoxState;)Landroidx/compose/material3/SwipeToDismissBoxValue;
    .locals 0

    invoke-virtual {p1}, Landroidx/compose/material3/SwipeToDismissBoxState;->getCurrentValue()Landroidx/compose/material3/SwipeToDismissBoxValue;

    move-result-object p0

    return-object p0
.end method

.method private static final Saver$lambda$3(Lnl3;Landroidx/compose/material3/SwipeToDismissBoxValue;)Landroidx/compose/material3/SwipeToDismissBoxState;
    .locals 1

    new-instance v0, Landroidx/compose/material3/SwipeToDismissBoxState;

    invoke-direct {v0, p1, p0}, Landroidx/compose/material3/SwipeToDismissBoxState;-><init>(Landroidx/compose/material3/SwipeToDismissBoxValue;Lnl3;)V

    return-object v0
.end method

.method public static synthetic a(Landroidx/compose/material3/SwipeToDismissBoxValue;Landroidx/compose/ui/unit/Density;Lnl3;Lnl3;)Landroidx/compose/material3/SwipeToDismissBoxState;
    .locals 0

    invoke-static {p1, p2, p3, p0}, Landroidx/compose/material3/SwipeToDismissBoxState$Companion;->Saver$lambda$1(Landroidx/compose/ui/unit/Density;Lnl3;Lnl3;Landroidx/compose/material3/SwipeToDismissBoxValue;)Landroidx/compose/material3/SwipeToDismissBoxState;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/material3/SwipeToDismissBoxState;)Landroidx/compose/material3/SwipeToDismissBoxValue;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/material3/SwipeToDismissBoxState$Companion;->Saver$lambda$0(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/material3/SwipeToDismissBoxState;)Landroidx/compose/material3/SwipeToDismissBoxValue;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lnl3;Landroidx/compose/material3/SwipeToDismissBoxValue;)Landroidx/compose/material3/SwipeToDismissBoxState;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/material3/SwipeToDismissBoxState$Companion;->Saver$lambda$3(Lnl3;Landroidx/compose/material3/SwipeToDismissBoxValue;)Landroidx/compose/material3/SwipeToDismissBoxState;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/material3/SwipeToDismissBoxState;)Landroidx/compose/material3/SwipeToDismissBoxValue;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/material3/SwipeToDismissBoxState$Companion;->Saver$lambda$2(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/material3/SwipeToDismissBoxState;)Landroidx/compose/material3/SwipeToDismissBoxValue;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final Saver(Lnl3;)Landroidx/compose/runtime/saveable/Saver;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)",
            "Landroidx/compose/runtime/saveable/Saver<",
            "Landroidx/compose/material3/SwipeToDismissBoxState;",
            "Landroidx/compose/material3/SwipeToDismissBoxValue;",
            ">;"
        }
    .end annotation

    new-instance p0, Lwg8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lw0;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lw0;-><init>(Ljava/lang/Object;I)V

    invoke-static {p0, v0}, Landroidx/compose/runtime/saveable/SaverKt;->Saver(Lbm3;Lnl3;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object p0

    return-object p0
.end method

.method public final Saver(Lnl3;Lnl3;Landroidx/compose/ui/unit/Density;)Landroidx/compose/runtime/saveable/Saver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/compose/material3/SwipeToDismissBoxValue;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lnl3<",
            "-",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/ui/unit/Density;",
            ")",
            "Landroidx/compose/runtime/saveable/Saver<",
            "Landroidx/compose/material3/SwipeToDismissBoxState;",
            "Landroidx/compose/material3/SwipeToDismissBoxValue;",
            ">;"
        }
    .end annotation

    .annotation runtime Lul2;
    .end annotation

    new-instance p0, Lxg8;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lxg8;-><init>(I)V

    new-instance v0, Lyg8;

    invoke-direct {v0, p1, p2, p3}, Lyg8;-><init>(Lnl3;Lnl3;Landroidx/compose/ui/unit/Density;)V

    invoke-static {p0, v0}, Landroidx/compose/runtime/saveable/SaverKt;->Saver(Lbm3;Lnl3;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object p0

    return-object p0
.end method
