.class public final Lh66;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf66;


# instance fields
.field public final a:Lv66;

.field public final b:Ljf6;


# direct methods
.method public constructor <init>(Lv66;Ljf6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh66;->a:Lv66;

    iput-object p2, p0, Lh66;->b:Ljf6;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;Lf02;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p3, Lg66;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lg66;

    iget v1, v0, Lg66;->p:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lg66;->p:I

    goto :goto_0

    :cond_0
    new-instance v0, Lg66;

    invoke-direct {v0, p0, p3}, Lg66;-><init>(Lh66;Lf02;)V

    :goto_0
    iget-object p3, v0, Lg66;->n:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lg66;->p:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget p1, v0, Lg66;->l:I

    iget-object p2, v0, Lg66;->m:Ljava/lang/String;

    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    new-instance p3, Lx79;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p3, v2}, Lx79;-><init>(Ljava/lang/String;)V

    iput-object p2, v0, Lg66;->m:Ljava/lang/String;

    iput p1, v0, Lg66;->l:I

    iput v3, v0, Lg66;->p:I

    iget-object v2, p0, Lh66;->a:Lv66;

    invoke-interface {v2, p3, v0}, Lv66;->a(Lx79;Le02;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p3, La57;

    iget-object p3, p3, La57;->a:Lz47;

    invoke-virtual {p3}, Lz47;->o()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lh66;->b:Ljf6;

    invoke-interface {p0, p1}, Ljf6;->l0(I)V

    invoke-interface {p0, p2}, Ljf6;->X(Ljava/lang/String;)V

    invoke-interface {p0}, Ljf6;->a0()V

    :cond_4
    new-instance p0, La89;

    invoke-virtual {p3}, Lz47;->o()Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, La89$a;->Success:La89$a;

    goto :goto_2

    :cond_5
    iget p1, p3, Lz47;->e:I

    const/16 p2, 0x193

    if-ne p1, p2, :cond_6

    sget-object p1, La89$a;->Forbidden:La89$a;

    goto :goto_2

    :cond_6
    sget-object p1, La89$a;->Error:La89$a;

    :goto_2
    invoke-direct {p0, p1}, La89;-><init>(La89$a;)V

    return-object p0
.end method

.method public final b(Ljava/util/LinkedHashMap;ZLx66;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lxk6;

    invoke-direct {v0, p1, p2}, Lxk6;-><init>(Ljava/util/Map;Z)V

    iget-object p0, p0, Lh66;->a:Lv66;

    invoke-interface {p0, v0, p3}, Lv66;->b(Lxk6;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final c(ZLf02;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lh66;->a:Lv66;

    invoke-interface {p0, p1, p2}, Lv66;->c(ZLe02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
