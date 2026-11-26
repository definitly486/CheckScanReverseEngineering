.class public final Ld40$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld40;->collect(Lid3;Le02;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lid3;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lid3;

.field public final synthetic c:Lb40;


# direct methods
.method public constructor <init>(Lid3;Lb40;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld40$a;->b:Lid3;

    iput-object p2, p0, Ld40$a;->c:Lb40;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;
    .locals 13

    instance-of v0, p2, Ld40$a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ld40$a$a;

    iget v1, v0, Ld40$a$a;->m:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ld40$a$a;->m:I

    goto :goto_0

    :cond_0
    new-instance v0, Ld40$a$a;

    invoke-direct {v0, p0, p2}, Ld40$a$a;-><init>(Ld40$a;Le02;)V

    :goto_0
    iget-object p2, v0, Ld40$a$a;->l:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Ld40$a$a;->m:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    check-cast p1, Lx00;

    iget-object p2, p0, Ld40$a;->c:Lb40;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lx00;->a()Lx00$a;

    move-result-object p2

    invoke-virtual {p2}, Lx00$a;->a()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-static {p2}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    new-instance p2, Ly00$c;

    invoke-virtual {p1}, Lx00;->a()Lx00$a;

    move-result-object p1

    invoke-virtual {p1}, Lx00$a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ly00$c;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    :goto_1
    new-instance p2, Ly00$b;

    new-instance v5, La40;

    invoke-virtual {p1}, Lx00;->a()Lx00$a;

    move-result-object v2

    invoke-virtual {v2}, Lx00$a;->e()Ljava/lang/String;

    move-result-object v2

    const-string v6, ""

    if-nez v2, :cond_5

    move-object v2, v6

    :cond_5
    invoke-virtual {p1}, Lx00;->a()Lx00$a;

    move-result-object v7

    invoke-virtual {v7}, Lx00$a;->d()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_6

    move-object v7, v6

    :cond_6
    invoke-virtual {p1}, Lx00;->a()Lx00$a;

    move-result-object v8

    invoke-virtual {v8}, Lx00$a;->b()Ljava/lang/String;

    move-result-object v8

    new-instance v9, La40$a;

    invoke-virtual {p1}, Lx00;->a()Lx00$a;

    move-result-object p1

    invoke-virtual {p1}, Lx00$a;->c()Ld10$a;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ld10$a;->a()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_7
    move-object p1, v3

    :goto_2
    if-nez p1, :cond_8

    goto :goto_3

    :cond_8
    move-object v6, p1

    :goto_3
    invoke-direct {v9, v6, v3}, La40$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    const/16 v12, 0x30

    const/4 v10, 0x0

    move-object v6, v2

    invoke-direct/range {v5 .. v12}, La40;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;La40$a;La40$a;Ljava/lang/Integer;I)V

    invoke-direct {p2, v5}, Ly00$b;-><init>(La40;)V

    :goto_4
    iput v4, v0, Ld40$a$a;->m:I

    iget-object p0, p0, Ld40$a;->b:Lid3;

    invoke-interface {p0, p2, v0}, Lid3;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_9

    return-object v1

    :cond_9
    :goto_5
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
