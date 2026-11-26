.class public final synthetic Landroidx/compose/material3/j1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lo07;

.field public final synthetic c:Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;

.field public final synthetic d:Lo07;


# direct methods
.method public synthetic constructor <init>(Lo07;Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;Lo07;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/j1;->b:Lo07;

    iput-object p2, p0, Landroidx/compose/material3/j1;->c:Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;

    iput-object p3, p0, Landroidx/compose/material3/j1;->d:Lo07;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/compose/material3/j1;->d:Lo07;

    check-cast p1, Landroidx/compose/animation/core/AnimationScope;

    iget-object v1, p0, Landroidx/compose/material3/j1;->b:Lo07;

    iget-object p0, p0, Landroidx/compose/material3/j1;->c:Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;

    invoke-static {v1, p0, v0, p1}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->a(Lo07;Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;Lo07;Landroidx/compose/animation/core/AnimationScope;)Lj59;

    move-result-object p0

    return-object p0
.end method
