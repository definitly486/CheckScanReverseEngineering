.class public final Lz59$a;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.component.unityofferwall.UnityOfferwallController$observeConnection$1$1"
    f = "UnityOfferwallController.kt"
    l = {
        0xa6
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz59;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Ljava/lang/Boolean;",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public l:I

.field public synthetic m:Z

.field public final synthetic n:Ls59$c$c;

.field public final synthetic o:Ls59;


# direct methods
.method public constructor <init>(Le02;Ls59$c$c;Ls59;)V
    .locals 0

    iput-object p2, p0, Lz59$a;->n:Ls59$c$c;

    iput-object p3, p0, Lz59$a;->o:Ls59;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Le02<",
            "*>;)",
            "Le02<",
            "Lj59;",
            ">;"
        }
    .end annotation

    new-instance v0, Lz59$a;

    iget-object v1, p0, Lz59$a;->n:Ls59$c$c;

    iget-object p0, p0, Lz59$a;->o:Ls59;

    invoke-direct {v0, p2, v1, p0}, Lz59$a;-><init>(Le02;Ls59$c$c;Ls59;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iput-boolean p0, v0, Lz59$a;->m:Z

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lz59$a;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lz59$a;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lz59$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lz59$a;->o:Ls59;

    iget-object v1, v0, Ls59;->c:Lcy8;

    sget-object v2, La32;->COROUTINE_SUSPENDED:La32;

    iget v3, p0, Lz59$a;->l:I

    const/4 v4, 0x0

    iget-object v5, p0, Lz59$a;->n:Ls59$c$c;

    const/4 v6, 0x1

    if-eqz v3, :cond_1

    if-ne v3, v6, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v4

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lz59$a;->m:Z

    iput-boolean p1, v5, Ls59$c$c;->g:Z

    iget-boolean v3, v5, Ls59$c$c;->h:Z

    if-eqz p1, :cond_4

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    iput-boolean p0, v5, Ls59$c$c;->h:Z

    iput-object v4, v1, Lcy8;->b:Lcy8$a;

    iget-object p0, v1, Lcy8;->c:Landroid/app/AlertDialog;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_3
    iput-object v4, v1, Lcy8;->c:Landroid/app/AlertDialog;

    iput-object v4, v1, Lcy8;->d:Landroid/app/Activity;

    goto :goto_1

    :cond_4
    if-nez v3, :cond_6

    iput v6, p0, Lz59$a;->l:I

    const-wide/16 v3, 0x5dc

    invoke-static {v3, v4, p0}, Lyk2;->b(JLe02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v2, :cond_5

    return-object v2

    :cond_5
    :goto_0
    iput-boolean v6, v5, Ls59$c$c;->h:Z

    new-instance p0, Le69;

    invoke-direct {p0, v0, v5}, Le69;-><init>(Ls59;Ls59$c$c;)V

    new-instance p1, Lf69;

    invoke-direct {p1, v0, v5}, Lf69;-><init>(Ls59;Ls59$c$c;)V

    new-instance v0, Lcy8$a;

    invoke-direct {v0, p0, p1}, Lcy8$a;-><init>(Le69;Lf69;)V

    iput-object v0, v1, Lcy8;->b:Lcy8$a;

    iget-object p0, v1, Lcy8;->a:Landroid/app/Activity;

    if-eqz p0, :cond_6

    invoke-virtual {v1, p0}, Lcy8;->a(Landroid/app/Activity;)V

    :cond_6
    :goto_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
