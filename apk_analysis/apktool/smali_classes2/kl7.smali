.class public final synthetic Lkl7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/SegmentedButtonDefaults;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/SegmentedButtonDefaults;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkl7;->b:Landroidx/compose/material3/SegmentedButtonDefaults;

    iput p2, p0, Lkl7;->c:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v0, p0, Lkl7;->b:Landroidx/compose/material3/SegmentedButtonDefaults;

    iget p0, p0, Lkl7;->c:I

    invoke-static {v0, p0, p1, p2}, Landroidx/compose/material3/SegmentedButtonDefaults;->b(Landroidx/compose/material3/SegmentedButtonDefaults;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
