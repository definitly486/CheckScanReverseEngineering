.class public final synthetic Li43;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Landroidx/compose/ui/focus/FocusRequester;


# direct methods
.method public synthetic constructor <init>(ZLandroidx/compose/ui/focus/FocusRequester;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Li43;->b:Z

    iput-object p2, p0, Li43;->c:Landroidx/compose/ui/focus/FocusRequester;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Li43;->b:Z

    iget-object p0, p0, Li43;->c:Landroidx/compose/ui/focus/FocusRequester;

    invoke-static {v0, p0}, Landroidx/compose/material3/ExposedDropdownMenuKt;->b(ZLandroidx/compose/ui/focus/FocusRequester;)Lj59;

    move-result-object p0

    return-object p0
.end method
