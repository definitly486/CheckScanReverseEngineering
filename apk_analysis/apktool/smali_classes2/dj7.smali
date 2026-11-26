.class public final synthetic Ldj7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:F

.field public final synthetic c:F

.field public final synthetic d:Lll3;

.field public final synthetic e:Z

.field public final synthetic f:Landroidx/compose/animation/core/AnimationSpec;

.field public final synthetic g:Landroidx/compose/animation/core/DecayAnimationSpec;


# direct methods
.method public synthetic constructor <init>(FFLll3;ZLandroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/DecayAnimationSpec;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ldj7;->b:F

    iput p2, p0, Ldj7;->c:F

    iput-object p3, p0, Ldj7;->d:Lll3;

    iput-boolean p4, p0, Ldj7;->e:Z

    iput-object p5, p0, Ldj7;->f:Landroidx/compose/animation/core/AnimationSpec;

    iput-object p6, p0, Ldj7;->g:Landroidx/compose/animation/core/DecayAnimationSpec;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    iget-object v4, p0, Ldj7;->f:Landroidx/compose/animation/core/AnimationSpec;

    iget-object v5, p0, Ldj7;->g:Landroidx/compose/animation/core/DecayAnimationSpec;

    iget v0, p0, Ldj7;->b:F

    iget v1, p0, Ldj7;->c:F

    iget-object v2, p0, Ldj7;->d:Lll3;

    iget-boolean v3, p0, Ldj7;->e:Z

    invoke-static/range {v0 .. v5}, Landroidx/compose/material3/SearchBarDefaults;->k(FFLll3;ZLandroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/DecayAnimationSpec;)Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;

    move-result-object p0

    return-object p0
.end method
