.class public final synthetic Lqj7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/internal/MutableWindowInsets;

.field public final synthetic c:Landroidx/compose/foundation/layout/WindowInsets;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/internal/MutableWindowInsets;Landroidx/compose/foundation/layout/WindowInsets;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqj7;->b:Landroidx/compose/material3/internal/MutableWindowInsets;

    iput-object p2, p0, Lqj7;->c:Landroidx/compose/foundation/layout/WindowInsets;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lqj7;->c:Landroidx/compose/foundation/layout/WindowInsets;

    check-cast p1, Landroidx/compose/foundation/layout/WindowInsets;

    iget-object p0, p0, Lqj7;->b:Landroidx/compose/material3/internal/MutableWindowInsets;

    invoke-static {p0, v0, p1}, Landroidx/compose/material3/SearchBarKt;->h(Landroidx/compose/material3/internal/MutableWindowInsets;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/WindowInsets;)Lj59;

    move-result-object p0

    return-object p0
.end method
