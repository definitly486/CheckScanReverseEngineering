.class public final synthetic Lpn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Ldm3;

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:I

.field public final synthetic e:Lnl3;

.field public final synthetic f:I

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(Ldm3;Landroidx/compose/ui/Modifier;ILnl3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpn;->b:Ldm3;

    iput-object p2, p0, Lpn;->c:Landroidx/compose/ui/Modifier;

    iput p3, p0, Lpn;->d:I

    iput-object p4, p0, Lpn;->e:Lnl3;

    iput p5, p0, Lpn;->f:I

    iput p6, p0, Lpn;->g:I

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

    iget-object v0, p0, Lpn;->b:Ldm3;

    iget-object v1, p0, Lpn;->c:Landroidx/compose/ui/Modifier;

    iget v2, p0, Lpn;->d:I

    iget-object v3, p0, Lpn;->e:Lnl3;

    iget v4, p0, Lpn;->f:I

    iget v5, p0, Lpn;->g:I

    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/AppBarColumnKt;->a(Ldm3;Landroidx/compose/ui/Modifier;ILnl3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
