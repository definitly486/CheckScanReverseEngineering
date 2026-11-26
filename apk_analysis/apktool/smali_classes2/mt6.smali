.class public final synthetic Lmt6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lll3;

.field public final synthetic d:Landroidx/compose/ui/Modifier;

.field public final synthetic e:Landroidx/compose/material3/pulltorefresh/PullToRefreshState;

.field public final synthetic f:Landroidx/compose/ui/Alignment;

.field public final synthetic g:Ldm3;

.field public final synthetic h:Ldm3;

.field public final synthetic i:I

.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(ZLll3;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/pulltorefresh/PullToRefreshState;Landroidx/compose/ui/Alignment;Ldm3;Ldm3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lmt6;->b:Z

    iput-object p2, p0, Lmt6;->c:Lll3;

    iput-object p3, p0, Lmt6;->d:Landroidx/compose/ui/Modifier;

    iput-object p4, p0, Lmt6;->e:Landroidx/compose/material3/pulltorefresh/PullToRefreshState;

    iput-object p5, p0, Lmt6;->f:Landroidx/compose/ui/Alignment;

    iput-object p6, p0, Lmt6;->g:Ldm3;

    iput-object p7, p0, Lmt6;->h:Ldm3;

    iput p8, p0, Lmt6;->i:I

    iput p9, p0, Lmt6;->j:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-boolean v0, p0, Lmt6;->b:Z

    iget-object v1, p0, Lmt6;->c:Lll3;

    iget-object v2, p0, Lmt6;->d:Landroidx/compose/ui/Modifier;

    iget-object v3, p0, Lmt6;->e:Landroidx/compose/material3/pulltorefresh/PullToRefreshState;

    iget-object v4, p0, Lmt6;->f:Landroidx/compose/ui/Alignment;

    iget-object v5, p0, Lmt6;->g:Ldm3;

    iget-object v6, p0, Lmt6;->h:Ldm3;

    iget v7, p0, Lmt6;->i:I

    iget v8, p0, Lmt6;->j:I

    invoke-static/range {v0 .. v10}, Landroidx/compose/material3/pulltorefresh/PullToRefreshKt;->a(ZLll3;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/pulltorefresh/PullToRefreshState;Landroidx/compose/ui/Alignment;Ldm3;Ldm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
