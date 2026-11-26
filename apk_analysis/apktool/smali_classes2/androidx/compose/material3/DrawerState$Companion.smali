.class public final Landroidx/compose/material3/DrawerState$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/material3/DrawerState;
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

    invoke-direct {p0}, Landroidx/compose/material3/DrawerState$Companion;-><init>()V

    return-void
.end method

.method private static final Saver$lambda$0(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/material3/DrawerState;)Landroidx/compose/material3/DrawerValue;
    .locals 0

    invoke-virtual {p1}, Landroidx/compose/material3/DrawerState;->getCurrentValue()Landroidx/compose/material3/DrawerValue;

    move-result-object p0

    return-object p0
.end method

.method private static final Saver$lambda$1(Lnl3;Landroidx/compose/material3/DrawerValue;)Landroidx/compose/material3/DrawerState;
    .locals 1

    new-instance v0, Landroidx/compose/material3/DrawerState;

    invoke-direct {v0, p1, p0}, Landroidx/compose/material3/DrawerState;-><init>(Landroidx/compose/material3/DrawerValue;Lnl3;)V

    return-object v0
.end method

.method public static synthetic a(Lnl3;Landroidx/compose/material3/DrawerValue;)Landroidx/compose/material3/DrawerState;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/material3/DrawerState$Companion;->Saver$lambda$1(Lnl3;Landroidx/compose/material3/DrawerValue;)Landroidx/compose/material3/DrawerState;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/material3/DrawerState;)Landroidx/compose/material3/DrawerValue;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/material3/DrawerState$Companion;->Saver$lambda$0(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/material3/DrawerState;)Landroidx/compose/material3/DrawerValue;

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
            "Landroidx/compose/material3/DrawerValue;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroidx/compose/runtime/saveable/Saver<",
            "Landroidx/compose/material3/DrawerState;",
            "Landroidx/compose/material3/DrawerValue;",
            ">;"
        }
    .end annotation

    new-instance p0, Lvs2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lws2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lws2;-><init>(Ljava/lang/Object;I)V

    invoke-static {p0, v0}, Landroidx/compose/runtime/saveable/SaverKt;->Saver(Lbm3;Lnl3;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object p0

    return-object p0
.end method
