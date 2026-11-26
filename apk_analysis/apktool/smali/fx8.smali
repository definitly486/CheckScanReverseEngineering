.class public final synthetic Lfx8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldm3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/state/ToggleableState;

.field public final synthetic c:Z

.field public final synthetic d:Landroidx/compose/ui/semantics/Role;

.field public final synthetic e:Lll3;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/state/ToggleableState;ZLandroidx/compose/ui/semantics/Role;Lll3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfx8;->b:Landroidx/compose/ui/state/ToggleableState;

    iput-boolean p2, p0, Lfx8;->c:Z

    iput-object p3, p0, Lfx8;->d:Landroidx/compose/ui/semantics/Role;

    iput-object p4, p0, Lfx8;->e:Lll3;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    move-object v4, p1

    check-cast v4, Landroidx/compose/ui/Modifier;

    move-object v5, p2

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v0, p0, Lfx8;->b:Landroidx/compose/ui/state/ToggleableState;

    iget-boolean v1, p0, Lfx8;->c:Z

    iget-object v2, p0, Lfx8;->d:Landroidx/compose/ui/semantics/Role;

    iget-object v3, p0, Lfx8;->e:Lll3;

    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/selection/ToggleableKt;->a(Landroidx/compose/ui/state/ToggleableState;ZLandroidx/compose/ui/semantics/Role;Lll3;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
