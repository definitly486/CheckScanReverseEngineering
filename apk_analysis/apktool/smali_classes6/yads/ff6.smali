.class public final Lyads/ff6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/hd6;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyads/hd6;

    invoke-direct {v0, p1}, Lyads/hd6;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lyads/ff6;->a:Lyads/hd6;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ef6;Ljava/lang/String;)V
    .locals 0

    invoke-interface {p1}, Lyads/ef6;->a()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lyads/ff6;->a:Lyads/hd6;

    sget-object p2, Lmx2;->b:Lmx2;

    invoke-virtual {p0, p1, p2}, Lyads/hd6;->a(Ljava/util/List;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
