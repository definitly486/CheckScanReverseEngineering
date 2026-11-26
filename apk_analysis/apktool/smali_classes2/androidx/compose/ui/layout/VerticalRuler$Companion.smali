.class public final Landroidx/compose/ui/layout/VerticalRuler$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/layout/VerticalRuler;
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

    invoke-direct {p0}, Landroidx/compose/ui/layout/VerticalRuler$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final derived(Lbm3;)Landroidx/compose/ui/layout/VerticalRuler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbm3<",
            "-",
            "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
            "-",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)",
            "Landroidx/compose/ui/layout/VerticalRuler;"
        }
    .end annotation

    new-instance p0, Landroidx/compose/ui/layout/VerticalRuler;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/compose/ui/layout/VerticalRuler;-><init>(Lbm3;Ljh2;)V

    return-object p0
.end method

.method public final varargs maxOf([Landroidx/compose/ui/layout/VerticalRuler;)Landroidx/compose/ui/layout/VerticalRuler;
    .locals 1

    new-instance v0, Landroidx/compose/ui/layout/VerticalRuler$Companion$maxOf$1;

    invoke-direct {v0, p1}, Landroidx/compose/ui/layout/VerticalRuler$Companion$maxOf$1;-><init>([Landroidx/compose/ui/layout/VerticalRuler;)V

    invoke-virtual {p0, v0}, Landroidx/compose/ui/layout/VerticalRuler$Companion;->derived(Lbm3;)Landroidx/compose/ui/layout/VerticalRuler;

    move-result-object p0

    return-object p0
.end method

.method public final varargs minOf([Landroidx/compose/ui/layout/VerticalRuler;)Landroidx/compose/ui/layout/VerticalRuler;
    .locals 1

    new-instance v0, Landroidx/compose/ui/layout/VerticalRuler$Companion$minOf$1;

    invoke-direct {v0, p1}, Landroidx/compose/ui/layout/VerticalRuler$Companion$minOf$1;-><init>([Landroidx/compose/ui/layout/VerticalRuler;)V

    invoke-virtual {p0, v0}, Landroidx/compose/ui/layout/VerticalRuler$Companion;->derived(Lbm3;)Landroidx/compose/ui/layout/VerticalRuler;

    move-result-object p0

    return-object p0
.end method
