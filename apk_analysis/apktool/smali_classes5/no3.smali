.class public final Lno3;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"


# instance fields
.field public final a:Lfs4;

.field public final b:Le17;

.field public final c:Lmo3;

.field public final d:Lin3;

.field public final e:Lfo3;

.field public final f:Lz68;

.field public final g:Lgy6;

.field public h:Lkn3;

.field public i:Ls68;

.field public j:Z


# direct methods
.method public constructor <init>(Lfs4;Le17;Lmo3;Lin3;Lfo3;Z)V
    .locals 0

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p1, p0, Lno3;->a:Lfs4;

    iput-object p2, p0, Lno3;->b:Le17;

    iput-object p3, p0, Lno3;->c:Lmo3;

    iput-object p4, p0, Lno3;->d:Lin3;

    iput-object p5, p0, Lno3;->e:Lfo3;

    new-instance p1, Llo3;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Llo3;-><init>(I)V

    invoke-static {p1}, Lpx;->a(Ljava/lang/Object;)Lz68;

    move-result-object p1

    iput-object p1, p0, Lno3;->f:Lz68;

    invoke-static {p1}, Lbf3;->b(Lxg5;)Lgy6;

    move-result-object p1

    iput-object p1, p0, Lno3;->g:Lgy6;

    iput-boolean p6, p0, Lno3;->j:Z

    invoke-virtual {p0}, Lno3;->a()V

    invoke-interface {p3}, Lmo3;->a()Lif6$b;

    move-result-object p1

    new-instance p2, Lno3$a;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lno3$a;-><init>(Lno3;Le02;)V

    new-instance p3, Ldf3;

    invoke-direct {p3, p1, p2}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Ly22;

    move-result-object p0

    invoke-static {p3, p0}, Lpx;->h(Lhd3;Ly22;)Ls68;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    new-instance v0, Lno3$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lno3$b;-><init>(Lno3;Le02;)V

    new-instance v2, Ltb7;

    invoke-direct {v2, v0}, Ltb7;-><init>(Lbm3;)V

    new-instance v0, Lno3$c;

    const/4 v3, 0x3

    invoke-direct {v0, v3, v1}, Lpg8;-><init>(ILe02;)V

    new-instance v3, Lde3;

    invoke-direct {v3, v2, v0}, Lde3;-><init>(Lhd3;Ldm3;)V

    new-instance v0, Lno3$d;

    invoke-direct {v0, p0, v1}, Lno3$d;-><init>(Lno3;Le02;)V

    new-instance v2, Lce3;

    invoke-direct {v2, v3, v0}, Lce3;-><init>(Lhd3;Lbm3;)V

    new-instance v0, Lno3$e;

    invoke-direct {v0, p0, v1}, Lno3$e;-><init>(Lno3;Le02;)V

    new-instance v1, Ldf3;

    invoke-direct {v1, v2, v0}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Ly22;

    move-result-object v0

    invoke-static {v1, v0}, Lpx;->h(Lhd3;Ly22;)Ls68;

    move-result-object v0

    iput-object v0, p0, Lno3;->i:Ls68;

    return-void
.end method

.method public final b(Lun3;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lun3$a;->a:Lun3$a;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object p1, p0, Lno3;->i:Ls68;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lsb4;->isActive()Z

    move-result p1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lno3;->h:Lkn3;

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lno3;->a()V

    return-void

    :cond_1
    iget-object p1, p0, Lno3;->d:Lin3;

    invoke-interface {p1}, Lin3;->a()V

    invoke-virtual {p0}, Lno3;->c()V

    return-void

    :cond_2
    sget-object v0, Lun3$b;->a:Lun3$b;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object p1, p0, Lno3;->f:Lz68;

    invoke-virtual {p1}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Llo3;

    const/4 v3, 0x0

    invoke-static {v2, v3, v3, v1}, Llo3;->a(Llo3;Ljo3;Ljava/lang/Integer;I)Llo3;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lz68;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_4
    sget-object v0, Lun3$c;->a:Lun3$c;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lno3;->i:Ls68;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lsb4;->isActive()Z

    move-result p1

    if-ne p1, v1, :cond_5

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lno3;->h:Lkn3;

    if-eqz p1, :cond_6

    :goto_0
    return-void

    :cond_6
    invoke-virtual {p0}, Lno3;->a()V

    return-void

    :cond_7
    invoke-static {}, Lme0;->e()V

    return-void
.end method

.method public final c()V
    .locals 4

    iget-object v0, p0, Lno3;->c:Lmo3;

    invoke-interface {v0}, Lmo3;->d()Z

    move-result v1

    iget-object v2, p0, Lno3;->e:Lfo3;

    if-eqz v1, :cond_0

    invoke-interface {v2}, Lfo3;->a()V

    return-void

    :cond_0
    invoke-interface {v0}, Lmo3;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Lfo3;->b()V

    return-void

    :cond_1
    new-instance v0, Loo3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Loo3;-><init>(Lno3;Le02;)V

    new-instance v2, Ltb7;

    invoke-direct {v2, v0}, Ltb7;-><init>(Lbm3;)V

    new-instance v0, Lpo3;

    const/4 v3, 0x3

    invoke-direct {v0, v3, v1}, Lpg8;-><init>(ILe02;)V

    new-instance v3, Lde3;

    invoke-direct {v3, v2, v0}, Lde3;-><init>(Lhd3;Ldm3;)V

    new-instance v0, Lqo3;

    invoke-direct {v0, p0, v1}, Lqo3;-><init>(Lno3;Le02;)V

    new-instance v2, Lce3;

    invoke-direct {v2, v3, v0}, Lce3;-><init>(Lhd3;Lbm3;)V

    new-instance v0, Lro3;

    invoke-direct {v0, p0, v1}, Lro3;-><init>(Lno3;Le02;)V

    new-instance v1, Ldf3;

    invoke-direct {v1, v2, v0}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Ly22;

    move-result-object v0

    invoke-static {v1, v0}, Lpx;->h(Lhd3;Ly22;)Ls68;

    move-result-object v0

    iput-object v0, p0, Lno3;->i:Ls68;

    return-void
.end method

.method public final d()V
    .locals 6

    iget-object v0, p0, Lno3;->h:Lkn3;

    if-eqz v0, :cond_0

    new-instance v1, Ljo3$a;

    invoke-direct {v1, v0}, Ljo3$a;-><init>(Lkn3;)V

    goto :goto_0

    :cond_0
    sget-object v1, Ljo3$b;->a:Ljo3$b;

    :cond_1
    :goto_0
    iget-object v0, p0, Lno3;->f:Lz68;

    invoke-virtual {v0}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Llo3;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v3, v1, v5, v4}, Llo3;->a(Llo3;Ljo3;Ljava/lang/Integer;I)Llo3;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lz68;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void
.end method
