.class public final synthetic Lp8b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentFactory;


# virtual methods
.method public final create(Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;
    .locals 4

    new-instance p0, Lel1;

    invoke-direct {p0}, Lel1;-><init>()V

    new-instance p1, Ljka;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljka;-><init>(I)V

    new-instance v1, Ld3b;

    iget-object v2, p0, Lel1;->a:Ljava/lang/ref/ReferenceQueue;

    iget-object v3, p0, Lel1;->b:Ljava/util/Set;

    invoke-direct {v1, p0, v2, v3, p1}, Ld3b;-><init>(Lel1;Ljava/lang/ref/ReferenceQueue;Ljava/util/Set;Ljka;)V

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwva;

    invoke-direct {p1, v2, v3}, Lwva;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/util/Set;)V

    new-instance v1, Ljava/lang/Thread;

    const-string v2, "MlKitCleaner"

    invoke-direct {v1, p1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-object p0
.end method
