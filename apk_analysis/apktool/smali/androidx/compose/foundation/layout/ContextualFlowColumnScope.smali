.class public interface abstract Landroidx/compose/foundation/layout/ContextualFlowColumnScope;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/layout/ColumnScope;


# annotations
.annotation runtime Landroidx/compose/foundation/layout/LayoutScopeMarker;
.end annotation

.annotation runtime Lul2;
.end annotation


# direct methods
.method public static synthetic fillMaxColumnWidth$default(Landroidx/compose/foundation/layout/ContextualFlowColumnScope;Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    :cond_0
    invoke-interface {p0, p1, p2}, Landroidx/compose/foundation/layout/ContextualFlowColumnScope;->fillMaxColumnWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "Super calls with default arguments not supported in this target, function: fillMaxColumnWidth"

    invoke-static {p0}, Ln1;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public abstract fillMaxColumnWidth(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;
.end method

.method public abstract getIndexInLine()I
.end method

.method public abstract getLineIndex()I
.end method

.method public abstract getMaxHeightInLine-D9Ej5fM()F
.end method

.method public abstract getMaxWidth-D9Ej5fM()F
.end method
