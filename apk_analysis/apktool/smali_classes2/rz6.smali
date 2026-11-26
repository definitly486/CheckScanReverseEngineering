.class public final synthetic Lrz6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/runtime/RecomposeScopeImpl;

.field public final synthetic c:I

.field public final synthetic d:Landroidx/collection/MutableObjectIntMap;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/RecomposeScopeImpl;ILandroidx/collection/MutableObjectIntMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrz6;->b:Landroidx/compose/runtime/RecomposeScopeImpl;

    iput p2, p0, Lrz6;->c:I

    iput-object p3, p0, Lrz6;->d:Landroidx/collection/MutableObjectIntMap;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lrz6;->d:Landroidx/collection/MutableObjectIntMap;

    check-cast p1, Landroidx/compose/runtime/Composition;

    iget-object v1, p0, Lrz6;->b:Landroidx/compose/runtime/RecomposeScopeImpl;

    iget p0, p0, Lrz6;->c:I

    invoke-static {v1, p0, v0, p1}, Landroidx/compose/runtime/RecomposeScopeImpl;->a(Landroidx/compose/runtime/RecomposeScopeImpl;ILandroidx/collection/MutableObjectIntMap;Landroidx/compose/runtime/Composition;)Lj59;

    move-result-object p0

    return-object p0
.end method
