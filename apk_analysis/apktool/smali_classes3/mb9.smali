.class public final synthetic Lmb9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/graphics/painter/Painter;

.field public final synthetic c:Landroidx/compose/ui/graphics/painter/Painter;

.field public final synthetic d:Landroidx/compose/ui/graphics/painter/Painter;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmb9;->b:Landroidx/compose/ui/graphics/painter/Painter;

    iput-object p2, p0, Lmb9;->c:Landroidx/compose/ui/graphics/painter/Painter;

    iput-object p3, p0, Lmb9;->d:Landroidx/compose/ui/graphics/painter/Painter;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lps$b;

    instance-of v0, p1, Lps$b$c;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lmb9;->b:Landroidx/compose/ui/graphics/painter/Painter;

    if-eqz p0, :cond_0

    new-instance p1, Lps$b$c;

    invoke-direct {p1, p0}, Lps$b$c;-><init>(Landroidx/compose/ui/graphics/painter/Painter;)V

    return-object p1

    :cond_0
    check-cast p1, Lps$b$c;

    return-object p1

    :cond_1
    instance-of v0, p1, Lps$b$b;

    if-eqz v0, :cond_3

    check-cast p1, Lps$b$b;

    iget-object v0, p1, Lps$b$b;->b:Lu03;

    iget-object v1, v0, Lu03;->c:Ljava/lang/Throwable;

    instance-of v1, v1, Lcoil3/request/NullRequestDataException;

    if-eqz v1, :cond_2

    iget-object p0, p0, Lmb9;->c:Landroidx/compose/ui/graphics/painter/Painter;

    if-eqz p0, :cond_3

    new-instance p1, Lps$b$b;

    invoke-direct {p1, p0, v0}, Lps$b$b;-><init>(Landroidx/compose/ui/graphics/painter/Painter;Lu03;)V

    return-object p1

    :cond_2
    iget-object p0, p0, Lmb9;->d:Landroidx/compose/ui/graphics/painter/Painter;

    if-eqz p0, :cond_3

    new-instance p1, Lps$b$b;

    invoke-direct {p1, p0, v0}, Lps$b$b;-><init>(Landroidx/compose/ui/graphics/painter/Painter;Lu03;)V

    :cond_3
    return-object p1
.end method
