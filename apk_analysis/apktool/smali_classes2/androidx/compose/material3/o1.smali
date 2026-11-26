.class public final synthetic Landroidx/compose/material3/o1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/o1;->b:Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/o1;->b:Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;

    check-cast p1, Landroidx/compose/ui/unit/IntSize;

    invoke-static {p0, p1}, Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;->f(Landroidx/compose/material3/EnterAlwaysSearchBarScrollBehavior;Landroidx/compose/ui/unit/IntSize;)Lj59;

    move-result-object p0

    return-object p0
.end method
