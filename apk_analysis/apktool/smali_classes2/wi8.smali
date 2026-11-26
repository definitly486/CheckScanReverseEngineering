.class public final synthetic Lwi8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:J

.field public final synthetic d:J

.field public final synthetic e:Ldm3;

.field public final synthetic f:Lbm3;

.field public final synthetic g:Lbm3;

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;JJLdm3;Lbm3;Lbm3;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwi8;->b:Landroidx/compose/ui/Modifier;

    iput-wide p2, p0, Lwi8;->c:J

    iput-wide p4, p0, Lwi8;->d:J

    iput-object p6, p0, Lwi8;->e:Ldm3;

    iput-object p7, p0, Lwi8;->f:Lbm3;

    iput-object p8, p0, Lwi8;->g:Lbm3;

    iput p9, p0, Lwi8;->h:I

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

    iget-object v0, p0, Lwi8;->b:Landroidx/compose/ui/Modifier;

    iget-wide v1, p0, Lwi8;->c:J

    iget-wide v3, p0, Lwi8;->d:J

    iget-object v5, p0, Lwi8;->e:Ldm3;

    iget-object v6, p0, Lwi8;->f:Lbm3;

    iget-object v7, p0, Lwi8;->g:Lbm3;

    iget v8, p0, Lwi8;->h:I

    invoke-static/range {v0 .. v10}, Landroidx/compose/material3/TabRowKt;->h(Landroidx/compose/ui/Modifier;JJLdm3;Lbm3;Lbm3;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
