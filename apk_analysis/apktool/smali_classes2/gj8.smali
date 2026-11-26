.class public final synthetic Lgj8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:J

.field public final synthetic e:J

.field public final synthetic f:Ldm3;

.field public final synthetic g:Lbm3;

.field public final synthetic h:Lbm3;

.field public final synthetic i:I

.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(ILandroidx/compose/ui/Modifier;JJLdm3;Lbm3;Lbm3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lgj8;->b:I

    iput-object p2, p0, Lgj8;->c:Landroidx/compose/ui/Modifier;

    iput-wide p3, p0, Lgj8;->d:J

    iput-wide p5, p0, Lgj8;->e:J

    iput-object p7, p0, Lgj8;->f:Ldm3;

    iput-object p8, p0, Lgj8;->g:Lbm3;

    iput-object p9, p0, Lgj8;->h:Lbm3;

    iput p10, p0, Lgj8;->i:I

    iput p11, p0, Lgj8;->j:I

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

    iget v0, p0, Lgj8;->b:I

    iget-object v1, p0, Lgj8;->c:Landroidx/compose/ui/Modifier;

    iget-wide v2, p0, Lgj8;->d:J

    iget-wide v4, p0, Lgj8;->e:J

    iget-object v6, p0, Lgj8;->f:Ldm3;

    iget-object v7, p0, Lgj8;->g:Lbm3;

    iget-object v8, p0, Lgj8;->h:Lbm3;

    iget v9, p0, Lgj8;->i:I

    iget v10, p0, Lgj8;->j:I

    invoke-static/range {v0 .. v12}, Landroidx/compose/material3/TabRowKt;->a(ILandroidx/compose/ui/Modifier;JJLdm3;Lbm3;Lbm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
