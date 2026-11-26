.class public final Lyads/kg4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ce3;


# instance fields
.field public final synthetic a:Lyads/lg4;


# direct methods
.method public constructor <init>(Lyads/lg4;)V
    .locals 0

    iput-object p1, p0, Lyads/kg4;->a:Lyads/lg4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)V
    .locals 1

    iget-object v0, p0, Lyads/kg4;->a:Lyads/lg4;

    iget-object v0, v0, Lyads/lg4;->b:Lyads/b05;

    iget-object v0, v0, Lyads/b05;->b:Ljava/util/LinkedHashMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object p1, p0, Lyads/kg4;->a:Lyads/lg4;

    iget-object p1, p1, Lyads/lg4;->c:Lyads/fm4;

    invoke-interface {p1}, Lyads/fm4;->a()V

    iget-object p0, p0, Lyads/kg4;->a:Lyads/lg4;

    iget-object p0, p0, Lyads/lg4;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/j80;

    check-cast p1, Lyads/qn6;

    invoke-virtual {p1}, Lyads/qn6;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method
