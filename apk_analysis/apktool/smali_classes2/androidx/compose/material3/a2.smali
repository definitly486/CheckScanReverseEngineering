.class public final synthetic Landroidx/compose/material3/a2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lr07;


# direct methods
.method public synthetic constructor <init>(Lr07;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/a2;->b:Lr07;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/a2;->b:Lr07;

    check-cast p1, Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-static {p0, p1}, Landroidx/compose/material3/LabelKt$Label$wrappedContent$1;->a(Lr07;Landroidx/compose/ui/layout/LayoutCoordinates;)Lj59;

    move-result-object p0

    return-object p0
.end method
