.class public interface abstract Landroidx/compose/foundation/layout/FlexBoxScope;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Landroidx/compose/foundation/layout/LayoutScopeMarker;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/layout/FlexBoxScope$DefaultImpls;
    }
.end annotation


# direct methods
.method public static synthetic access$flex$jd(Landroidx/compose/foundation/layout/FlexBoxScope;Landroidx/compose/ui/Modifier;Lnl3;)Landroidx/compose/ui/Modifier;
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/compose/foundation/layout/FlexBoxScope;->flex(Landroidx/compose/ui/Modifier;Lnl3;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract flex(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/FlexConfig;)Landroidx/compose/ui/Modifier;
.end method

.method public flex(Landroidx/compose/ui/Modifier;Lnl3;)Landroidx/compose/ui/Modifier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Lnl3<",
            "-",
            "Landroidx/compose/foundation/layout/FlexConfigScope;",
            "Lj59;",
            ">;)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    new-instance v0, Landroidx/compose/foundation/layout/FlexBoxKt$sam$androidx_compose_foundation_layout_FlexConfig$0;

    invoke-direct {v0, p2}, Landroidx/compose/foundation/layout/FlexBoxKt$sam$androidx_compose_foundation_layout_FlexConfig$0;-><init>(Lnl3;)V

    invoke-interface {p0, p1, v0}, Landroidx/compose/foundation/layout/FlexBoxScope;->flex(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/FlexConfig;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
