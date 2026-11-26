.class public final Lv36;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv36$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ln54;

.field public final d:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lv36$a;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lv36$a;->a:Ljava/util/ArrayList;

    iget-object v1, p1, Lv36$a;->d:Ljava/util/LinkedHashSet;

    sget-object v2, Ldq2;->p:Ljava/util/LinkedHashSet;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    sget-object v3, Ldq2;->q:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lv36;->a:Ljava/util/ArrayList;

    iget-object v0, p1, Lv36$a;->e:Lz05$c;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Lr36;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :goto_1
    iput-object v0, p0, Lv36;->c:Ln54;

    iget-object v1, p1, Lv36$a;->c:Ljava/util/ArrayList;

    iput-object v1, p0, Lv36;->d:Ljava/util/ArrayList;

    iget-object p1, p1, Lv36$a;->b:Ljava/util/ArrayList;

    iput-object p1, p0, Lv36;->b:Ljava/util/ArrayList;

    new-instance p0, Lm54;

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-direct {p0, p1, v1}, Lm54;-><init>(Ljava/util/List;Ljava/util/Map;)V

    invoke-interface {v0, p0}, Ln54;->a(Lm54;)Ll54;

    return-void
.end method
