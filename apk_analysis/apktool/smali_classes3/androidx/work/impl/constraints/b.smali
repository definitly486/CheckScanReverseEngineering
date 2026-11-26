.class public final synthetic Landroidx/work/impl/constraints/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Ls68;

.field public final synthetic c:Lug6;


# direct methods
.method public synthetic constructor <init>(Ls68;Lug6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/constraints/b;->b:Ls68;

    iput-object p2, p0, Landroidx/work/impl/constraints/b;->c:Lug6;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/constraints/b;->c:Lug6;

    check-cast p1, Landroidx/work/impl/constraints/ConstraintsState;

    iget-object p0, p0, Landroidx/work/impl/constraints/b;->b:Ls68;

    invoke-static {p0, v0, p1}, Landroidx/work/impl/constraints/NetworkRequestConstraintController$track$1;->i(Ls68;Lug6;Landroidx/work/impl/constraints/ConstraintsState;)Lj59;

    move-result-object p0

    return-object p0
.end method
