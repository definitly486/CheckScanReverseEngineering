.class public final Landroidx/compose/material3/SliderState$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/material3/SliderState;
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

    invoke-direct {p0}, Landroidx/compose/material3/SliderState$Companion;-><init>()V

    return-void
.end method

.method private static final Saver$lambda$0(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/material3/SliderState;)Ljava/util/List;
    .locals 0

    invoke-virtual {p1}, Landroidx/compose/material3/SliderState;->getValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/compose/material3/SliderState;->getSteps()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final Saver$lambda$1(Lll3;Lnm1;Ljava/util/List;)Landroidx/compose/material3/SliderState;
    .locals 3

    new-instance v0, Landroidx/compose/material3/SliderState;

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {v0, v1, p2, p0, p1}, Landroidx/compose/material3/SliderState;-><init>(FILll3;Lnm1;)V

    return-object v0
.end method

.method public static synthetic a(Lll3;Lnm1;Ljava/util/List;)Landroidx/compose/material3/SliderState;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/material3/SliderState$Companion;->Saver$lambda$1(Lll3;Lnm1;Ljava/util/List;)Landroidx/compose/material3/SliderState;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/material3/SliderState;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/material3/SliderState$Companion;->Saver$lambda$0(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/material3/SliderState;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final Saver(Lll3;Lnm1;)Landroidx/compose/runtime/saveable/Saver;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Lj59;",
            ">;",
            "Lnm1<",
            "Ljava/lang/Float;",
            ">;)",
            "Landroidx/compose/runtime/saveable/Saver<",
            "Landroidx/compose/material3/SliderState;",
            "*>;"
        }
    .end annotation

    new-instance p0, Lkc7;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkc7;-><init>(I)V

    new-instance v0, Lpf3;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1, p2}, Lpf3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p0, v0}, Landroidx/compose/runtime/saveable/ListSaverKt;->listSaver(Lbm3;Lnl3;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object p0

    return-object p0
.end method
