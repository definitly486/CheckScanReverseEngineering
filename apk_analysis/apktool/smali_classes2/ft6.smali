.class public final synthetic Lft6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/pulltorefresh/PullToRefreshDefaults;

.field public final synthetic c:Landroidx/compose/material3/pulltorefresh/PullToRefreshState;

.field public final synthetic d:Z

.field public final synthetic e:Landroidx/compose/ui/Modifier;

.field public final synthetic f:J

.field public final synthetic g:J

.field public final synthetic h:F

.field public final synthetic i:I

.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/pulltorefresh/PullToRefreshDefaults;Landroidx/compose/material3/pulltorefresh/PullToRefreshState;ZLandroidx/compose/ui/Modifier;JJFII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lft6;->b:Landroidx/compose/material3/pulltorefresh/PullToRefreshDefaults;

    iput-object p2, p0, Lft6;->c:Landroidx/compose/material3/pulltorefresh/PullToRefreshState;

    iput-boolean p3, p0, Lft6;->d:Z

    iput-object p4, p0, Lft6;->e:Landroidx/compose/ui/Modifier;

    iput-wide p5, p0, Lft6;->f:J

    iput-wide p7, p0, Lft6;->g:J

    iput p9, p0, Lft6;->h:F

    iput p10, p0, Lft6;->i:I

    iput p11, p0, Lft6;->j:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    move-object v11, p1

    check-cast v11, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v0, p0, Lft6;->b:Landroidx/compose/material3/pulltorefresh/PullToRefreshDefaults;

    iget-object v1, p0, Lft6;->c:Landroidx/compose/material3/pulltorefresh/PullToRefreshState;

    iget-boolean v2, p0, Lft6;->d:Z

    iget-object v3, p0, Lft6;->e:Landroidx/compose/ui/Modifier;

    iget-wide v4, p0, Lft6;->f:J

    iget-wide v6, p0, Lft6;->g:J

    iget v8, p0, Lft6;->h:F

    iget v9, p0, Lft6;->i:I

    iget v10, p0, Lft6;->j:I

    invoke-static/range {v0 .. v12}, Landroidx/compose/material3/pulltorefresh/PullToRefreshDefaults;->f(Landroidx/compose/material3/pulltorefresh/PullToRefreshDefaults;Landroidx/compose/material3/pulltorefresh/PullToRefreshState;ZLandroidx/compose/ui/Modifier;JJFIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
