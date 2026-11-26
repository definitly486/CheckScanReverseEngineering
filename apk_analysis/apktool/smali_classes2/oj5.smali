.class public final synthetic Loj5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Lbm3;

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Landroidx/compose/material3/DrawerState;

.field public final synthetic e:Z

.field public final synthetic f:J

.field public final synthetic g:Lbm3;

.field public final synthetic h:I

.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/DrawerState;ZJLbm3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loj5;->b:Lbm3;

    iput-object p2, p0, Loj5;->c:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Loj5;->d:Landroidx/compose/material3/DrawerState;

    iput-boolean p4, p0, Loj5;->e:Z

    iput-wide p5, p0, Loj5;->f:J

    iput-object p7, p0, Loj5;->g:Lbm3;

    iput p8, p0, Loj5;->h:I

    iput p9, p0, Loj5;->i:I

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

    iget-object v0, p0, Loj5;->b:Lbm3;

    iget-object v1, p0, Loj5;->c:Landroidx/compose/ui/Modifier;

    iget-object v2, p0, Loj5;->d:Landroidx/compose/material3/DrawerState;

    iget-boolean v3, p0, Loj5;->e:Z

    iget-wide v4, p0, Loj5;->f:J

    iget-object v6, p0, Loj5;->g:Lbm3;

    iget v7, p0, Loj5;->h:I

    iget v8, p0, Loj5;->i:I

    invoke-static/range {v0 .. v10}, Landroidx/compose/material3/NavigationDrawerKt;->D(Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/DrawerState;ZJLbm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
