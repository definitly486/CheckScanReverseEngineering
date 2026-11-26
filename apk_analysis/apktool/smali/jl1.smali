.class public final synthetic Ljl1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldm3;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Landroidx/compose/ui/semantics/Role;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lll3;

.field public final synthetic g:Lll3;

.field public final synthetic h:Z

.field public final synthetic i:Lll3;


# direct methods
.method public synthetic constructor <init>(ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lll3;Lll3;Lll3;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Ljl1;->b:Z

    iput-object p2, p0, Ljl1;->c:Ljava/lang/String;

    iput-object p3, p0, Ljl1;->d:Landroidx/compose/ui/semantics/Role;

    iput-object p7, p0, Ljl1;->e:Ljava/lang/String;

    iput-object p4, p0, Ljl1;->f:Lll3;

    iput-object p5, p0, Ljl1;->g:Lll3;

    iput-boolean p8, p0, Ljl1;->h:Z

    iput-object p6, p0, Ljl1;->i:Lll3;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    move-object v8, p1

    check-cast v8, Landroidx/compose/ui/Modifier;

    move-object v9, p2

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-boolean v0, p0, Ljl1;->b:Z

    iget-object v1, p0, Ljl1;->c:Ljava/lang/String;

    iget-object v2, p0, Ljl1;->d:Landroidx/compose/ui/semantics/Role;

    iget-object v3, p0, Ljl1;->e:Ljava/lang/String;

    iget-object v4, p0, Ljl1;->f:Lll3;

    iget-object v5, p0, Ljl1;->g:Lll3;

    iget-boolean v6, p0, Ljl1;->h:Z

    iget-object v7, p0, Ljl1;->i:Lll3;

    invoke-static/range {v0 .. v10}, Landroidx/compose/foundation/ClickableKt;->d(ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Ljava/lang/String;Lll3;Lll3;ZLll3;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
