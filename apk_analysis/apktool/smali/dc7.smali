.class public final Ldc7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljf6;

.field public final b:Lqe;


# direct methods
.method public constructor <init>(Ljf6;Lqe;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldc7;->a:Ljf6;

    iput-object p2, p0, Ldc7;->b:Lqe;

    return-void
.end method


# virtual methods
.method public final a(Lt99;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lt99;->h()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Ldc7;->a:Ljf6;

    invoke-interface {v2, v0}, Ljf6;->W0(Z)V

    invoke-virtual {p1}, Lt99;->j()Ls33;

    move-result-object v0

    sget-object v3, Ls33;->TEST:Ls33;

    const/4 v4, 0x1

    if-ne v0, v3, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-interface {v2, v0}, Ljf6;->M0(Z)V

    invoke-virtual {p1}, Lt99;->j()Ls33;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Ldc7;->b:Lqe;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lqe;->e(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lt99;->i()Lr33;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, p0}, Ljf6;->K0(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Lt99;->a()Lmn;

    move-result-object p0

    invoke-virtual {p0}, Lmn;->a()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_4

    sget-object p0, Lkx2;->b:Lkx2;

    :cond_4
    invoke-static {}, Lht3;->c()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, p0}, Ljf6;->p(Ljava/lang/String;)V

    invoke-virtual {p1}, Lt99;->g()Lq33;

    move-result-object p0

    sget-object v0, Lq33;->TEST:Lq33;

    if-ne p0, v0, :cond_5

    move p0, v4

    goto :goto_2

    :cond_5
    move p0, v1

    :goto_2
    invoke-interface {v2, p0}, Ljf6;->q0(Z)V

    invoke-virtual {p1}, Lt99;->f()Lo33;

    move-result-object p0

    sget-object v0, Lo33;->TEST:Lo33;

    if-ne p0, v0, :cond_6

    move p0, v4

    goto :goto_3

    :cond_6
    move p0, v1

    :goto_3
    invoke-interface {v2, p0}, Ljf6;->z(Z)V

    invoke-virtual {p1}, Lt99;->b()Ll33;

    move-result-object p0

    sget-object v0, Ll33;->TEST:Ll33;

    if-ne p0, v0, :cond_7

    move p0, v4

    goto :goto_4

    :cond_7
    move p0, v1

    :goto_4
    invoke-interface {v2, p0}, Ljf6;->g0(Z)V

    invoke-virtual {p1}, Lt99;->k()Lt33;

    move-result-object p0

    sget-object v0, Lt33;->TEST:Lt33;

    if-ne p0, v0, :cond_8

    move p0, v4

    goto :goto_5

    :cond_8
    move p0, v1

    :goto_5
    invoke-interface {v2, p0}, Ljf6;->K(Z)V

    invoke-virtual {p1}, Lt99;->l()Ljava/lang/Boolean;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    invoke-interface {v2, p0}, Ljf6;->m0(Z)V

    invoke-virtual {p1}, Lt99;->c()Lm33;

    move-result-object p0

    sget-object v0, Lm33;->TEST:Lm33;

    if-ne p0, v0, :cond_9

    move p0, v4

    goto :goto_6

    :cond_9
    move p0, v1

    :goto_6
    invoke-interface {v2, p0}, Ljf6;->R0(Z)V

    invoke-virtual {p1}, Lt99;->d()Ln33;

    move-result-object p0

    sget-object v0, Ln33;->TEST:Ln33;

    if-ne p0, v0, :cond_a

    move v1, v4

    :cond_a
    invoke-interface {v2, v1}, Ljf6;->L0(Z)V

    invoke-virtual {p1}, Lt99;->e()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_b

    invoke-static {p0}, Lta8;->f0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    :cond_b
    move-object p0, p1

    :goto_7
    if-eqz v1, :cond_c

    move-object p1, p0

    :cond_c
    if-nez p1, :cond_d

    const-string p1, ""

    :cond_d
    invoke-interface {v2, p1}, Ljf6;->u0(Ljava/lang/String;)V

    return-void
.end method
