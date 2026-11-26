.class public final synthetic Lxya;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentFactory;


# virtual methods
.method public final create(Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;
    .locals 0

    const-class p0, La27$a;

    invoke-interface {p1, p0}, Lcom/google/firebase/components/ComponentContainer;->setOf(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p0

    new-instance p1, La27;

    invoke-direct {p1, p0}, La27;-><init>(Ljava/util/Set;)V

    return-object p1
.end method
