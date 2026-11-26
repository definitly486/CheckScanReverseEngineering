.class public final synthetic Landroidx/compose/foundation/layout/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/layout/k0;->b:Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/k0;->b:Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;

    check-cast p1, Landroidx/compose/animation/core/Animatable;

    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3$1;->g(Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;Landroidx/compose/animation/core/Animatable;)Lj59;

    move-result-object p0

    return-object p0
.end method
