.class public final Lss$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lss;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lss;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lss$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lss$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lss$a;->a:Lss$a;

    return-void
.end method


# virtual methods
.method public final a(Lr14;Lb24;Lf02;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p3, Lrs;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lrs;

    iget v1, v0, Lrs;->o:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lrs;->o:I

    goto :goto_0

    :cond_0
    new-instance v0, Lrs;

    invoke-direct {v0, p0, p3}, Lrs;-><init>(Lss$a;Lf02;)V

    :goto_0
    iget-object p0, v0, Lrs;->m:Ljava/lang/Object;

    sget-object p3, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, v0, Lrs;->o:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p2, v0, Lrs;->l:Lb24;

    invoke-static {p0}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p0}, Lr57;->b(Ljava/lang/Object;)V

    iput-object p2, v0, Lrs;->l:Lb24;

    iput v2, v0, Lrs;->o:I

    invoke-interface {p1, p2, v0}, Lr14;->a(Lb24;Lf02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p3, :cond_3

    return-object p3

    :cond_3
    :goto_1
    check-cast p0, Lg24;

    instance-of p1, p0, Lzc8;

    if-eqz p1, :cond_4

    new-instance p1, Lps$b$d;

    check-cast p0, Lzc8;

    iget-object p3, p0, Lzc8;->a:Lx04;

    iget-object p2, p2, Lb24;->a:Landroid/content/Context;

    sget-object v0, Landroidx/compose/ui/graphics/drawscope/DrawScope;->Companion:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->getDefaultFilterQuality-f-v9h1I()I

    move-result v0

    invoke-static {p3, p2, v0}, Lv14;->a(Lx04;Landroid/content/Context;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lps$b$d;-><init>(Landroidx/compose/ui/graphics/painter/Painter;Lzc8;)V

    return-object p1

    :cond_4
    instance-of p1, p0, Lu03;

    if-eqz p1, :cond_6

    new-instance p1, Lps$b$b;

    check-cast p0, Lu03;

    iget-object p3, p0, Lu03;->a:Lx04;

    if-eqz p3, :cond_5

    iget-object p2, p2, Lb24;->a:Landroid/content/Context;

    sget-object v0, Landroidx/compose/ui/graphics/drawscope/DrawScope;->Companion:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->getDefaultFilterQuality-f-v9h1I()I

    move-result v0

    invoke-static {p3, p2, v0}, Lv14;->a(Lx04;Landroid/content/Context;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v3

    :cond_5
    invoke-direct {p1, v3, p0}, Lps$b$b;-><init>(Landroidx/compose/ui/graphics/painter/Painter;Lu03;)V

    return-object p1

    :cond_6
    invoke-static {}, Lme0;->e()V

    return-object v3
.end method
