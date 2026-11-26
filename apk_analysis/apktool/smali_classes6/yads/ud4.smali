.class public final Lyads/ud4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/q84;

.field public final b:Lyads/sk;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/bf5;Lyads/n5;Lyads/n70;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Lyads/do6;

    new-instance v0, Lyads/lm6;

    iget-object p2, p2, Lyads/do6;->a:Landroid/content/Context;

    invoke-direct {v0, p2}, Lyads/lm6;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Lyads/re;->a(Landroid/content/Context;Lyads/lm6;)Lyads/q84;

    move-result-object p1

    new-instance p2, Lyads/sk;

    invoke-direct {p2, p3, p4, p5}, Lyads/sk;-><init>(Lyads/n5;Lyads/n70;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ud4;->a:Lyads/q84;

    iput-object p2, p0, Lyads/ud4;->b:Lyads/sk;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;Lyads/e75;)V
    .locals 2

    iget-object v0, p0, Lyads/ud4;->b:Lyads/sk;

    invoke-virtual {v0}, Lyads/sk;->a()Lyads/h75;

    move-result-object v0

    const-string v1, "assets"

    invoke-virtual {v0, p1, v1}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lyads/g75;

    iget-object v1, v0, Lyads/h75;->a:Ljava/util/Map;

    iget-object v0, v0, Lyads/h75;->b:Lyads/c;

    iget-object p2, p2, Lyads/e75;->b:Ljava/lang/String;

    invoke-static {v1}, Ln05;->n(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-direct {p1, p2, v1, v0}, Lyads/g75;-><init>(Ljava/lang/String;Ljava/util/Map;Lyads/c;)V

    iget-object p0, p0, Lyads/ud4;->a:Lyads/q84;

    invoke-virtual {p0, p1}, Lyads/q84;->a(Lyads/g75;)V

    return-void
.end method
