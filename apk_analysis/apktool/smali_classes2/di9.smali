.class public final synthetic Ldi9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/WideNavigationRailValue;

.field public final synthetic c:Landroidx/compose/animation/core/FiniteAnimationSpec;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/WideNavigationRailValue;Landroidx/compose/animation/core/FiniteAnimationSpec;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldi9;->b:Landroidx/compose/material3/WideNavigationRailValue;

    iput-object p2, p0, Ldi9;->c:Landroidx/compose/animation/core/FiniteAnimationSpec;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ldi9;->b:Landroidx/compose/material3/WideNavigationRailValue;

    iget-object p0, p0, Ldi9;->c:Landroidx/compose/animation/core/FiniteAnimationSpec;

    invoke-static {v0, p0}, Landroidx/compose/material3/WideNavigationRailStateKt;->a(Landroidx/compose/material3/WideNavigationRailValue;Landroidx/compose/animation/core/FiniteAnimationSpec;)Landroidx/compose/material3/WideNavigationRailState;

    move-result-object p0

    return-object p0
.end method
