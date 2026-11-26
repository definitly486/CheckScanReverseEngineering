.class public final synthetic Lgp5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lll3;

.field public final synthetic d:Landroidx/compose/ui/Modifier;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(ILll3;Landroidx/compose/ui/Modifier;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p4, p0, Lgp5;->b:Z

    iput-object p2, p0, Lgp5;->c:Lll3;

    iput-object p3, p0, Lgp5;->d:Landroidx/compose/ui/Modifier;

    iput p1, p0, Lgp5;->e:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p2, p0, Lgp5;->e:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result p2

    iget-object v0, p0, Lgp5;->c:Lll3;

    iget-boolean v1, p0, Lgp5;->b:Z

    iget-object p0, p0, Lgp5;->d:Landroidx/compose/ui/Modifier;

    invoke-static {v0, v1, p0, p1, p2}, Lhp5;->a(Lll3;ZLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
