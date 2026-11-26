.class public final synthetic Lit6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/pulltorefresh/PullToRefreshDefaults;

.field public final synthetic c:Landroidx/compose/material3/pulltorefresh/PullToRefreshState;

.field public final synthetic d:Z

.field public final synthetic e:Landroidx/compose/ui/Modifier;

.field public final synthetic f:F

.field public final synthetic g:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic h:J

.field public final synthetic i:F

.field public final synthetic j:Ldm3;

.field public final synthetic k:I

.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/pulltorefresh/PullToRefreshDefaults;Landroidx/compose/material3/pulltorefresh/PullToRefreshState;ZLandroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Shape;JFLdm3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lit6;->b:Landroidx/compose/material3/pulltorefresh/PullToRefreshDefaults;

    iput-object p2, p0, Lit6;->c:Landroidx/compose/material3/pulltorefresh/PullToRefreshState;

    iput-boolean p3, p0, Lit6;->d:Z

    iput-object p4, p0, Lit6;->e:Landroidx/compose/ui/Modifier;

    iput p5, p0, Lit6;->f:F

    iput-object p6, p0, Lit6;->g:Landroidx/compose/ui/graphics/Shape;

    iput-wide p7, p0, Lit6;->h:J

    iput p9, p0, Lit6;->i:F

    iput-object p10, p0, Lit6;->j:Ldm3;

    iput p11, p0, Lit6;->k:I

    iput p12, p0, Lit6;->l:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    move-object v12, p1

    check-cast v12, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iget-object v0, p0, Lit6;->b:Landroidx/compose/material3/pulltorefresh/PullToRefreshDefaults;

    iget-object v1, p0, Lit6;->c:Landroidx/compose/material3/pulltorefresh/PullToRefreshState;

    iget-boolean v2, p0, Lit6;->d:Z

    iget-object v3, p0, Lit6;->e:Landroidx/compose/ui/Modifier;

    iget v4, p0, Lit6;->f:F

    iget-object v5, p0, Lit6;->g:Landroidx/compose/ui/graphics/Shape;

    iget-wide v6, p0, Lit6;->h:J

    iget v8, p0, Lit6;->i:F

    iget-object v9, p0, Lit6;->j:Ldm3;

    iget v10, p0, Lit6;->k:I

    iget v11, p0, Lit6;->l:I

    invoke-static/range {v0 .. v13}, Landroidx/compose/material3/pulltorefresh/PullToRefreshDefaults;->a(Landroidx/compose/material3/pulltorefresh/PullToRefreshDefaults;Landroidx/compose/material3/pulltorefresh/PullToRefreshState;ZLandroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Shape;JFLdm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
