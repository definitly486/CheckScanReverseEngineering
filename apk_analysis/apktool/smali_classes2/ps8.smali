.class public final synthetic Lps8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic c:Lbm3;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/text/TextStyle;Lbm3;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lps8;->b:Landroidx/compose/ui/text/TextStyle;

    iput-object p2, p0, Lps8;->c:Lbm3;

    iput p3, p0, Lps8;->d:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v0, p0, Lps8;->b:Landroidx/compose/ui/text/TextStyle;

    iget-object v1, p0, Lps8;->c:Lbm3;

    iget p0, p0, Lps8;->d:I

    invoke-static {v0, v1, p0, p1, p2}, Landroidx/compose/material3/TextKt;->d(Landroidx/compose/ui/text/TextStyle;Lbm3;ILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method
