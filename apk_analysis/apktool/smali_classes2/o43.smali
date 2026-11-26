.class public final synthetic Lo43;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/compose/runtime/MutableState;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lnl3;

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/MutableState;Ljava/lang/String;Lnl3;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo43;->b:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Lo43;->c:Ljava/lang/String;

    iput-object p3, p0, Lo43;->d:Lnl3;

    iput-boolean p4, p0, Lo43;->e:Z

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lo43;->d:Lnl3;

    iget-boolean v1, p0, Lo43;->e:Z

    iget-object v2, p0, Lo43;->b:Landroidx/compose/runtime/MutableState;

    iget-object p0, p0, Lo43;->c:Ljava/lang/String;

    invoke-static {v2, p0, v0, v1}, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1;->i(Landroidx/compose/runtime/MutableState;Ljava/lang/String;Lnl3;Z)Lj59;

    move-result-object p0

    return-object p0
.end method
