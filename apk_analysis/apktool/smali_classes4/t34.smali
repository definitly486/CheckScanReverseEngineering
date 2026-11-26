.class public final synthetic Lt34;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lm21;

    check-cast p2, Lm21;

    invoke-static {p1, p2}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->u(Lm21;Lm21;)I

    move-result p0

    return p0
.end method
