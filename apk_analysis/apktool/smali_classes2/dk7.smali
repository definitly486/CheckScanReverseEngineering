.class public final synthetic Ldk7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/SearchBarValue;

.field public final synthetic c:Landroidx/compose/animation/core/AnimationSpec;

.field public final synthetic d:Landroidx/compose/animation/core/AnimationSpec;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/SearchBarValue;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/AnimationSpec;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldk7;->b:Landroidx/compose/material3/SearchBarValue;

    iput-object p2, p0, Ldk7;->c:Landroidx/compose/animation/core/AnimationSpec;

    iput-object p3, p0, Ldk7;->d:Landroidx/compose/animation/core/AnimationSpec;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ldk7;->c:Landroidx/compose/animation/core/AnimationSpec;

    iget-object v1, p0, Ldk7;->d:Landroidx/compose/animation/core/AnimationSpec;

    iget-object p0, p0, Ldk7;->b:Landroidx/compose/material3/SearchBarValue;

    invoke-static {p0, v0, v1}, Landroidx/compose/material3/SearchBarKt;->v(Landroidx/compose/material3/SearchBarValue;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/AnimationSpec;)Landroidx/compose/material3/SearchBarState;

    move-result-object p0

    return-object p0
.end method
