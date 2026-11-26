.class public final synthetic Lj43;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lnl3;

.field public final synthetic d:Landroidx/compose/ui/Modifier;

.field public final synthetic e:Ldm3;

.field public final synthetic f:I

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(ZLnl3;Landroidx/compose/ui/Modifier;Ldm3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lj43;->b:Z

    iput-object p2, p0, Lj43;->c:Lnl3;

    iput-object p3, p0, Lj43;->d:Landroidx/compose/ui/Modifier;

    iput-object p4, p0, Lj43;->e:Ldm3;

    iput p5, p0, Lj43;->f:I

    iput p6, p0, Lj43;->g:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-boolean v0, p0, Lj43;->b:Z

    iget-object v1, p0, Lj43;->c:Lnl3;

    iget-object v2, p0, Lj43;->d:Landroidx/compose/ui/Modifier;

    iget-object v3, p0, Lj43;->e:Ldm3;

    iget v4, p0, Lj43;->f:I

    iget v5, p0, Lj43;->g:I

    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/ExposedDropdownMenuKt;->c(ZLnl3;Landroidx/compose/ui/Modifier;Ldm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
