.class public final synthetic Lpu8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Lbm3;

.field public final synthetic c:Lbm3;

.field public final synthetic d:Ldm3;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lbm3;Lbm3;Ldm3;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpu8;->b:Lbm3;

    iput-object p2, p0, Lpu8;->c:Lbm3;

    iput-object p3, p0, Lpu8;->d:Ldm3;

    iput p4, p0, Lpu8;->e:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v0, p0, Lpu8;->b:Lbm3;

    iget-object v1, p0, Lpu8;->c:Lbm3;

    iget-object v2, p0, Lpu8;->d:Ldm3;

    iget v3, p0, Lpu8;->e:I

    invoke-static/range {v0 .. v5}, Landroidx/compose/material3/TimePickerDialogKt;->c(Lbm3;Lbm3;Ldm3;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
