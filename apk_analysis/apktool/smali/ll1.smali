.class public final synthetic Lll1;
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

.field public final synthetic h:Lll3;


# direct methods
.method public synthetic constructor <init>(ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lll3;Lll3;Lll3;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lll1;->b:Z

    iput-object p2, p0, Lll1;->c:Ljava/lang/String;

    iput-object p3, p0, Lll1;->d:Landroidx/compose/ui/semantics/Role;

    iput-object p7, p0, Lll1;->e:Ljava/lang/String;

    iput-object p4, p0, Lll1;->f:Lll3;

    iput-object p5, p0, Lll1;->g:Lll3;

    iput-object p6, p0, Lll1;->h:Lll3;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    move-object v7, p1

    check-cast v7, Landroidx/compose/ui/Modifier;

    move-object v8, p2

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-boolean v0, p0, Lll1;->b:Z

    iget-object v1, p0, Lll1;->c:Ljava/lang/String;

    iget-object v2, p0, Lll1;->d:Landroidx/compose/ui/semantics/Role;

    iget-object v3, p0, Lll1;->e:Ljava/lang/String;

    iget-object v4, p0, Lll1;->f:Lll3;

    iget-object v5, p0, Lll1;->g:Lll3;

    iget-object v6, p0, Lll1;->h:Lll3;

    invoke-static/range {v0 .. v9}, Landroidx/compose/foundation/ClickableKt;->e(ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Ljava/lang/String;Lll3;Lll3;Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
