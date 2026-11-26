.class public final synthetic Lt00;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:J

.field public final synthetic d:J

.field public final synthetic e:Ldm3;

.field public final synthetic f:I

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;JJLdm3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt00;->b:Landroidx/compose/ui/Modifier;

    iput-wide p2, p0, Lt00;->c:J

    iput-wide p4, p0, Lt00;->d:J

    iput-object p6, p0, Lt00;->e:Ldm3;

    iput p7, p0, Lt00;->f:I

    iput p8, p0, Lt00;->g:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v0, p0, Lt00;->b:Landroidx/compose/ui/Modifier;

    iget-wide v1, p0, Lt00;->c:J

    iget-wide v3, p0, Lt00;->d:J

    iget-object v5, p0, Lt00;->e:Ldm3;

    iget v6, p0, Lt00;->f:I

    iget v7, p0, Lt00;->g:I

    invoke-static/range {v0 .. v9}, Landroidx/compose/material3/BadgeKt;->a(Landroidx/compose/ui/Modifier;JJLdm3;IILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
