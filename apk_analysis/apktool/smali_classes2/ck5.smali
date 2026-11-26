.class public final synthetic Lck5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Lbm3;

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Landroidx/compose/material3/DrawerState;

.field public final synthetic e:Z

.field public final synthetic f:Lbm3;

.field public final synthetic g:I

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/DrawerState;ZLbm3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lck5;->b:Lbm3;

    iput-object p2, p0, Lck5;->c:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Lck5;->d:Landroidx/compose/material3/DrawerState;

    iput-boolean p4, p0, Lck5;->e:Z

    iput-object p5, p0, Lck5;->f:Lbm3;

    iput p6, p0, Lck5;->g:I

    iput p7, p0, Lck5;->h:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v0, p0, Lck5;->b:Lbm3;

    iget-object v1, p0, Lck5;->c:Landroidx/compose/ui/Modifier;

    iget-object v2, p0, Lck5;->d:Landroidx/compose/material3/DrawerState;

    iget-boolean v3, p0, Lck5;->e:Z

    iget-object v4, p0, Lck5;->f:Lbm3;

    iget v5, p0, Lck5;->g:I

    iget v6, p0, Lck5;->h:I

    invoke-static/range {v0 .. v8}, Landroidx/compose/material3/NavigationDrawerKt;->g(Lbm3;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/DrawerState;ZLbm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
