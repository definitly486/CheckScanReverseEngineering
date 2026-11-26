.class public final Lps$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxk8;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lps;->d(Lb24;Z)Lb24;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb24;

.field public final synthetic b:Lps;


# direct methods
.method public constructor <init>(Lb24;Lps;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lps$d;->a:Lb24;

    iput-object p2, p0, Lps$d;->b:Lps;

    return-void
.end method


# virtual methods
.method public final a(Lx04;)V
    .locals 3

    iget-object v0, p0, Lps$d;->a:Lb24;

    iget-object p0, p0, Lps$d;->b:Lps;

    if-eqz p1, :cond_0

    iget-object v1, v0, Lb24;->a:Landroid/content/Context;

    iget v2, p0, Lps;->m:I

    invoke-static {p1, v1, v2}, Lv14;->a(Lx04;Landroid/content/Context;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    sget-object v1, Le24;->a:Lb53$b;

    invoke-static {v0, v1}, Lc53;->a(Lb24;Lb53$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lps;->a()Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object p1, v0

    :cond_1
    new-instance v0, Lps$b$c;

    invoke-direct {v0, p1}, Lps$b$c;-><init>(Landroidx/compose/ui/graphics/painter/Painter;)V

    invoke-virtual {p0, v0}, Lps;->e(Lps$b;)V

    return-void
.end method
