.class public final Lng1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lng1;->collect(Lid3;Le02;)Ljava/lang/Object;
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


# direct methods
.method public constructor <init>(Lid3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lng1$a;->b:Lid3;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p2, Lng1$a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lng1$a$a;

    iget v1, v0, Lng1$a$a;->m:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lng1$a$a;->m:I

    goto :goto_0

    :cond_0
    new-instance v0, Lng1$a$a;

    invoke-direct {v0, p0, p2}, Lng1$a$a;-><init>(Lng1$a;Le02;)V

    :goto_0
    iget-object p2, v0, Lng1$a$a;->l:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lng1$a$a;->m:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    check-cast p1, Lkg1;

    new-instance p2, Lp8;

    iget-wide v5, p1, Lkg1;->a:J

    long-to-int v2, v5

    iget-object v5, p1, Lkg1;->d:Ljava/lang/String;

    invoke-static {}, Lht3;->c()Lcom/google/gson/Gson;

    move-result-object v6

    new-instance v7, Log1;

    invoke-direct {v7}, Log1;-><init>()V

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lx39;

    iget-object v7, v7, Lx39;->b:Ljava/lang/reflect/Type;

    invoke-direct {v8, v7}, Lx39;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {v6, v5, v8}, Lcom/google/gson/Gson;->f(Ljava/lang/String;Lx39;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lhv6;

    iget-object v6, p1, Lkg1;->e:Ljava/lang/String;

    if-eqz v6, :cond_3

    invoke-static {}, Lht3;->c()Lcom/google/gson/Gson;

    move-result-object v3

    new-instance v7, Lpg1;

    invoke-direct {v7}, Lpg1;-><init>()V

    iget-object v7, v7, Lx39;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v6, v7}, Lht3;->a(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Liv6;

    :cond_3
    invoke-virtual {p1}, Lkg1;->a()Lgf9;

    move-result-object p1

    invoke-direct {p2, v2, v5, v3, p1}, Lp8;-><init>(ILhv6;Liv6;Lgf9;)V

    iput v4, v0, Lng1$a$a;->m:I

    iget-object p0, p0, Lng1$a;->b:Lid3;

    invoke-interface {p0, p2, v0}, Lid3;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
