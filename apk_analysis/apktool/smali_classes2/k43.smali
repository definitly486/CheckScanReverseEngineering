.class public final synthetic Lk43;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lll3;

.field public final synthetic h:Landroidx/compose/ui/platform/SoftwareKeyboardController;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lll3;Landroidx/compose/ui/platform/SoftwareKeyboardController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk43;->b:Ljava/lang/String;

    iput-boolean p2, p0, Lk43;->c:Z

    iput-object p3, p0, Lk43;->d:Ljava/lang/String;

    iput-object p4, p0, Lk43;->e:Ljava/lang/String;

    iput-object p5, p0, Lk43;->f:Ljava/lang/String;

    iput-object p6, p0, Lk43;->g:Lll3;

    iput-object p7, p0, Lk43;->h:Landroidx/compose/ui/platform/SoftwareKeyboardController;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v6, p0, Lk43;->h:Landroidx/compose/ui/platform/SoftwareKeyboardController;

    move-object v7, p1

    check-cast v7, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    iget-object v0, p0, Lk43;->b:Ljava/lang/String;

    iget-boolean v1, p0, Lk43;->c:Z

    iget-object v2, p0, Lk43;->d:Ljava/lang/String;

    iget-object v3, p0, Lk43;->e:Ljava/lang/String;

    iget-object v4, p0, Lk43;->f:Ljava/lang/String;

    iget-object v5, p0, Lk43;->g:Lll3;

    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/ExposedDropdownMenuKt;->e(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lll3;Landroidx/compose/ui/platform/SoftwareKeyboardController;Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lj59;

    move-result-object p0

    return-object p0
.end method
