.class public final synthetic Lvk5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic d:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic e:Landroidx/compose/runtime/State;


# direct methods
.method public synthetic constructor <init>(ZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/State;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lvk5;->b:Z

    iput-object p2, p0, Lvk5;->c:Landroidx/compose/ui/text/TextStyle;

    iput-object p3, p0, Lvk5;->d:Landroidx/compose/ui/text/TextStyle;

    iput-object p4, p0, Lvk5;->e:Landroidx/compose/runtime/State;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lvk5;->d:Landroidx/compose/ui/text/TextStyle;

    iget-object v1, p0, Lvk5;->e:Landroidx/compose/runtime/State;

    iget-boolean v2, p0, Lvk5;->b:Z

    iget-object p0, p0, Lvk5;->c:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v2, p0, v0, v1}, Landroidx/compose/material3/NavigationItemKt;->p(ZLandroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/State;)Landroidx/compose/ui/text/TextStyle;

    move-result-object p0

    return-object p0
.end method
